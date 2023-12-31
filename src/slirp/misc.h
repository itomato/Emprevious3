/*
 * Copyright (c) 1995 Danny Gasparovski.
 * 
 * Please read the file COPYRIGHT for the 
 * terms and conditions of the copyright.
 */

#ifndef _MISC_H_
#define _MISC_H_

struct ex_list {
	int ex_pty;			/* Do we want a pty? */
	int ex_addr;			/* The last byte of the address */
	int ex_fport;                   /* Port to telnet to */
	char *ex_exec;                  /* Command line of what to exec */
	struct ex_list *ex_next;
};

extern struct ex_list *exec_list;
extern unsigned int curtime, time_fasttimo, last_slowtimo, detach_time, detach_wait;

extern int (*lprint_print)(void *, const char *, va_list);
extern char *lprint_ptr, *lprint_ptr2, **lprint_arg;
extern struct sbuf *lprint_sb;

#ifndef HAVE_STRDUP
char *strdup(const char *);
#endif

void do_wait(int);

#define EMU_NONE 0x0

/* TCP emulations */
#define EMU_CTL 0x1
#define EMU_FTP 0x2
#define EMU_KSH 0x3
#define EMU_IRC 0x4
#define EMU_REALAUDIO 0x5
#define EMU_RLOGIN 0x6
#define EMU_IDENT 0x7
#define EMU_RSH 0x8

#define EMU_NOCONNECT 0x10	/* Don't connect */

/* UDP emulations */
#define EMU_TALK	0x1
#define EMU_NTALK	0x2
#define EMU_CUSEEME	0x3

struct tos_t {
	uint16_t lport;
	uint16_t fport;
	uint8_t tos;
	uint8_t emu;
};

struct emu_t {
	uint16_t lport;
	uint16_t fport;
	uint8_t tos;
	uint8_t emu;
	struct emu_t *next;
};

extern struct emu_t *tcpemu;

extern int x_port, x_server, x_display;

int show_x(char *, struct socket *);
void redir_x(uint32_t, int, int, int);
void getouraddr(void);
void slirp_insque(void *, void *);
void slirp_remque(void *);
int add_exec(struct ex_list **, int, const char *, int, int);
int slirp_openpty(int *, int *);
int fork_exec(struct socket *, char *, int);
void snooze_hup(int);
void snooze(void);
void relay(int);
void add_emu(char *);
void u_sleep(int);
void fd_nonblock(int);
void fd_block(int);
int rsh_exec(struct socket *, struct socket *, char *, char *, char *);

#endif
