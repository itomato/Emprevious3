#include "main.h"
#include "configuration.h"
#include "m68000.h"
#include "sysdeps.h"
#include "sysReg.h"
#include "adb.h"


/* Apple Desktop Bus emulation */

#define LOG_ADB_LEVEL LOG_DEBUG


/* ADB registers */

struct {
	uint32_t intstatus;
	uint32_t intmask;
	uint32_t config;
	uint32_t status;
	uint32_t command;
	uint32_t bitcount;
	uint32_t data0;
	uint32_t data1;
} adb;

#define ADB_INTSTATUS	0x00 /* rw */
#define ADB_INTMASK		0x08 /* rw */
#define ADB_SETINT		0x10 /* w */
#define ADB_CONFIG		0x18 /* rw */
#define ADB_CTRL		0x20 /* w */
#define ADB_STATUS		0x28 /* r */
#define ADB_CMD			0x30 /* rw */
#define ADB_COUNT		0x38 /* rw */

#define ADB_DATA0		0x80 /* rw */
#define ADB_DATA1		0x88 /* rw */


/* ADB interrupt registers */
#define ADB_INT_REJECT		0x01
#define ADB_INT_POLLSTOP	0x02
#define ADB_INT_ACCESS		0x04
#define ADB_INT_RESET		0x08

/* ADB configuration register */
#define ADB_CONF_SYSTEM		0x01
#define ADB_CONF_WATCHDOG	0x02

/* ADB control register */
#define ADB_CTRL_EN_POLL	0x01
#define ADB_CTRL_DIS_POLL	0x02
#define ADB_CTRL_XMIT_CMD	0x04
#define ADB_CTRL_RESET_ADB	0x08
#define ADB_CTRL_RESET_WD	0x10

/* ADB status register */
#define ADB_STAT_CONFLICT	0x01
#define ADB_STAT_REQUEST	0x02
#define ADB_STAT_TIMEOUT	0x04
#define ADB_STAT_DATAPEND	0x08
#define ADB_STAT_RESET		0x10
#define ADB_STAT_ACCESS		0x20
#define ADB_STAT_POLL_EN	0x40
#define ADB_STAT_POLL_OV	0x80

/* ADB command register */
#define ADB_CMD_REG_MASK	0x03
#define ADB_CMD_CMD_MASK	0x0C
#define ADB_CMD_ADDR_MASK	0xF0

/* ADB bit count register */
#define ADB_CNT_MASK		0x7F


static void adb_interrupt(uint32_t intr) {
	adb.intstatus |= intr;
	if (intr&adb.intmask) {
		set_interrupt(INT_DISK, SET_INT);
	}
}

static uint32_t adb_intstatus_read(uint32_t addr) {
	Log_Printf(LOG_ADB_LEVEL, "[ADB] Interrupt status read at $%08X val=$%08X",addr,adb.intstatus);
	return adb.intstatus;
}

static void adb_intstatus_write(uint32_t addr, uint32_t val) {
	Log_Printf(LOG_ADB_LEVEL, "[ADB] Interrupt status write at $%08X val=$%08X",addr,val);
	adb.intstatus &= ~val;
	if (!(adb.intstatus&adb.intmask)) {
		set_interrupt(INT_DISK, RELEASE_INT);
	}
}

static uint32_t adb_intmask_read(uint32_t addr) {
	Log_Printf(LOG_ADB_LEVEL, "[ADB] Interrupt mask read at $%08X val=$%08X",addr,adb.intmask);
	return adb.intmask;
}

static void adb_intmask_write(uint32_t addr, uint32_t val) {
	Log_Printf(LOG_ADB_LEVEL, "[ADB] Interrupt mask write at $%08X val=$%08X",addr,val);
	adb.intmask = val;
	if (adb.intstatus&adb.intmask) {
		set_interrupt(INT_DISK, SET_INT);
	} else {
		set_interrupt(INT_DISK, RELEASE_INT);
	}
}

