# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dtcarrot/esp/ict2104/esp32-ai-thinker

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build

# Include any dependencies generated for this target.
include esp-idf/console/CMakeFiles/idf_component_console.dir/depend.make

# Include the progress variables for this target.
include esp-idf/console/CMakeFiles/idf_component_console.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/console/CMakeFiles/idf_component_console.dir/flags.make

esp-idf/console/CMakeFiles/idf_component_console.dir/commands.c.obj: esp-idf/console/CMakeFiles/idf_component_console.dir/flags.make
esp-idf/console/CMakeFiles/idf_component_console.dir/commands.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/console/commands.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/console/CMakeFiles/idf_component_console.dir/commands.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/console && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_console.dir/commands.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/console/commands.c

esp-idf/console/CMakeFiles/idf_component_console.dir/commands.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_console.dir/commands.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/console && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/console/commands.c > CMakeFiles/idf_component_console.dir/commands.c.i

esp-idf/console/CMakeFiles/idf_component_console.dir/commands.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_console.dir/commands.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/console && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/console/commands.c -o CMakeFiles/idf_component_console.dir/commands.c.s

esp-idf/console/CMakeFiles/idf_component_console.dir/split_argv.c.obj: esp-idf/console/CMakeFiles/idf_component_console.dir/flags.make
esp-idf/console/CMakeFiles/idf_component_console.dir/split_argv.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/console/split_argv.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/console/CMakeFiles/idf_component_console.dir/split_argv.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/console && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_console.dir/split_argv.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/console/split_argv.c

esp-idf/console/CMakeFiles/idf_component_console.dir/split_argv.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_console.dir/split_argv.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/console && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/console/split_argv.c > CMakeFiles/idf_component_console.dir/split_argv.c.i

esp-idf/console/CMakeFiles/idf_component_console.dir/split_argv.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_console.dir/split_argv.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/console && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/console/split_argv.c -o CMakeFiles/idf_component_console.dir/split_argv.c.s

esp-idf/console/CMakeFiles/idf_component_console.dir/argtable3/argtable3.c.obj: esp-idf/console/CMakeFiles/idf_component_console.dir/flags.make
esp-idf/console/CMakeFiles/idf_component_console.dir/argtable3/argtable3.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/console/argtable3/argtable3.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/console/CMakeFiles/idf_component_console.dir/argtable3/argtable3.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/console && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_console.dir/argtable3/argtable3.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/console/argtable3/argtable3.c

esp-idf/console/CMakeFiles/idf_component_console.dir/argtable3/argtable3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_console.dir/argtable3/argtable3.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/console && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/console/argtable3/argtable3.c > CMakeFiles/idf_component_console.dir/argtable3/argtable3.c.i

esp-idf/console/CMakeFiles/idf_component_console.dir/argtable3/argtable3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_console.dir/argtable3/argtable3.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/console && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/console/argtable3/argtable3.c -o CMakeFiles/idf_component_console.dir/argtable3/argtable3.c.s

esp-idf/console/CMakeFiles/idf_component_console.dir/linenoise/linenoise.c.obj: esp-idf/console/CMakeFiles/idf_component_console.dir/flags.make
esp-idf/console/CMakeFiles/idf_component_console.dir/linenoise/linenoise.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/console/linenoise/linenoise.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/console/CMakeFiles/idf_component_console.dir/linenoise/linenoise.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/console && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_console.dir/linenoise/linenoise.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/console/linenoise/linenoise.c

esp-idf/console/CMakeFiles/idf_component_console.dir/linenoise/linenoise.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_console.dir/linenoise/linenoise.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/console && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/console/linenoise/linenoise.c > CMakeFiles/idf_component_console.dir/linenoise/linenoise.c.i

esp-idf/console/CMakeFiles/idf_component_console.dir/linenoise/linenoise.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_console.dir/linenoise/linenoise.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/console && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/console/linenoise/linenoise.c -o CMakeFiles/idf_component_console.dir/linenoise/linenoise.c.s

# Object files for target idf_component_console
idf_component_console_OBJECTS = \
"CMakeFiles/idf_component_console.dir/commands.c.obj" \
"CMakeFiles/idf_component_console.dir/split_argv.c.obj" \
"CMakeFiles/idf_component_console.dir/argtable3/argtable3.c.obj" \
"CMakeFiles/idf_component_console.dir/linenoise/linenoise.c.obj"

# External object files for target idf_component_console
idf_component_console_EXTERNAL_OBJECTS =

esp-idf/console/libconsole.a: esp-idf/console/CMakeFiles/idf_component_console.dir/commands.c.obj
esp-idf/console/libconsole.a: esp-idf/console/CMakeFiles/idf_component_console.dir/split_argv.c.obj
esp-idf/console/libconsole.a: esp-idf/console/CMakeFiles/idf_component_console.dir/argtable3/argtable3.c.obj
esp-idf/console/libconsole.a: esp-idf/console/CMakeFiles/idf_component_console.dir/linenoise/linenoise.c.obj
esp-idf/console/libconsole.a: esp-idf/console/CMakeFiles/idf_component_console.dir/build.make
esp-idf/console/libconsole.a: esp-idf/console/CMakeFiles/idf_component_console.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C static library libconsole.a"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/console && $(CMAKE_COMMAND) -P CMakeFiles/idf_component_console.dir/cmake_clean_target.cmake
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/console && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/idf_component_console.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/console/CMakeFiles/idf_component_console.dir/build: esp-idf/console/libconsole.a

.PHONY : esp-idf/console/CMakeFiles/idf_component_console.dir/build

esp-idf/console/CMakeFiles/idf_component_console.dir/clean:
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/console && $(CMAKE_COMMAND) -P CMakeFiles/idf_component_console.dir/cmake_clean.cmake
.PHONY : esp-idf/console/CMakeFiles/idf_component_console.dir/clean

esp-idf/console/CMakeFiles/idf_component_console.dir/depend:
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dtcarrot/esp/ict2104/esp32-ai-thinker /home/dtcarrot/esp/esp-who/esp-idf/components/console /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/console /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/console/CMakeFiles/idf_component_console.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/console/CMakeFiles/idf_component_console.dir/depend

