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
include dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/compiler_depend.make

# Include the progress variables for this target.
include dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/progress.make

# Include the compile flags for this target's objects.
include dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/flags.make

dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/empty.c.o: dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/flags.make
dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/empty.c.o: /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/tests/empty.c
dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/empty.c.o: dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/empty.c.o"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/empty.c.o -MF CMakeFiles/empty.dir/empty.c.o.d -o CMakeFiles/empty.dir/empty.c.o -c /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/tests/empty.c

dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/empty.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/empty.dir/empty.c.i"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/tests/empty.c > CMakeFiles/empty.dir/empty.c.i

dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/empty.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/empty.dir/empty.c.s"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/tests/empty.c -o CMakeFiles/empty.dir/empty.c.s

dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o: dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/flags.make
dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o: /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/deps/tinycthread.c
dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o: dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o -MF CMakeFiles/empty.dir/__/deps/tinycthread.c.o.d -o CMakeFiles/empty.dir/__/deps/tinycthread.c.o -c /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/deps/tinycthread.c

dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/empty.dir/__/deps/tinycthread.c.i"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/deps/tinycthread.c > CMakeFiles/empty.dir/__/deps/tinycthread.c.i

dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/empty.dir/__/deps/tinycthread.c.s"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/deps/tinycthread.c -o CMakeFiles/empty.dir/__/deps/tinycthread.c.s

dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/__/deps/glad_gl.c.o: dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/flags.make
dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/__/deps/glad_gl.c.o: /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/deps/glad_gl.c
dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/__/deps/glad_gl.c.o: dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/__/deps/glad_gl.c.o"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/__/deps/glad_gl.c.o -MF CMakeFiles/empty.dir/__/deps/glad_gl.c.o.d -o CMakeFiles/empty.dir/__/deps/glad_gl.c.o -c /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/deps/glad_gl.c

dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/empty.dir/__/deps/glad_gl.c.i"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/deps/glad_gl.c > CMakeFiles/empty.dir/__/deps/glad_gl.c.i

dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/empty.dir/__/deps/glad_gl.c.s"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/deps/glad_gl.c -o CMakeFiles/empty.dir/__/deps/glad_gl.c.s

# Object files for target empty
empty_OBJECTS = \
"CMakeFiles/empty.dir/empty.c.o" \
"CMakeFiles/empty.dir/__/deps/tinycthread.c.o" \
"CMakeFiles/empty.dir/__/deps/glad_gl.c.o"

# External object files for target empty
empty_EXTERNAL_OBJECTS =

dependencies/glfw-3.3.8/tests/empty: dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/empty.c.o
dependencies/glfw-3.3.8/tests/empty: dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.o
dependencies/glfw-3.3.8/tests/empty: dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/__/deps/glad_gl.c.o
dependencies/glfw-3.3.8/tests/empty: dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/build.make
dependencies/glfw-3.3.8/tests/empty: dependencies/glfw-3.3.8/src/libglfw3.a
dependencies/glfw-3.3.8/tests/empty: /usr/lib/x86_64-linux-gnu/libm.so
dependencies/glfw-3.3.8/tests/empty: /usr/lib/x86_64-linux-gnu/librt.a
dependencies/glfw-3.3.8/tests/empty: /usr/lib/x86_64-linux-gnu/libX11.so
dependencies/glfw-3.3.8/tests/empty: dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable empty"
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/empty.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/build: dependencies/glfw-3.3.8/tests/empty
.PHONY : dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/build

dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/clean:
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests && $(CMAKE_COMMAND) -P CMakeFiles/empty.dir/cmake_clean.cmake
.PHONY : dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/clean

dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/depend:
	cd /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/dependencies/glfw-3.3.8/tests /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests /home/dmurray/dev/finished/Wargaming-Academy-Entrance-Assignment/out/build/dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dependencies/glfw-3.3.8/tests/CMakeFiles/empty.dir/depend

