# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build

# Include any dependencies generated for this target.
include dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/compiler_depend.make

# Include the progress variables for this target.
include dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/progress.make

# Include the compile flags for this target's objects.
include dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/flags.make

dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/windows.c.o: dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/flags.make
dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/windows.c.o: /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/tests/windows.c
dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/windows.c.o: dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/windows.c.o"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/windows.c.o -MF CMakeFiles/windows.dir/windows.c.o.d -o CMakeFiles/windows.dir/windows.c.o -c /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/tests/windows.c

dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/windows.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/windows.dir/windows.c.i"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/tests/windows.c > CMakeFiles/windows.dir/windows.c.i

dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/windows.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/windows.dir/windows.c.s"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/tests/windows.c -o CMakeFiles/windows.dir/windows.c.s

dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o: dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/flags.make
dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o: /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/deps/getopt.c
dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o: dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o -MF CMakeFiles/windows.dir/__/deps/getopt.c.o.d -o CMakeFiles/windows.dir/__/deps/getopt.c.o -c /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/deps/getopt.c

dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/windows.dir/__/deps/getopt.c.i"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/deps/getopt.c > CMakeFiles/windows.dir/__/deps/getopt.c.i

dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/windows.dir/__/deps/getopt.c.s"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/deps/getopt.c -o CMakeFiles/windows.dir/__/deps/getopt.c.s

dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.o: dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/flags.make
dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.o: /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/deps/glad_gl.c
dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.o: dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.o"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.o -MF CMakeFiles/windows.dir/__/deps/glad_gl.c.o.d -o CMakeFiles/windows.dir/__/deps/glad_gl.c.o -c /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/deps/glad_gl.c

dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/windows.dir/__/deps/glad_gl.c.i"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/deps/glad_gl.c > CMakeFiles/windows.dir/__/deps/glad_gl.c.i

dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/windows.dir/__/deps/glad_gl.c.s"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/deps/glad_gl.c -o CMakeFiles/windows.dir/__/deps/glad_gl.c.s

# Object files for target windows
windows_OBJECTS = \
"CMakeFiles/windows.dir/windows.c.o" \
"CMakeFiles/windows.dir/__/deps/getopt.c.o" \
"CMakeFiles/windows.dir/__/deps/glad_gl.c.o"

# External object files for target windows
windows_EXTERNAL_OBJECTS =

dependencies/glfw-3.3.8/tests/windows: dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/windows.c.o
dependencies/glfw-3.3.8/tests/windows: dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/__/deps/getopt.c.o
dependencies/glfw-3.3.8/tests/windows: dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.o
dependencies/glfw-3.3.8/tests/windows: dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/build.make
dependencies/glfw-3.3.8/tests/windows: dependencies/glfw-3.3.8/src/libglfw3.a
dependencies/glfw-3.3.8/tests/windows: /usr/lib/x86_64-linux-gnu/libm.so
dependencies/glfw-3.3.8/tests/windows: /usr/lib/x86_64-linux-gnu/librt.a
dependencies/glfw-3.3.8/tests/windows: /usr/lib/x86_64-linux-gnu/libm.so
dependencies/glfw-3.3.8/tests/windows: /usr/lib/x86_64-linux-gnu/libX11.so
dependencies/glfw-3.3.8/tests/windows: dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable windows"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/windows.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/build: dependencies/glfw-3.3.8/tests/windows
.PHONY : dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/build

dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/clean:
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && $(CMAKE_COMMAND) -P CMakeFiles/windows.dir/cmake_clean.cmake
.PHONY : dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/clean

dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/depend:
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/tests /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dependencies/glfw-3.3.8/tests/CMakeFiles/windows.dir/depend
