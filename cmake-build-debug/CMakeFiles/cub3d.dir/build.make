# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lsherry/42Course/cub3d

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lsherry/42Course/cub3d/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/cub3d.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cub3d.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cub3d.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cub3d.dir/flags.make

CMakeFiles/cub3d.dir/src/border_checking.c.o: CMakeFiles/cub3d.dir/flags.make
CMakeFiles/cub3d.dir/src/border_checking.c.o: ../src/border_checking.c
CMakeFiles/cub3d.dir/src/border_checking.c.o: CMakeFiles/cub3d.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/cub3d.dir/src/border_checking.c.o"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cub3d.dir/src/border_checking.c.o -MF CMakeFiles/cub3d.dir/src/border_checking.c.o.d -o CMakeFiles/cub3d.dir/src/border_checking.c.o -c /Users/lsherry/42Course/cub3d/src/border_checking.c

CMakeFiles/cub3d.dir/src/border_checking.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cub3d.dir/src/border_checking.c.i"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lsherry/42Course/cub3d/src/border_checking.c > CMakeFiles/cub3d.dir/src/border_checking.c.i

CMakeFiles/cub3d.dir/src/border_checking.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cub3d.dir/src/border_checking.c.s"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lsherry/42Course/cub3d/src/border_checking.c -o CMakeFiles/cub3d.dir/src/border_checking.c.s

CMakeFiles/cub3d.dir/src/check_file.c.o: CMakeFiles/cub3d.dir/flags.make
CMakeFiles/cub3d.dir/src/check_file.c.o: ../src/check_file.c
CMakeFiles/cub3d.dir/src/check_file.c.o: CMakeFiles/cub3d.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/cub3d.dir/src/check_file.c.o"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cub3d.dir/src/check_file.c.o -MF CMakeFiles/cub3d.dir/src/check_file.c.o.d -o CMakeFiles/cub3d.dir/src/check_file.c.o -c /Users/lsherry/42Course/cub3d/src/check_file.c

CMakeFiles/cub3d.dir/src/check_file.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cub3d.dir/src/check_file.c.i"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lsherry/42Course/cub3d/src/check_file.c > CMakeFiles/cub3d.dir/src/check_file.c.i

CMakeFiles/cub3d.dir/src/check_file.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cub3d.dir/src/check_file.c.s"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lsherry/42Course/cub3d/src/check_file.c -o CMakeFiles/cub3d.dir/src/check_file.c.s

CMakeFiles/cub3d.dir/src/ft_utils.c.o: CMakeFiles/cub3d.dir/flags.make
CMakeFiles/cub3d.dir/src/ft_utils.c.o: ../src/ft_utils.c
CMakeFiles/cub3d.dir/src/ft_utils.c.o: CMakeFiles/cub3d.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/cub3d.dir/src/ft_utils.c.o"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cub3d.dir/src/ft_utils.c.o -MF CMakeFiles/cub3d.dir/src/ft_utils.c.o.d -o CMakeFiles/cub3d.dir/src/ft_utils.c.o -c /Users/lsherry/42Course/cub3d/src/ft_utils.c

CMakeFiles/cub3d.dir/src/ft_utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cub3d.dir/src/ft_utils.c.i"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lsherry/42Course/cub3d/src/ft_utils.c > CMakeFiles/cub3d.dir/src/ft_utils.c.i

CMakeFiles/cub3d.dir/src/ft_utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cub3d.dir/src/ft_utils.c.s"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lsherry/42Course/cub3d/src/ft_utils.c -o CMakeFiles/cub3d.dir/src/ft_utils.c.s

CMakeFiles/cub3d.dir/src/input_manip.c.o: CMakeFiles/cub3d.dir/flags.make
CMakeFiles/cub3d.dir/src/input_manip.c.o: ../src/input_manip.c
CMakeFiles/cub3d.dir/src/input_manip.c.o: CMakeFiles/cub3d.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/cub3d.dir/src/input_manip.c.o"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cub3d.dir/src/input_manip.c.o -MF CMakeFiles/cub3d.dir/src/input_manip.c.o.d -o CMakeFiles/cub3d.dir/src/input_manip.c.o -c /Users/lsherry/42Course/cub3d/src/input_manip.c

CMakeFiles/cub3d.dir/src/input_manip.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cub3d.dir/src/input_manip.c.i"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lsherry/42Course/cub3d/src/input_manip.c > CMakeFiles/cub3d.dir/src/input_manip.c.i

