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
include esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/depend.make

# Include the progress variables for this target.
include esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/flags.make

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/esp_spiffs.c.obj: esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/flags.make
esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/esp_spiffs.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/esp_spiffs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/esp_spiffs.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_spiffs.dir/esp_spiffs.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/esp_spiffs.c

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/esp_spiffs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_spiffs.dir/esp_spiffs.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/esp_spiffs.c > CMakeFiles/idf_component_spiffs.dir/esp_spiffs.c.i

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/esp_spiffs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_spiffs.dir/esp_spiffs.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/esp_spiffs.c -o CMakeFiles/idf_component_spiffs.dir/esp_spiffs.c.s

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs_api.c.obj: esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/flags.make
esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs_api.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs_api.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs_api.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_spiffs.dir/spiffs_api.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs_api.c

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs_api.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_spiffs.dir/spiffs_api.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs_api.c > CMakeFiles/idf_component_spiffs.dir/spiffs_api.c.i

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs_api.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_spiffs.dir/spiffs_api.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs_api.c -o CMakeFiles/idf_component_spiffs.dir/spiffs_api.c.s

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_cache.c.obj: esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/flags.make
esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_cache.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_cache.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_cache.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_cache.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_cache.c

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_cache.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_cache.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_cache.c > CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_cache.c.i

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_cache.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_cache.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_cache.c -o CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_cache.c.s

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_check.c.obj: esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/flags.make
esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_check.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_check.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_check.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_check.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_check.c

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_check.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_check.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_check.c > CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_check.c.i

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_check.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_check.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_check.c -o CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_check.c.s

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_gc.c.obj: esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/flags.make
esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_gc.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_gc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_gc.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_gc.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_gc.c

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_gc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_gc.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_gc.c > CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_gc.c.i

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_gc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_gc.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_gc.c -o CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_gc.c.s

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_hydrogen.c.obj: esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/flags.make
esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_hydrogen.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_hydrogen.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_hydrogen.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_hydrogen.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_hydrogen.c

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_hydrogen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_hydrogen.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_hydrogen.c > CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_hydrogen.c.i

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_hydrogen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_hydrogen.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_hydrogen.c -o CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_hydrogen.c.s

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_nucleus.c.obj: esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/flags.make
esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_nucleus.c.obj: /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_nucleus.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_nucleus.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_nucleus.c.obj   -c /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_nucleus.c

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_nucleus.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_nucleus.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_nucleus.c > CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_nucleus.c.i

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_nucleus.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_nucleus.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/spiffs/src/spiffs_nucleus.c -o CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_nucleus.c.s

# Object files for target idf_component_spiffs
idf_component_spiffs_OBJECTS = \
"CMakeFiles/idf_component_spiffs.dir/esp_spiffs.c.obj" \
"CMakeFiles/idf_component_spiffs.dir/spiffs_api.c.obj" \
"CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_cache.c.obj" \
"CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_check.c.obj" \
"CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_gc.c.obj" \
"CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_hydrogen.c.obj" \
"CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_nucleus.c.obj"

# External object files for target idf_component_spiffs
idf_component_spiffs_EXTERNAL_OBJECTS =

esp-idf/spiffs/libspiffs.a: esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/esp_spiffs.c.obj
esp-idf/spiffs/libspiffs.a: esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs_api.c.obj
esp-idf/spiffs/libspiffs.a: esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_cache.c.obj
esp-idf/spiffs/libspiffs.a: esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_check.c.obj
esp-idf/spiffs/libspiffs.a: esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_gc.c.obj
esp-idf/spiffs/libspiffs.a: esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_hydrogen.c.obj
esp-idf/spiffs/libspiffs.a: esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/spiffs/src/spiffs_nucleus.c.obj
esp-idf/spiffs/libspiffs.a: esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/build.make
esp-idf/spiffs/libspiffs.a: esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C static library libspiffs.a"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && $(CMAKE_COMMAND) -P CMakeFiles/idf_component_spiffs.dir/cmake_clean_target.cmake
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/idf_component_spiffs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/build: esp-idf/spiffs/libspiffs.a

.PHONY : esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/build

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/clean:
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs && $(CMAKE_COMMAND) -P CMakeFiles/idf_component_spiffs.dir/cmake_clean.cmake
.PHONY : esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/clean

esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/depend:
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dtcarrot/esp/ict2104/esp32-ai-thinker /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/spiffs/CMakeFiles/idf_component_spiffs.dir/depend

