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
include esp-idf/coap/CMakeFiles/idf_component_coap.dir/depend.make

# Include the progress variables for this target.
include esp-idf/coap/CMakeFiles/idf_component_coap.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/coap/CMakeFiles/idf_component_coap.dir/flags.make

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/address.c.obj: esp-idf/coap/CMakeFiles/idf_component_coap.dir/flags.make
esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/address.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/address.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/address.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_coap.dir/libcoap/src/address.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/address.c

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/address.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_coap.dir/libcoap/src/address.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/address.c > CMakeFiles/idf_component_coap.dir/libcoap/src/address.c.i

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/address.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_coap.dir/libcoap/src/address.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/address.c -o CMakeFiles/idf_component_coap.dir/libcoap/src/address.c.s

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/async.c.obj: esp-idf/coap/CMakeFiles/idf_component_coap.dir/flags.make
esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/async.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/async.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/async.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_coap.dir/libcoap/src/async.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/async.c

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/async.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_coap.dir/libcoap/src/async.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/async.c > CMakeFiles/idf_component_coap.dir/libcoap/src/async.c.i

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/async.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_coap.dir/libcoap/src/async.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/async.c -o CMakeFiles/idf_component_coap.dir/libcoap/src/async.c.s

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/block.c.obj: esp-idf/coap/CMakeFiles/idf_component_coap.dir/flags.make
esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/block.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/block.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/block.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_coap.dir/libcoap/src/block.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/block.c

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/block.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_coap.dir/libcoap/src/block.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/block.c > CMakeFiles/idf_component_coap.dir/libcoap/src/block.c.i

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/block.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_coap.dir/libcoap/src/block.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/block.c -o CMakeFiles/idf_component_coap.dir/libcoap/src/block.c.s

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/coap_time.c.obj: esp-idf/coap/CMakeFiles/idf_component_coap.dir/flags.make
esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/coap_time.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/coap_time.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/coap_time.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_coap.dir/libcoap/src/coap_time.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/coap_time.c

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/coap_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_coap.dir/libcoap/src/coap_time.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/coap_time.c > CMakeFiles/idf_component_coap.dir/libcoap/src/coap_time.c.i

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/coap_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_coap.dir/libcoap/src/coap_time.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/coap_time.c -o CMakeFiles/idf_component_coap.dir/libcoap/src/coap_time.c.s

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/debug.c.obj: esp-idf/coap/CMakeFiles/idf_component_coap.dir/flags.make
esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/debug.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/debug.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/debug.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wno-write-strings -o CMakeFiles/idf_component_coap.dir/libcoap/src/debug.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/debug.c

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/debug.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_coap.dir/libcoap/src/debug.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wno-write-strings -E /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/debug.c > CMakeFiles/idf_component_coap.dir/libcoap/src/debug.c.i

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/debug.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_coap.dir/libcoap/src/debug.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wno-write-strings -S /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/debug.c -o CMakeFiles/idf_component_coap.dir/libcoap/src/debug.c.s

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/encode.c.obj: esp-idf/coap/CMakeFiles/idf_component_coap.dir/flags.make
esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/encode.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/encode.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/encode.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_coap.dir/libcoap/src/encode.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/encode.c

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/encode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_coap.dir/libcoap/src/encode.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/encode.c > CMakeFiles/idf_component_coap.dir/libcoap/src/encode.c.i

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/encode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_coap.dir/libcoap/src/encode.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/encode.c -o CMakeFiles/idf_component_coap.dir/libcoap/src/encode.c.s

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/hashkey.c.obj: esp-idf/coap/CMakeFiles/idf_component_coap.dir/flags.make
esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/hashkey.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/hashkey.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/hashkey.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_coap.dir/libcoap/src/hashkey.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/hashkey.c

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/hashkey.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_coap.dir/libcoap/src/hashkey.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/hashkey.c > CMakeFiles/idf_component_coap.dir/libcoap/src/hashkey.c.i

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/hashkey.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_coap.dir/libcoap/src/hashkey.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/hashkey.c -o CMakeFiles/idf_component_coap.dir/libcoap/src/hashkey.c.s

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/mem.c.obj: esp-idf/coap/CMakeFiles/idf_component_coap.dir/flags.make
esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/mem.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/mem.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/mem.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_coap.dir/libcoap/src/mem.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/mem.c

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/mem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_coap.dir/libcoap/src/mem.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/mem.c > CMakeFiles/idf_component_coap.dir/libcoap/src/mem.c.i

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/mem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_coap.dir/libcoap/src/mem.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/mem.c -o CMakeFiles/idf_component_coap.dir/libcoap/src/mem.c.s

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/net.c.obj: esp-idf/coap/CMakeFiles/idf_component_coap.dir/flags.make
esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/net.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/net.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/net.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_coap.dir/libcoap/src/net.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/net.c

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/net.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_coap.dir/libcoap/src/net.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/net.c > CMakeFiles/idf_component_coap.dir/libcoap/src/net.c.i

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/net.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_coap.dir/libcoap/src/net.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/net.c -o CMakeFiles/idf_component_coap.dir/libcoap/src/net.c.s

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/option.c.obj: esp-idf/coap/CMakeFiles/idf_component_coap.dir/flags.make
esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/option.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/option.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/option.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wno-implicit-fallthrough -o CMakeFiles/idf_component_coap.dir/libcoap/src/option.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/option.c

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/option.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_coap.dir/libcoap/src/option.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wno-implicit-fallthrough -E /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/option.c > CMakeFiles/idf_component_coap.dir/libcoap/src/option.c.i

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/option.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_coap.dir/libcoap/src/option.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wno-implicit-fallthrough -S /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/option.c -o CMakeFiles/idf_component_coap.dir/libcoap/src/option.c.s

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/pdu.c.obj: esp-idf/coap/CMakeFiles/idf_component_coap.dir/flags.make
esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/pdu.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/pdu.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/pdu.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wno-write-strings -o CMakeFiles/idf_component_coap.dir/libcoap/src/pdu.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/pdu.c

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/pdu.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_coap.dir/libcoap/src/pdu.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wno-write-strings -E /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/pdu.c > CMakeFiles/idf_component_coap.dir/libcoap/src/pdu.c.i

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/pdu.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_coap.dir/libcoap/src/pdu.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wno-write-strings -S /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/pdu.c -o CMakeFiles/idf_component_coap.dir/libcoap/src/pdu.c.s

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/resource.c.obj: esp-idf/coap/CMakeFiles/idf_component_coap.dir/flags.make
esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/resource.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/resource.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/resource.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_coap.dir/libcoap/src/resource.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/resource.c

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/resource.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_coap.dir/libcoap/src/resource.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/resource.c > CMakeFiles/idf_component_coap.dir/libcoap/src/resource.c.i

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/resource.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_coap.dir/libcoap/src/resource.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/resource.c -o CMakeFiles/idf_component_coap.dir/libcoap/src/resource.c.s

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/str.c.obj: esp-idf/coap/CMakeFiles/idf_component_coap.dir/flags.make
esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/str.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/str.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/str.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_coap.dir/libcoap/src/str.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/str.c

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/str.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_coap.dir/libcoap/src/str.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/str.c > CMakeFiles/idf_component_coap.dir/libcoap/src/str.c.i

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/str.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_coap.dir/libcoap/src/str.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/str.c -o CMakeFiles/idf_component_coap.dir/libcoap/src/str.c.s

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/subscribe.c.obj: esp-idf/coap/CMakeFiles/idf_component_coap.dir/flags.make
esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/subscribe.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/subscribe.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/subscribe.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_coap.dir/libcoap/src/subscribe.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/subscribe.c

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/subscribe.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_coap.dir/libcoap/src/subscribe.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/subscribe.c > CMakeFiles/idf_component_coap.dir/libcoap/src/subscribe.c.i

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/subscribe.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_coap.dir/libcoap/src/subscribe.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/subscribe.c -o CMakeFiles/idf_component_coap.dir/libcoap/src/subscribe.c.s

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/uri.c.obj: esp-idf/coap/CMakeFiles/idf_component_coap.dir/flags.make
esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/uri.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/uri.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/uri.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_coap.dir/libcoap/src/uri.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/uri.c

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/uri.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_coap.dir/libcoap/src/uri.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/uri.c > CMakeFiles/idf_component_coap.dir/libcoap/src/uri.c.i

esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/uri.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_coap.dir/libcoap/src/uri.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/coap/libcoap/src/uri.c -o CMakeFiles/idf_component_coap.dir/libcoap/src/uri.c.s

esp-idf/coap/CMakeFiles/idf_component_coap.dir/port/coap_io_socket.c.obj: esp-idf/coap/CMakeFiles/idf_component_coap.dir/flags.make
esp-idf/coap/CMakeFiles/idf_component_coap.dir/port/coap_io_socket.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/coap/port/coap_io_socket.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object esp-idf/coap/CMakeFiles/idf_component_coap.dir/port/coap_io_socket.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_coap.dir/port/coap_io_socket.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/coap/port/coap_io_socket.c

esp-idf/coap/CMakeFiles/idf_component_coap.dir/port/coap_io_socket.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_coap.dir/port/coap_io_socket.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/coap/port/coap_io_socket.c > CMakeFiles/idf_component_coap.dir/port/coap_io_socket.c.i

esp-idf/coap/CMakeFiles/idf_component_coap.dir/port/coap_io_socket.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_coap.dir/port/coap_io_socket.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/coap/port/coap_io_socket.c -o CMakeFiles/idf_component_coap.dir/port/coap_io_socket.c.s

# Object files for target idf_component_coap
idf_component_coap_OBJECTS = \
"CMakeFiles/idf_component_coap.dir/libcoap/src/address.c.obj" \
"CMakeFiles/idf_component_coap.dir/libcoap/src/async.c.obj" \
"CMakeFiles/idf_component_coap.dir/libcoap/src/block.c.obj" \
"CMakeFiles/idf_component_coap.dir/libcoap/src/coap_time.c.obj" \
"CMakeFiles/idf_component_coap.dir/libcoap/src/debug.c.obj" \
"CMakeFiles/idf_component_coap.dir/libcoap/src/encode.c.obj" \
"CMakeFiles/idf_component_coap.dir/libcoap/src/hashkey.c.obj" \
"CMakeFiles/idf_component_coap.dir/libcoap/src/mem.c.obj" \
"CMakeFiles/idf_component_coap.dir/libcoap/src/net.c.obj" \
"CMakeFiles/idf_component_coap.dir/libcoap/src/option.c.obj" \
"CMakeFiles/idf_component_coap.dir/libcoap/src/pdu.c.obj" \
"CMakeFiles/idf_component_coap.dir/libcoap/src/resource.c.obj" \
"CMakeFiles/idf_component_coap.dir/libcoap/src/str.c.obj" \
"CMakeFiles/idf_component_coap.dir/libcoap/src/subscribe.c.obj" \
"CMakeFiles/idf_component_coap.dir/libcoap/src/uri.c.obj" \
"CMakeFiles/idf_component_coap.dir/port/coap_io_socket.c.obj"