CMakeFiles/cub3d.dir/src/input_manip.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cub3d.dir/src/input_manip.c.s"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lsherry/42Course/cub3d/src/input_manip.c -o CMakeFiles/cub3d.dir/src/input_manip.c.s

CMakeFiles/cub3d.dir/src/main.c.o: CMakeFiles/cub3d.dir/flags.make
CMakeFiles/cub3d.dir/src/main.c.o: ../src/main.c
CMakeFiles/cub3d.dir/src/main.c.o: CMakeFiles/cub3d.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/cub3d.dir/src/main.c.o"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cub3d.dir/src/main.c.o -MF CMakeFiles/cub3d.dir/src/main.c.o.d -o CMakeFiles/cub3d.dir/src/main.c.o -c /Users/lsherry/42Course/cub3d/src/main.c

CMakeFiles/cub3d.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cub3d.dir/src/main.c.i"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lsherry/42Course/cub3d/src/main.c > CMakeFiles/cub3d.dir/src/main.c.i

CMakeFiles/cub3d.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cub3d.dir/src/main.c.s"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lsherry/42Course/cub3d/src/main.c -o CMakeFiles/cub3d.dir/src/main.c.s

CMakeFiles/cub3d.dir/src/parsing.c.o: CMakeFiles/cub3d.dir/flags.make
CMakeFiles/cub3d.dir/src/parsing.c.o: ../src/parsing.c
CMakeFiles/cub3d.dir/src/parsing.c.o: CMakeFiles/cub3d.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/cub3d.dir/src/parsing.c.o"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cub3d.dir/src/parsing.c.o -MF CMakeFiles/cub3d.dir/src/parsing.c.o.d -o CMakeFiles/cub3d.dir/src/parsing.c.o -c /Users/lsherry/42Course/cub3d/src/parsing.c

CMakeFiles/cub3d.dir/src/parsing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cub3d.dir/src/parsing.c.i"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lsherry/42Course/cub3d/src/parsing.c > CMakeFiles/cub3d.dir/src/parsing.c.i

CMakeFiles/cub3d.dir/src/parsing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cub3d.dir/src/parsing.c.s"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lsherry/42Course/cub3d/src/parsing.c -o CMakeFiles/cub3d.dir/src/parsing.c.s

CMakeFiles/cub3d.dir/src/start_game.c.o: CMakeFiles/cub3d.dir/flags.make
CMakeFiles/cub3d.dir/src/start_game.c.o: ../src/start_game.c
CMakeFiles/cub3d.dir/src/start_game.c.o: CMakeFiles/cub3d.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/cub3d.dir/src/start_game.c.o"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cub3d.dir/src/start_game.c.o -MF CMakeFiles/cub3d.dir/src/start_game.c.o.d -o CMakeFiles/cub3d.dir/src/start_game.c.o -c /Users/lsherry/42Course/cub3d/src/start_game.c

CMakeFiles/cub3d.dir/src/start_game.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cub3d.dir/src/start_game.c.i"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lsherry/42Course/cub3d/src/start_game.c > CMakeFiles/cub3d.dir/src/start_game.c.i

CMakeFiles/cub3d.dir/src/start_game.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cub3d.dir/src/start_game.c.s"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lsherry/42Course/cub3d/src/start_game.c -o CMakeFiles/cub3d.dir/src/start_game.c.s

CMakeFiles/cub3d.dir/src/controller.c.o: CMakeFiles/cub3d.dir/flags.make
CMakeFiles/cub3d.dir/src/controller.c.o: ../src/controller.c
CMakeFiles/cub3d.dir/src/controller.c.o: CMakeFiles/cub3d.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/cub3d.dir/src/controller.c.o"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cub3d.dir/src/controller.c.o -MF CMakeFiles/cub3d.dir/src/controller.c.o.d -o CMakeFiles/cub3d.dir/src/controller.c.o -c /Users/lsherry/42Course/cub3d/src/controller.c

CMakeFiles/cub3d.dir/src/controller.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cub3d.dir/src/controller.c.i"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lsherry/42Course/cub3d/src/controller.c > CMakeFiles/cub3d.dir/src/controller.c.i

CMakeFiles/cub3d.dir/src/controller.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cub3d.dir/src/controller.c.s"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lsherry/42Course/cub3d/src/controller.c -o CMakeFiles/cub3d.dir/src/controller.c.s

CMakeFiles/cub3d.dir/src/drawing.c.o: CMakeFiles/cub3d.dir/flags.make
CMakeFiles/cub3d.dir/src/drawing.c.o: ../src/drawing.c
CMakeFiles/cub3d.dir/src/drawing.c.o: CMakeFiles/cub3d.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/cub3d.dir/src/drawing.c.o"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cub3d.dir/src/drawing.c.o -MF CMakeFiles/cub3d.dir/src/drawing.c.o.d -o CMakeFiles/cub3d.dir/src/drawing.c.o -c /Users/lsherry/42Course/cub3d/src/drawing.c