static void adb_setint_write(uint32_t addr, uint32_t val) {
	Log_Printf(LOG_ADB_LEVEL, "[ADB] Set interrupt write at $%08X val=$%08X",addr,val);
	adb.intstatus |= val;
	if (adb.intstatus&adb.intmask) {
		set_interrupt(INT_DISK, SET_INT);
	}
}

static uint32_t adb_config_read(uint32_t addr) {
	Log_Printf(LOG_ADB_LEVEL, "[ADB] Configuration read at $%08X val=$%08X",addr,adb.config);
	return adb.config;
}

static void adb_config_write(uint32_t addr, uint32_t val) {
	Log_Printf(LOG_ADB_LEVEL, "[ADB] Configuration write at $%08X val=$%08X",addr,val);
	adb.config = val;
}

static void adb_control_write(uint32_t addr, uint32_t val) {
	Log_Printf(LOG_ADB_LEVEL, "[ADB] Control write at $%08X val=$%08X",addr,val);
	
	if (val&ADB_CTRL_RESET_ADB) {
		adb.status &= ~ADB_STAT_POLL_EN;
		adb_interrupt(ADB_INT_RESET);
	}
	if (val&ADB_CTRL_XMIT_CMD) {
		if (adb.status&(ADB_STAT_RESET/*|ADB_STAT_POLL_EN*/|ADB_STAT_ACCESS)) {
			adb_interrupt(ADB_INT_REJECT);
		} else {
			adb.status |= ADB_STAT_TIMEOUT;
			if (1/*!(adb.status&ADB_STAT_POLL_EN)*/) {
				adb_interrupt(ADB_INT_ACCESS);
			}
		}
	}
	if (val&ADB_CTRL_DIS_POLL) {
		adb.status &= ~ADB_STAT_POLL_EN;
	}
	if (val&ADB_CTRL_EN_POLL) {
		if (adb.status&(ADB_STAT_RESET|ADB_STAT_ACCESS) && !(adb.status&ADB_STAT_POLL_EN)) {
			adb_interrupt(ADB_INT_REJECT);
		} else {
			adb.status |= ADB_STAT_POLL_EN;
		}
	}
}

static uint32_t adb_status_read(uint32_t addr) {
	Log_Printf(LOG_ADB_LEVEL, "[ADB] Status read at $%08X val=$%08X",addr,adb.status);
	return adb.status;
}

static uint32_t adb_command_read(uint32_t addr) {
	Log_Printf(LOG_ADB_LEVEL, "[ADB] Command read at $%08X val=$%08X",addr,adb.command);
	return adb.command;
}

static void adb_command_write(uint32_t addr, uint32_t val) {
	Log_Printf(LOG_ADB_LEVEL, "[ADB] Command write at $%08X val=$%08X",addr,val);
	adb.command = val;
}

static uint32_t adb_bitcount_read(uint32_t addr) {
	Log_Printf(LOG_ADB_LEVEL, "[ADB] Bitcount read at $%08X val=$%08X",addr,adb.bitcount);
	return adb.bitcount;
}

static void adb_bitcount_write(uint32_t addr, uint32_t val) {
	Log_Printf(LOG_ADB_LEVEL, "[ADB] Bitcount write at $%08X val=$%08X",addr,val);
	adb.bitcount = val;
}

static uint32_t adb_data0_read(uint32_t addr) {
	Log_Printf(LOG_ADB_LEVEL, "[ADB] Data0 read at $%08X val=$%08X",addr,adb.data0);
	return adb.data0;
}

static void adb_data0_write(uint32_t addr, uint32_t val) {
	Log_Printf(LOG_ADB_LEVEL, "[ADB] Data0 write at $%08X val=$%08X",addr,val);
	adb.data0 = val;
}

static uint32_t adb_data1_read(uint32_t addr) {
	Log_Printf(LOG_ADB_LEVEL, "[ADB] Data1 read at $%08X val=$%08X",addr,adb.data1);
	return adb.data1;
}

static void adb_data1_write(uint32_t addr, uint32_t val) {
	Log_Printf(LOG_ADB_LEVEL, "[ADB] Data1 write at $%08X val=$%08X",addr,val);
	adb.data1 = val;
}


