# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.27.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.27.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/wjk/Code/previous-code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/wjk/Code/previous-code/embuild

# Include any dependencies generated for this target.
include src/dimension/CMakeFiles/Dimension.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/dimension/CMakeFiles/Dimension.dir/compiler_depend.make

# Include the progress variables for this target.
include src/dimension/CMakeFiles/Dimension.dir/progress.make

# Include the compile flags for this target's objects.
include src/dimension/CMakeFiles/Dimension.dir/flags.make

src/dimension/CMakeFiles/Dimension.dir/dimension.cpp.o: src/dimension/CMakeFiles/Dimension.dir/flags.make
src/dimension/CMakeFiles/Dimension.dir/dimension.cpp.o: src/dimension/CMakeFiles/Dimension.dir/includes_CXX.rsp
src/dimension/CMakeFiles/Dimension.dir/dimension.cpp.o: /Users/wjk/Code/previous-code/src/dimension/dimension.cpp
src/dimension/CMakeFiles/Dimension.dir/dimension.cpp.o: src/dimension/CMakeFiles/Dimension.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wjk/Code/previous-code/embuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/dimension/CMakeFiles/Dimension.dir/dimension.cpp.o"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/dimension/CMakeFiles/Dimension.dir/dimension.cpp.o -MF CMakeFiles/Dimension.dir/dimension.cpp.o.d -o CMakeFiles/Dimension.dir/dimension.cpp.o -c /Users/wjk/Code/previous-code/src/dimension/dimension.cpp

src/dimension/CMakeFiles/Dimension.dir/dimension.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Dimension.dir/dimension.cpp.i"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wjk/Code/previous-code/src/dimension/dimension.cpp > CMakeFiles/Dimension.dir/dimension.cpp.i

src/dimension/CMakeFiles/Dimension.dir/dimension.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Dimension.dir/dimension.cpp.s"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wjk/Code/previous-code/src/dimension/dimension.cpp -o CMakeFiles/Dimension.dir/dimension.cpp.s

src/dimension/CMakeFiles/Dimension.dir/nd_mem.cpp.o: src/dimension/CMakeFiles/Dimension.dir/flags.make
src/dimension/CMakeFiles/Dimension.dir/nd_mem.cpp.o: src/dimension/CMakeFiles/Dimension.dir/includes_CXX.rsp
src/dimension/CMakeFiles/Dimension.dir/nd_mem.cpp.o: /Users/wjk/Code/previous-code/src/dimension/nd_mem.cpp
src/dimension/CMakeFiles/Dimension.dir/nd_mem.cpp.o: src/dimension/CMakeFiles/Dimension.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wjk/Code/previous-code/embuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/dimension/CMakeFiles/Dimension.dir/nd_mem.cpp.o"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/dimension/CMakeFiles/Dimension.dir/nd_mem.cpp.o -MF CMakeFiles/Dimension.dir/nd_mem.cpp.o.d -o CMakeFiles/Dimension.dir/nd_mem.cpp.o -c /Users/wjk/Code/previous-code/src/dimension/nd_mem.cpp

src/dimension/CMakeFiles/Dimension.dir/nd_mem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Dimension.dir/nd_mem.cpp.i"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wjk/Code/previous-code/src/dimension/nd_mem.cpp > CMakeFiles/Dimension.dir/nd_mem.cpp.i

src/dimension/CMakeFiles/Dimension.dir/nd_mem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Dimension.dir/nd_mem.cpp.s"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wjk/Code/previous-code/src/dimension/nd_mem.cpp -o CMakeFiles/Dimension.dir/nd_mem.cpp.s

src/dimension/CMakeFiles/Dimension.dir/nd_nbic.cpp.o: src/dimension/CMakeFiles/Dimension.dir/flags.make
src/dimension/CMakeFiles/Dimension.dir/nd_nbic.cpp.o: src/dimension/CMakeFiles/Dimension.dir/includes_CXX.rsp
src/dimension/CMakeFiles/Dimension.dir/nd_nbic.cpp.o: /Users/wjk/Code/previous-code/src/dimension/nd_nbic.cpp
src/dimension/CMakeFiles/Dimension.dir/nd_nbic.cpp.o: src/dimension/CMakeFiles/Dimension.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wjk/Code/previous-code/embuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/dimension/CMakeFiles/Dimension.dir/nd_nbic.cpp.o"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/dimension/CMakeFiles/Dimension.dir/nd_nbic.cpp.o -MF CMakeFiles/Dimension.dir/nd_nbic.cpp.o.d -o CMakeFiles/Dimension.dir/nd_nbic.cpp.o -c /Users/wjk/Code/previous-code/src/dimension/nd_nbic.cpp