CMakeFiles/cub3d.dir/src/drawing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cub3d.dir/src/drawing.c.i"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lsherry/42Course/cub3d/src/drawing.c > CMakeFiles/cub3d.dir/src/drawing.c.i

CMakeFiles/cub3d.dir/src/drawing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cub3d.dir/src/drawing.c.s"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lsherry/42Course/cub3d/src/drawing.c -o CMakeFiles/cub3d.dir/src/drawing.c.s

CMakeFiles/cub3d.dir/src/demo_utils.c.o: CMakeFiles/cub3d.dir/flags.make
CMakeFiles/cub3d.dir/src/demo_utils.c.o: ../src/demo_utils.c
CMakeFiles/cub3d.dir/src/demo_utils.c.o: CMakeFiles/cub3d.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/cub3d.dir/src/demo_utils.c.o"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cub3d.dir/src/demo_utils.c.o -MF CMakeFiles/cub3d.dir/src/demo_utils.c.o.d -o CMakeFiles/cub3d.dir/src/demo_utils.c.o -c /Users/lsherry/42Course/cub3d/src/demo_utils.c

CMakeFiles/cub3d.dir/src/demo_utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cub3d.dir/src/demo_utils.c.i"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lsherry/42Course/cub3d/src/demo_utils.c > CMakeFiles/cub3d.dir/src/demo_utils.c.i

CMakeFiles/cub3d.dir/src/demo_utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cub3d.dir/src/demo_utils.c.s"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lsherry/42Course/cub3d/src/demo_utils.c -o CMakeFiles/cub3d.dir/src/demo_utils.c.s

CMakeFiles/cub3d.dir/src/draw_map.c.o: CMakeFiles/cub3d.dir/flags.make
CMakeFiles/cub3d.dir/src/draw_map.c.o: ../src/draw_map.c
CMakeFiles/cub3d.dir/src/draw_map.c.o: CMakeFiles/cub3d.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/cub3d.dir/src/draw_map.c.o"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cub3d.dir/src/draw_map.c.o -MF CMakeFiles/cub3d.dir/src/draw_map.c.o.d -o CMakeFiles/cub3d.dir/src/draw_map.c.o -c /Users/lsherry/42Course/cub3d/src/draw_map.c

CMakeFiles/cub3d.dir/src/draw_map.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cub3d.dir/src/draw_map.c.i"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lsherry/42Course/cub3d/src/draw_map.c > CMakeFiles/cub3d.dir/src/draw_map.c.i

CMakeFiles/cub3d.dir/src/draw_map.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cub3d.dir/src/draw_map.c.s"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lsherry/42Course/cub3d/src/draw_map.c -o CMakeFiles/cub3d.dir/src/draw_map.c.s

CMakeFiles/cub3d.dir/src/hooks.c.o: CMakeFiles/cub3d.dir/flags.make
CMakeFiles/cub3d.dir/src/hooks.c.o: ../src/hooks.c
CMakeFiles/cub3d.dir/src/hooks.c.o: CMakeFiles/cub3d.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/cub3d.dir/src/hooks.c.o"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cub3d.dir/src/hooks.c.o -MF CMakeFiles/cub3d.dir/src/hooks.c.o.d -o CMakeFiles/cub3d.dir/src/hooks.c.o -c /Users/lsherry/42Course/cub3d/src/hooks.c

CMakeFiles/cub3d.dir/src/hooks.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cub3d.dir/src/hooks.c.i"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lsherry/42Course/cub3d/src/hooks.c > CMakeFiles/cub3d.dir/src/hooks.c.i

CMakeFiles/cub3d.dir/src/hooks.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cub3d.dir/src/hooks.c.s"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lsherry/42Course/cub3d/src/hooks.c -o CMakeFiles/cub3d.dir/src/hooks.c.s

CMakeFiles/cub3d.dir/src/game_textures.c.o: CMakeFiles/cub3d.dir/flags.make
CMakeFiles/cub3d.dir/src/game_textures.c.o: ../src/game_textures.c
CMakeFiles/cub3d.dir/src/game_textures.c.o: CMakeFiles/cub3d.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/cub3d.dir/src/game_textures.c.o"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cub3d.dir/src/game_textures.c.o -MF CMakeFiles/cub3d.dir/src/game_textures.c.o.d -o CMakeFiles/cub3d.dir/src/game_textures.c.o -c /Users/lsherry/42Course/cub3d/src/game_textures.c

