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
include esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/depend.make

# Include the progress variables for this target.
include esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/flags.make

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_main.c.obj: esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/flags.make
esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_main.c.obj: /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_main.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp_http_server.dir/src/httpd_main.c.obj   -c /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_main.c

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_http_server.dir/src/httpd_main.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_main.c > CMakeFiles/__idf_esp_http_server.dir/src/httpd_main.c.i

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_http_server.dir/src/httpd_main.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_main.c -o CMakeFiles/__idf_esp_http_server.dir/src/httpd_main.c.s

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_parse.c.obj: esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/flags.make
esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_parse.c.obj: /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_parse.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_parse.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp_http_server.dir/src/httpd_parse.c.obj   -c /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_parse.c

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_parse.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_http_server.dir/src/httpd_parse.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_parse.c > CMakeFiles/__idf_esp_http_server.dir/src/httpd_parse.c.i

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_parse.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_http_server.dir/src/httpd_parse.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_parse.c -o CMakeFiles/__idf_esp_http_server.dir/src/httpd_parse.c.s

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_sess.c.obj: esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/flags.make
esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_sess.c.obj: /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_sess.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_sess.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp_http_server.dir/src/httpd_sess.c.obj   -c /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_sess.c

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_sess.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_http_server.dir/src/httpd_sess.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_sess.c > CMakeFiles/__idf_esp_http_server.dir/src/httpd_sess.c.i

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_sess.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_http_server.dir/src/httpd_sess.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_sess.c -o CMakeFiles/__idf_esp_http_server.dir/src/httpd_sess.c.s

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_txrx.c.obj: esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/flags.make
esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_txrx.c.obj: /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_txrx.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_txrx.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp_http_server.dir/src/httpd_txrx.c.obj   -c /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_txrx.c

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_txrx.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_http_server.dir/src/httpd_txrx.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_txrx.c > CMakeFiles/__idf_esp_http_server.dir/src/httpd_txrx.c.i

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_txrx.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_http_server.dir/src/httpd_txrx.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_txrx.c -o CMakeFiles/__idf_esp_http_server.dir/src/httpd_txrx.c.s

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_uri.c.obj: esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/flags.make
esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_uri.c.obj: /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_uri.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_uri.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp_http_server.dir/src/httpd_uri.c.obj   -c /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_uri.c

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_uri.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_http_server.dir/src/httpd_uri.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_uri.c > CMakeFiles/__idf_esp_http_server.dir/src/httpd_uri.c.i

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_uri.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_http_server.dir/src/httpd_uri.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/httpd_uri.c -o CMakeFiles/__idf_esp_http_server.dir/src/httpd_uri.c.s

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/util/ctrl_sock.c.obj: esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/flags.make
esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/util/ctrl_sock.c.obj: /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/util/ctrl_sock.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/util/ctrl_sock.c.obj"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp_http_server.dir/src/util/ctrl_sock.c.obj   -c /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/util/ctrl_sock.c

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/util/ctrl_sock.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_http_server.dir/src/util/ctrl_sock.c.i"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/util/ctrl_sock.c > CMakeFiles/__idf_esp_http_server.dir/src/util/ctrl_sock.c.i

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/util/ctrl_sock.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_http_server.dir/src/util/ctrl_sock.c.s"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dtcarrot/esp/esp-idf/components/esp_http_server/src/util/ctrl_sock.c -o CMakeFiles/__idf_esp_http_server.dir/src/util/ctrl_sock.c.s

# Object files for target __idf_esp_http_server
__idf_esp_http_server_OBJECTS = \
"CMakeFiles/__idf_esp_http_server.dir/src/httpd_main.c.obj" \
"CMakeFiles/__idf_esp_http_server.dir/src/httpd_parse.c.obj" \
"CMakeFiles/__idf_esp_http_server.dir/src/httpd_sess.c.obj" \
"CMakeFiles/__idf_esp_http_server.dir/src/httpd_txrx.c.obj" \
"CMakeFiles/__idf_esp_http_server.dir/src/httpd_uri.c.obj" \
"CMakeFiles/__idf_esp_http_server.dir/src/util/ctrl_sock.c.obj"

# External object files for target __idf_esp_http_server
__idf_esp_http_server_EXTERNAL_OBJECTS =

esp-idf/esp_http_server/libesp_http_server.a: esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_main.c.obj
esp-idf/esp_http_server/libesp_http_server.a: esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_parse.c.obj
esp-idf/esp_http_server/libesp_http_server.a: esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_sess.c.obj
esp-idf/esp_http_server/libesp_http_server.a: esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_txrx.c.obj
esp-idf/esp_http_server/libesp_http_server.a: esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/httpd_uri.c.obj
esp-idf/esp_http_server/libesp_http_server.a: esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/src/util/ctrl_sock.c.obj
esp-idf/esp_http_server/libesp_http_server.a: esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/build.make
esp-idf/esp_http_server/libesp_http_server.a: esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library libesp_http_server.a"
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && $(CMAKE_COMMAND) -P CMakeFiles/__idf_esp_http_server.dir/cmake_clean_target.cmake
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_esp_http_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/build: esp-idf/esp_http_server/libesp_http_server.a

.PHONY : esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/build

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/clean:
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server && $(CMAKE_COMMAND) -P CMakeFiles/__idf_esp_http_server.dir/cmake_clean.cmake
.PHONY : esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/clean

esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/depend:
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dtcarrot/esp/ict2104/esp32-ai-thinker /home/dtcarrot/esp/esp-idf/components/esp_http_server /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/esp_http_server/CMakeFiles/__idf_esp_http_server.dir/depend