src/dimension/CMakeFiles/Dimension.dir/nd_nbic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Dimension.dir/nd_nbic.cpp.i"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wjk/Code/previous-code/src/dimension/nd_nbic.cpp > CMakeFiles/Dimension.dir/nd_nbic.cpp.i

src/dimension/CMakeFiles/Dimension.dir/nd_nbic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Dimension.dir/nd_nbic.cpp.s"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wjk/Code/previous-code/src/dimension/nd_nbic.cpp -o CMakeFiles/Dimension.dir/nd_nbic.cpp.s

src/dimension/CMakeFiles/Dimension.dir/nd_devs.cpp.o: src/dimension/CMakeFiles/Dimension.dir/flags.make
src/dimension/CMakeFiles/Dimension.dir/nd_devs.cpp.o: src/dimension/CMakeFiles/Dimension.dir/includes_CXX.rsp
src/dimension/CMakeFiles/Dimension.dir/nd_devs.cpp.o: /Users/wjk/Code/previous-code/src/dimension/nd_devs.cpp
src/dimension/CMakeFiles/Dimension.dir/nd_devs.cpp.o: src/dimension/CMakeFiles/Dimension.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wjk/Code/previous-code/embuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/dimension/CMakeFiles/Dimension.dir/nd_devs.cpp.o"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/dimension/CMakeFiles/Dimension.dir/nd_devs.cpp.o -MF CMakeFiles/Dimension.dir/nd_devs.cpp.o.d -o CMakeFiles/Dimension.dir/nd_devs.cpp.o -c /Users/wjk/Code/previous-code/src/dimension/nd_devs.cpp

src/dimension/CMakeFiles/Dimension.dir/nd_devs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Dimension.dir/nd_devs.cpp.i"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wjk/Code/previous-code/src/dimension/nd_devs.cpp > CMakeFiles/Dimension.dir/nd_devs.cpp.i

src/dimension/CMakeFiles/Dimension.dir/nd_devs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Dimension.dir/nd_devs.cpp.s"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wjk/Code/previous-code/src/dimension/nd_devs.cpp -o CMakeFiles/Dimension.dir/nd_devs.cpp.s

src/dimension/CMakeFiles/Dimension.dir/nd_vio.cpp.o: src/dimension/CMakeFiles/Dimension.dir/flags.make
src/dimension/CMakeFiles/Dimension.dir/nd_vio.cpp.o: src/dimension/CMakeFiles/Dimension.dir/includes_CXX.rsp
src/dimension/CMakeFiles/Dimension.dir/nd_vio.cpp.o: /Users/wjk/Code/previous-code/src/dimension/nd_vio.cpp
src/dimension/CMakeFiles/Dimension.dir/nd_vio.cpp.o: src/dimension/CMakeFiles/Dimension.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wjk/Code/previous-code/embuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/dimension/CMakeFiles/Dimension.dir/nd_vio.cpp.o"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/dimension/CMakeFiles/Dimension.dir/nd_vio.cpp.o -MF CMakeFiles/Dimension.dir/nd_vio.cpp.o.d -o CMakeFiles/Dimension.dir/nd_vio.cpp.o -c /Users/wjk/Code/previous-code/src/dimension/nd_vio.cpp

src/dimension/CMakeFiles/Dimension.dir/nd_vio.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Dimension.dir/nd_vio.cpp.i"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wjk/Code/previous-code/src/dimension/nd_vio.cpp > CMakeFiles/Dimension.dir/nd_vio.cpp.i

src/dimension/CMakeFiles/Dimension.dir/nd_vio.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Dimension.dir/nd_vio.cpp.s"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wjk/Code/previous-code/src/dimension/nd_vio.cpp -o CMakeFiles/Dimension.dir/nd_vio.cpp.s

src/dimension/CMakeFiles/Dimension.dir/nd_rom.cpp.o: src/dimension/CMakeFiles/Dimension.dir/flags.make
src/dimension/CMakeFiles/Dimension.dir/nd_rom.cpp.o: src/dimension/CMakeFiles/Dimension.dir/includes_CXX.rsp
src/dimension/CMakeFiles/Dimension.dir/nd_rom.cpp.o: /Users/wjk/Code/previous-code/src/dimension/nd_rom.cpp
src/dimension/CMakeFiles/Dimension.dir/nd_rom.cpp.o: src/dimension/CMakeFiles/Dimension.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wjk/Code/previous-code/embuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/dimension/CMakeFiles/Dimension.dir/nd_rom.cpp.o"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/dimension/CMakeFiles/Dimension.dir/nd_rom.cpp.o -MF CMakeFiles/Dimension.dir/nd_rom.cpp.o.d -o CMakeFiles/Dimension.dir/nd_rom.cpp.o -c /Users/wjk/Code/previous-code/src/dimension/nd_rom.cpp