CMakeFiles/cub3d.dir/src/game_textures.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cub3d.dir/src/game_textures.c.i"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lsherry/42Course/cub3d/src/game_textures.c > CMakeFiles/cub3d.dir/src/game_textures.c.i

CMakeFiles/cub3d.dir/src/game_textures.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cub3d.dir/src/game_textures.c.s"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lsherry/42Course/cub3d/src/game_textures.c -o CMakeFiles/cub3d.dir/src/game_textures.c.s

CMakeFiles/cub3d.dir/src/ray_casting.c.o: CMakeFiles/cub3d.dir/flags.make
CMakeFiles/cub3d.dir/src/ray_casting.c.o: ../src/ray_casting.c
CMakeFiles/cub3d.dir/src/ray_casting.c.o: CMakeFiles/cub3d.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/cub3d.dir/src/ray_casting.c.o"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cub3d.dir/src/ray_casting.c.o -MF CMakeFiles/cub3d.dir/src/ray_casting.c.o.d -o CMakeFiles/cub3d.dir/src/ray_casting.c.o -c /Users/lsherry/42Course/cub3d/src/ray_casting.c

CMakeFiles/cub3d.dir/src/ray_casting.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cub3d.dir/src/ray_casting.c.i"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lsherry/42Course/cub3d/src/ray_casting.c > CMakeFiles/cub3d.dir/src/ray_casting.c.i

CMakeFiles/cub3d.dir/src/ray_casting.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cub3d.dir/src/ray_casting.c.s"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lsherry/42Course/cub3d/src/ray_casting.c -o CMakeFiles/cub3d.dir/src/ray_casting.c.s

CMakeFiles/cub3d.dir/src/time_funcs.c.o: CMakeFiles/cub3d.dir/flags.make
CMakeFiles/cub3d.dir/src/time_funcs.c.o: ../src/time_funcs.c
CMakeFiles/cub3d.dir/src/time_funcs.c.o: CMakeFiles/cub3d.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/cub3d.dir/src/time_funcs.c.o"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cub3d.dir/src/time_funcs.c.o -MF CMakeFiles/cub3d.dir/src/time_funcs.c.o.d -o CMakeFiles/cub3d.dir/src/time_funcs.c.o -c /Users/lsherry/42Course/cub3d/src/time_funcs.c

CMakeFiles/cub3d.dir/src/time_funcs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cub3d.dir/src/time_funcs.c.i"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lsherry/42Course/cub3d/src/time_funcs.c > CMakeFiles/cub3d.dir/src/time_funcs.c.i

CMakeFiles/cub3d.dir/src/time_funcs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cub3d.dir/src/time_funcs.c.s"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lsherry/42Course/cub3d/src/time_funcs.c -o CMakeFiles/cub3d.dir/src/time_funcs.c.s

CMakeFiles/cub3d.dir/src/game_sound.c.o: CMakeFiles/cub3d.dir/flags.make
CMakeFiles/cub3d.dir/src/game_sound.c.o: ../src/game_sound.c
CMakeFiles/cub3d.dir/src/game_sound.c.o: CMakeFiles/cub3d.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object CMakeFiles/cub3d.dir/src/game_sound.c.o"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cub3d.dir/src/game_sound.c.o -MF CMakeFiles/cub3d.dir/src/game_sound.c.o.d -o CMakeFiles/cub3d.dir/src/game_sound.c.o -c /Users/lsherry/42Course/cub3d/src/game_sound.c

CMakeFiles/cub3d.dir/src/game_sound.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cub3d.dir/src/game_sound.c.i"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lsherry/42Course/cub3d/src/game_sound.c > CMakeFiles/cub3d.dir/src/game_sound.c.i

CMakeFiles/cub3d.dir/src/game_sound.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cub3d.dir/src/game_sound.c.s"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lsherry/42Course/cub3d/src/game_sound.c -o CMakeFiles/cub3d.dir/src/game_sound.c.s

CMakeFiles/cub3d.dir/cute_sound/cute_sound.c.o: CMakeFiles/cub3d.dir/flags.make
CMakeFiles/cub3d.dir/cute_sound/cute_sound.c.o: ../cute_sound/cute_sound.c
CMakeFiles/cub3d.dir/cute_sound/cute_sound.c.o: CMakeFiles/cub3d.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building C object CMakeFiles/cub3d.dir/cute_sound/cute_sound.c.o"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cub3d.dir/cute_sound/cute_sound.c.o -MF CMakeFiles/cub3d.dir/cute_sound/cute_sound.c.o.d -o CMakeFiles/cub3d.dir/cute_sound/cute_sound.c.o -c /Users/lsherry/42Course/cub3d/cute_sound/cute_sound.c

