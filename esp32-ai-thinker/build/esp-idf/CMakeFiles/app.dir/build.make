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

# Utility rule file for app.

# Include the progress variables for this target.
include esp-idf/CMakeFiles/app.dir/progress.make

esp-idf/CMakeFiles/app: hello-world.bin


hello-world.bin: hello-world.elf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../hello-world.bin"
	/home/dtcarrot/.espressif/python_env/idf4.1_py3.7_env/bin/python /home/dtcarrot/esp/esp-who/esp-idf/components/esptool_py/esptool/esptool.py --chip esp32 elf2image --flash_mode dio --flash_freq 40m --flash_size 2MB --elf-sha256-offset 0xb0 -o /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/hello-world.bin hello-world.elf

app: esp-idf/CMakeFiles/app
app: hello-world.bin
app: esp-idf/CMakeFiles/app.dir/build.make

.PHONY : app

# Rule to build all files generated by this target.
esp-idf/CMakeFiles/app.dir/build: app

.PHONY : esp-idf/CMakeFiles/app.dir/build

esp-idf/CMakeFiles/app.dir/clean:
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf && $(CMAKE_COMMAND) -P CMakeFiles/app.dir/cmake_clean.cmake
.PHONY : esp-idf/CMakeFiles/app.dir/clean

esp-idf/CMakeFiles/app.dir/depend:
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dtcarrot/esp/ict2104/esp32-ai-thinker /home/dtcarrot/esp/esp-who/esp-idf /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/CMakeFiles/app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/CMakeFiles/app.dir/depend