src/dimension/CMakeFiles/Dimension.dir/nd_rom.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Dimension.dir/nd_rom.cpp.i"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wjk/Code/previous-code/src/dimension/nd_rom.cpp > CMakeFiles/Dimension.dir/nd_rom.cpp.i

src/dimension/CMakeFiles/Dimension.dir/nd_rom.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Dimension.dir/nd_rom.cpp.s"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wjk/Code/previous-code/src/dimension/nd_rom.cpp -o CMakeFiles/Dimension.dir/nd_rom.cpp.s

src/dimension/CMakeFiles/Dimension.dir/i860.cpp.o: src/dimension/CMakeFiles/Dimension.dir/flags.make
src/dimension/CMakeFiles/Dimension.dir/i860.cpp.o: src/dimension/CMakeFiles/Dimension.dir/includes_CXX.rsp
src/dimension/CMakeFiles/Dimension.dir/i860.cpp.o: /Users/wjk/Code/previous-code/src/dimension/i860.cpp
src/dimension/CMakeFiles/Dimension.dir/i860.cpp.o: src/dimension/CMakeFiles/Dimension.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wjk/Code/previous-code/embuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/dimension/CMakeFiles/Dimension.dir/i860.cpp.o"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/dimension/CMakeFiles/Dimension.dir/i860.cpp.o -MF CMakeFiles/Dimension.dir/i860.cpp.o.d -o CMakeFiles/Dimension.dir/i860.cpp.o -c /Users/wjk/Code/previous-code/src/dimension/i860.cpp

src/dimension/CMakeFiles/Dimension.dir/i860.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Dimension.dir/i860.cpp.i"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wjk/Code/previous-code/src/dimension/i860.cpp > CMakeFiles/Dimension.dir/i860.cpp.i

src/dimension/CMakeFiles/Dimension.dir/i860.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Dimension.dir/i860.cpp.s"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wjk/Code/previous-code/src/dimension/i860.cpp -o CMakeFiles/Dimension.dir/i860.cpp.s

src/dimension/CMakeFiles/Dimension.dir/i860dis.cpp.o: src/dimension/CMakeFiles/Dimension.dir/flags.make
src/dimension/CMakeFiles/Dimension.dir/i860dis.cpp.o: src/dimension/CMakeFiles/Dimension.dir/includes_CXX.rsp
src/dimension/CMakeFiles/Dimension.dir/i860dis.cpp.o: /Users/wjk/Code/previous-code/src/dimension/i860dis.cpp
src/dimension/CMakeFiles/Dimension.dir/i860dis.cpp.o: src/dimension/CMakeFiles/Dimension.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wjk/Code/previous-code/embuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/dimension/CMakeFiles/Dimension.dir/i860dis.cpp.o"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/dimension/CMakeFiles/Dimension.dir/i860dis.cpp.o -MF CMakeFiles/Dimension.dir/i860dis.cpp.o.d -o CMakeFiles/Dimension.dir/i860dis.cpp.o -c /Users/wjk/Code/previous-code/src/dimension/i860dis.cpp

src/dimension/CMakeFiles/Dimension.dir/i860dis.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Dimension.dir/i860dis.cpp.i"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wjk/Code/previous-code/src/dimension/i860dis.cpp > CMakeFiles/Dimension.dir/i860dis.cpp.i

src/dimension/CMakeFiles/Dimension.dir/i860dis.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Dimension.dir/i860dis.cpp.s"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wjk/Code/previous-code/src/dimension/i860dis.cpp -o CMakeFiles/Dimension.dir/i860dis.cpp.s