static uint32_t adb_read_register(uint32_t addr, int size) {
	switch (addr&0xFF) {
		case ADB_INTSTATUS:
			return adb_intstatus_read(addr);
		case ADB_INTMASK:
			return adb_intmask_read(addr);
		case ADB_CONFIG:
			return adb_config_read(addr);
		case ADB_STATUS:
			return adb_status_read(addr);
		case ADB_CMD:
			return adb_command_read(addr);
		case ADB_COUNT:
			return adb_bitcount_read(addr);
		case ADB_DATA0:
			return adb_data0_read(addr);
		case ADB_DATA1:
			return adb_data1_read(addr);
			
		default:
			Log_Printf(LOG_WARN, "[ADB] Illegal read at $%08X",addr);
			M68000_BusError(addr, BUS_ERROR_READ, size, BUS_ERROR_ACCESS_DATA, 0);
			return 0;
	}
}

static void adb_write_register(uint32_t addr, uint32_t val, int size) {
	switch (addr&0xFF) {
		case ADB_INTSTATUS:
			adb_intstatus_write(addr, val);
			break;
		case ADB_INTMASK:
			adb_intmask_write(addr, val);
			break;
		case ADB_SETINT:
			adb_setint_write(addr, val);
			break;
		case ADB_CONFIG:
			adb_config_write(addr, val);
			break;
		case ADB_CTRL:
			adb_control_write(addr, val);
			break;
		case ADB_CMD:
			adb_command_write(addr, val);
			break;
		case ADB_COUNT:
			adb_bitcount_write(addr, val);
			break;
		case ADB_DATA0:
			adb_data0_write(addr, val);
			break;
		case ADB_DATA1:
			adb_data1_write(addr, val);
			break;
			
		default:
			Log_Printf(LOG_WARN, "[ADB] Illegal write at $%08X",addr);
			M68000_BusError(addr, BUS_ERROR_WRITE, size, BUS_ERROR_ACCESS_DATA, val);
			break;
	}
}



uint32_t adb_lget(uint32_t addr) {
	Log_Printf(LOG_WARN, "[ADB] lget at $%08X",addr);
	return adb_read_register(addr, BUS_ERROR_SIZE_LONG);
}

uint16_t adb_wget(uint32_t addr) {
	uint8_t shift;
	Log_Printf(LOG_WARN, "[ADB] wget at $%08X",addr);
	
	shift = (2-(addr&2))*8;
	addr &= ~3;
	return (adb_read_register(addr, BUS_ERROR_SIZE_WORD)>>shift)&0xFFFF;
}

uint8_t adb_bget(uint32_t addr) {
	uint8_t shift;
	Log_Printf(LOG_WARN, "[ADB] bget at $%08X",addr);
	
	shift = (3-(addr&3))*8;
	addr &= ~3;
	return (adb_read_register(addr, BUS_ERROR_SIZE_BYTE)>>shift)&0xFF;
}

void adb_lput(uint32_t addr, uint32_t l) {
	Log_Printf(LOG_WARN, "[ADB] lput at $%08X",addr);
	adb_write_register(addr, l, BUS_ERROR_SIZE_LONG);
}

void adb_wput(uint32_t addr, uint16_t w) {
	Log_Printf(LOG_WARN, "[ADB] illegal wput at $%08X -> bus error",addr);
	M68000_BusError(addr, BUS_ERROR_WRITE, BUS_ERROR_SIZE_WORD, BUS_ERROR_ACCESS_DATA, w);
}

void adb_bput(uint32_t addr, uint8_t b) {
	Log_Printf(LOG_WARN, "[ADB] illegal bput at $%08X -> bus error",addr);
	M68000_BusError(addr, BUS_ERROR_WRITE, BUS_ERROR_SIZE_BYTE, BUS_ERROR_ACCESS_DATA, b);
}

void ADB_Reset(void) {
	Log_Printf(LOG_WARN, "[ADB] Reset");
	adb.intstatus = 0;
	adb.intmask = 0;
	adb.config = 0;
	adb.command = 0;
	adb.status = 0;
	adb.bitcount = 0;
	adb.data0 = 0;
	adb.data1 = 0;
}