CMakeFiles/cub3d.dir/cute_sound/cute_sound.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cub3d.dir/cute_sound/cute_sound.c.i"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lsherry/42Course/cub3d/cute_sound/cute_sound.c > CMakeFiles/cub3d.dir/cute_sound/cute_sound.c.i

CMakeFiles/cub3d.dir/cute_sound/cute_sound.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cub3d.dir/cute_sound/cute_sound.c.s"
	/usr/local/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lsherry/42Course/cub3d/cute_sound/cute_sound.c -o CMakeFiles/cub3d.dir/cute_sound/cute_sound.c.s

# Object files for target cub3d
cub3d_OBJECTS = \
"CMakeFiles/cub3d.dir/src/border_checking.c.o" \
"CMakeFiles/cub3d.dir/src/check_file.c.o" \
"CMakeFiles/cub3d.dir/src/ft_utils.c.o" \
"CMakeFiles/cub3d.dir/src/input_manip.c.o" \
"CMakeFiles/cub3d.dir/src/main.c.o" \
"CMakeFiles/cub3d.dir/src/parsing.c.o" \
"CMakeFiles/cub3d.dir/src/start_game.c.o" \
"CMakeFiles/cub3d.dir/src/controller.c.o" \
"CMakeFiles/cub3d.dir/src/drawing.c.o" \
"CMakeFiles/cub3d.dir/src/demo_utils.c.o" \
"CMakeFiles/cub3d.dir/src/draw_map.c.o" \
"CMakeFiles/cub3d.dir/src/hooks.c.o" \
"CMakeFiles/cub3d.dir/src/game_textures.c.o" \
"CMakeFiles/cub3d.dir/src/ray_casting.c.o" \
"CMakeFiles/cub3d.dir/src/time_funcs.c.o" \
"CMakeFiles/cub3d.dir/src/game_sound.c.o" \
"CMakeFiles/cub3d.dir/cute_sound/cute_sound.c.o"

# External object files for target cub3d
cub3d_EXTERNAL_OBJECTS =

cub3d: CMakeFiles/cub3d.dir/src/border_checking.c.o
cub3d: CMakeFiles/cub3d.dir/src/check_file.c.o
cub3d: CMakeFiles/cub3d.dir/src/ft_utils.c.o
cub3d: CMakeFiles/cub3d.dir/src/input_manip.c.o
cub3d: CMakeFiles/cub3d.dir/src/main.c.o
cub3d: CMakeFiles/cub3d.dir/src/parsing.c.o
cub3d: CMakeFiles/cub3d.dir/src/start_game.c.o
cub3d: CMakeFiles/cub3d.dir/src/controller.c.o
cub3d: CMakeFiles/cub3d.dir/src/drawing.c.o
cub3d: CMakeFiles/cub3d.dir/src/demo_utils.c.o
cub3d: CMakeFiles/cub3d.dir/src/draw_map.c.o
cub3d: CMakeFiles/cub3d.dir/src/hooks.c.o
cub3d: CMakeFiles/cub3d.dir/src/game_textures.c.o
cub3d: CMakeFiles/cub3d.dir/src/ray_casting.c.o
cub3d: CMakeFiles/cub3d.dir/src/time_funcs.c.o
cub3d: CMakeFiles/cub3d.dir/src/game_sound.c.o
cub3d: CMakeFiles/cub3d.dir/cute_sound/cute_sound.c.o
cub3d: CMakeFiles/cub3d.dir/build.make
cub3d: ../mlx/libmlx.a
cub3d: ../libft/libft.a
cub3d: ../cute_sound/SDL2
cub3d: CMakeFiles/cub3d.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Linking C executable cub3d"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cub3d.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cub3d.dir/build: cub3d
.PHONY : CMakeFiles/cub3d.dir/build

CMakeFiles/cub3d.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cub3d.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cub3d.dir/clean

CMakeFiles/cub3d.dir/depend:
	cd /Users/lsherry/42Course/cub3d/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lsherry/42Course/cub3d /Users/lsherry/42Course/cub3d /Users/lsherry/42Course/cub3d/cmake-build-debug /Users/lsherry/42Course/cub3d/cmake-build-debug /Users/lsherry/42Course/cub3d/cmake-build-debug/CMakeFiles/cub3d.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cub3d.dir/depend