src/dimension/CMakeFiles/Dimension.dir/nd_sdl.cpp.o: src/dimension/CMakeFiles/Dimension.dir/flags.make
src/dimension/CMakeFiles/Dimension.dir/nd_sdl.cpp.o: src/dimension/CMakeFiles/Dimension.dir/includes_CXX.rsp
src/dimension/CMakeFiles/Dimension.dir/nd_sdl.cpp.o: /Users/wjk/Code/previous-code/src/dimension/nd_sdl.cpp
src/dimension/CMakeFiles/Dimension.dir/nd_sdl.cpp.o: src/dimension/CMakeFiles/Dimension.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wjk/Code/previous-code/embuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/dimension/CMakeFiles/Dimension.dir/nd_sdl.cpp.o"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/dimension/CMakeFiles/Dimension.dir/nd_sdl.cpp.o -MF CMakeFiles/Dimension.dir/nd_sdl.cpp.o.d -o CMakeFiles/Dimension.dir/nd_sdl.cpp.o -c /Users/wjk/Code/previous-code/src/dimension/nd_sdl.cpp

src/dimension/CMakeFiles/Dimension.dir/nd_sdl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Dimension.dir/nd_sdl.cpp.i"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wjk/Code/previous-code/src/dimension/nd_sdl.cpp > CMakeFiles/Dimension.dir/nd_sdl.cpp.i

src/dimension/CMakeFiles/Dimension.dir/nd_sdl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Dimension.dir/nd_sdl.cpp.s"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && /opt/homebrew/Cellar/emscripten/3.1.44/libexec/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wjk/Code/previous-code/src/dimension/nd_sdl.cpp -o CMakeFiles/Dimension.dir/nd_sdl.cpp.s

# Object files for target Dimension
Dimension_OBJECTS = \
"CMakeFiles/Dimension.dir/dimension.cpp.o" \
"CMakeFiles/Dimension.dir/nd_mem.cpp.o" \
"CMakeFiles/Dimension.dir/nd_nbic.cpp.o" \
"CMakeFiles/Dimension.dir/nd_devs.cpp.o" \
"CMakeFiles/Dimension.dir/nd_vio.cpp.o" \
"CMakeFiles/Dimension.dir/nd_rom.cpp.o" \
"CMakeFiles/Dimension.dir/i860.cpp.o" \
"CMakeFiles/Dimension.dir/i860dis.cpp.o" \
"CMakeFiles/Dimension.dir/nd_sdl.cpp.o"

# External object files for target Dimension
Dimension_EXTERNAL_OBJECTS =

src/dimension/libDimension.a: src/dimension/CMakeFiles/Dimension.dir/dimension.cpp.o
src/dimension/libDimension.a: src/dimension/CMakeFiles/Dimension.dir/nd_mem.cpp.o
src/dimension/libDimension.a: src/dimension/CMakeFiles/Dimension.dir/nd_nbic.cpp.o
src/dimension/libDimension.a: src/dimension/CMakeFiles/Dimension.dir/nd_devs.cpp.o
src/dimension/libDimension.a: src/dimension/CMakeFiles/Dimension.dir/nd_vio.cpp.o
src/dimension/libDimension.a: src/dimension/CMakeFiles/Dimension.dir/nd_rom.cpp.o
src/dimension/libDimension.a: src/dimension/CMakeFiles/Dimension.dir/i860.cpp.o
src/dimension/libDimension.a: src/dimension/CMakeFiles/Dimension.dir/i860dis.cpp.o
src/dimension/libDimension.a: src/dimension/CMakeFiles/Dimension.dir/nd_sdl.cpp.o
src/dimension/libDimension.a: src/dimension/CMakeFiles/Dimension.dir/build.make
src/dimension/libDimension.a: src/dimension/CMakeFiles/Dimension.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/wjk/Code/previous-code/embuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX static library libDimension.a"
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && $(CMAKE_COMMAND) -P CMakeFiles/Dimension.dir/cmake_clean_target.cmake
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Dimension.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/dimension/CMakeFiles/Dimension.dir/build: src/dimension/libDimension.a
.PHONY : src/dimension/CMakeFiles/Dimension.dir/build

src/dimension/CMakeFiles/Dimension.dir/clean:
	cd /Users/wjk/Code/previous-code/embuild/src/dimension && $(CMAKE_COMMAND) -P CMakeFiles/Dimension.dir/cmake_clean.cmake
.PHONY : src/dimension/CMakeFiles/Dimension.dir/clean

src/dimension/CMakeFiles/Dimension.dir/depend:
	cd /Users/wjk/Code/previous-code/embuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/wjk/Code/previous-code /Users/wjk/Code/previous-code/src/dimension /Users/wjk/Code/previous-code/embuild /Users/wjk/Code/previous-code/embuild/src/dimension /Users/wjk/Code/previous-code/embuild/src/dimension/CMakeFiles/Dimension.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/dimension/CMakeFiles/Dimension.dir/depend