# External object files for target idf_component_coap
idf_component_coap_EXTERNAL_OBJECTS =

esp-idf/coap/libcoap.a: esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/address.c.obj
esp-idf/coap/libcoap.a: esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/async.c.obj
esp-idf/coap/libcoap.a: esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/block.c.obj
esp-idf/coap/libcoap.a: esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/coap_time.c.obj
esp-idf/coap/libcoap.a: esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/debug.c.obj
esp-idf/coap/libcoap.a: esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/encode.c.obj
esp-idf/coap/libcoap.a: esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/hashkey.c.obj
esp-idf/coap/libcoap.a: esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/mem.c.obj
esp-idf/coap/libcoap.a: esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/net.c.obj
esp-idf/coap/libcoap.a: esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/option.c.obj
esp-idf/coap/libcoap.a: esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/pdu.c.obj
esp-idf/coap/libcoap.a: esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/resource.c.obj
esp-idf/coap/libcoap.a: esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/str.c.obj
esp-idf/coap/libcoap.a: esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/subscribe.c.obj
esp-idf/coap/libcoap.a: esp-idf/coap/CMakeFiles/idf_component_coap.dir/libcoap/src/uri.c.obj
esp-idf/coap/libcoap.a: esp-idf/coap/CMakeFiles/idf_component_coap.dir/port/coap_io_socket.c.obj
esp-idf/coap/libcoap.a: esp-idf/coap/CMakeFiles/idf_component_coap.dir/build.make
esp-idf/coap/libcoap.a: esp-idf/coap/CMakeFiles/idf_component_coap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking C static library libcoap.a"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && $(CMAKE_COMMAND) -P CMakeFiles/idf_component_coap.dir/cmake_clean_target.cmake
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/idf_component_coap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/coap/CMakeFiles/idf_component_coap.dir/build: esp-idf/coap/libcoap.a

.PHONY : esp-idf/coap/CMakeFiles/idf_component_coap.dir/build

esp-idf/coap/CMakeFiles/idf_component_coap.dir/clean:
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap && $(CMAKE_COMMAND) -P CMakeFiles/idf_component_coap.dir/cmake_clean.cmake
.PHONY : esp-idf/coap/CMakeFiles/idf_component_coap.dir/clean

esp-idf/coap/CMakeFiles/idf_component_coap.dir/depend:
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dtcarrot/esp/ict2104/esp32-ai-thinker /home/dtcarrot/esp/esp-who/esp-idf/components/coap /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/coap/CMakeFiles/idf_component_coap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/coap/CMakeFiles/idf_component_coap.dir/depend

