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
CMAKE_SOURCE_DIR = /home/dtcarrot/esp/web_server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dtcarrot/esp/web_server/build

# Utility rule file for menuconfig.

# Include the progress variables for this target.
include CMakeFiles/menuconfig.dir/progress.make

CMakeFiles/menuconfig:
	/home/dtcarrot/.espressif/python_env/idf4.1_py3.7_env/bin/python /home/dtcarrot/esp/esp-idf/tools/kconfig_new/confgen.py --kconfig /home/dtcarrot/esp/esp-idf/Kconfig --sdkconfig-rename /home/dtcarrot/esp/esp-idf/sdkconfig.rename --config /home/dtcarrot/esp/web_server/sdkconfig --defaults /home/dtcarrot/esp/web_server/sdkconfig.defaults --env-file /home/dtcarrot/esp/web_server/build/config.env --env IDF_TARGET=esp32 --output config /home/dtcarrot/esp/web_server/sdkconfig
	/usr/bin/cmake -E env COMPONENT_KCONFIGS=/home/dtcarrot/esp/esp-idf/components/app_trace/Kconfig\ /home/dtcarrot/esp/esp-idf/components/bt/Kconfig\ /home/dtcarrot/esp/esp-idf/components/coap/Kconfig\ /home/dtcarrot/esp/esp-idf/components/driver/Kconfig\ /home/dtcarrot/esp/esp-idf/components/efuse/Kconfig\ /home/dtcarrot/esp/esp-idf/components/esp-tls/Kconfig\ /home/dtcarrot/esp/esp-idf/components/esp32/Kconfig\ /home/dtcarrot/esp/esp-idf/components/esp_adc_cal/Kconfig\ /home/dtcarrot/esp/esp-idf/components/esp_common/Kconfig\ /home/dtcarrot/esp/esp-idf/components/esp_eth/Kconfig\ /home/dtcarrot/esp/esp-idf/components/esp_event/Kconfig\ /home/dtcarrot/esp/esp-idf/components/esp_gdbstub/Kconfig\ /home/dtcarrot/esp/esp-idf/components/esp_http_client/Kconfig\ /home/dtcarrot/esp/esp-idf/components/esp_http_server/Kconfig\ /home/dtcarrot/esp/esp-idf/components/esp_https_ota/Kconfig\ /home/dtcarrot/esp/esp-idf/components/esp_https_server/Kconfig\ /home/dtcarrot/esp/esp-idf/components/esp_wifi/Kconfig\ /home/dtcarrot/esp/esp-idf/components/espcoredump/Kconfig\ /home/dtcarrot/esp/esp-idf/components/fatfs/Kconfig\ /home/dtcarrot/esp/esp-idf/components/freemodbus/Kconfig\ /home/dtcarrot/esp/esp-idf/components/freertos/Kconfig\ /home/dtcarrot/esp/esp-idf/components/heap/Kconfig\ /home/dtcarrot/esp/esp-idf/components/libsodium/Kconfig\ /home/dtcarrot/esp/esp-idf/components/log/Kconfig\ /home/dtcarrot/esp/esp-idf/components/lwip/Kconfig\ /home/dtcarrot/esp/esp-idf/components/mbedtls/Kconfig\ /home/dtcarrot/esp/esp-idf/components/mdns/Kconfig\ /home/dtcarrot/esp/esp-idf/components/mqtt/Kconfig\ /home/dtcarrot/esp/esp-idf/components/newlib/Kconfig\ /home/dtcarrot/esp/esp-idf/components/nvs_flash/Kconfig\ /home/dtcarrot/esp/esp-idf/components/openssl/Kconfig\ /home/dtcarrot/esp/esp-idf/components/pthread/Kconfig\ /home/dtcarrot/esp/esp-idf/components/spi_flash/Kconfig\ /home/dtcarrot/esp/esp-idf/components/spiffs/Kconfig\ /home/dtcarrot/esp/esp-idf/components/tcpip_adapter/Kconfig\ /home/dtcarrot/esp/esp-idf/components/unity/Kconfig\ /home/dtcarrot/esp/esp-idf/components/vfs/Kconfig\ /home/dtcarrot/esp/esp-idf/components/wear_levelling/Kconfig\ /home/dtcarrot/esp/esp-idf/components/wifi_provisioning/Kconfig\ /home/dtcarrot/esp/esp-idf/components/wpa_supplicant/Kconfig\ /home/dtcarrot/esp/web_server/components/Kconfig COMPONENT_KCONFIGS_PROJBUILD=/home/dtcarrot/esp/esp-idf/components/app_update/Kconfig.projbuild\ /home/dtcarrot/esp/esp-idf/components/bootloader/Kconfig.projbuild\ /home/dtcarrot/esp/esp-idf/components/esptool_py/Kconfig.projbuild\ /home/dtcarrot/esp/esp-idf/components/partition_table/Kconfig.projbuild\ /home/dtcarrot/esp/web_server/main/Kconfig.projbuild IDF_CMAKE=y KCONFIG_CONFIG=/home/dtcarrot/esp/web_server/sdkconfig IDF_TARGET=esp32 /home/dtcarrot/esp/web_server/build/kconfig_bin/mconf-idf /home/dtcarrot/esp/esp-idf/Kconfig
	/home/dtcarrot/.espressif/python_env/idf4.1_py3.7_env/bin/python /home/dtcarrot/esp/esp-idf/tools/kconfig_new/confgen.py --kconfig /home/dtcarrot/esp/esp-idf/Kconfig --sdkconfig-rename /home/dtcarrot/esp/esp-idf/sdkconfig.rename --config /home/dtcarrot/esp/web_server/sdkconfig --defaults /home/dtcarrot/esp/web_server/sdkconfig.defaults --env-file /home/dtcarrot/esp/web_server/build/config.env --env IDF_TARGET=esp32 --output config /home/dtcarrot/esp/web_server/sdkconfig

menuconfig: CMakeFiles/menuconfig
menuconfig: CMakeFiles/menuconfig.dir/build.make

.PHONY : menuconfig

# Rule to build all files generated by this target.
CMakeFiles/menuconfig.dir/build: menuconfig

.PHONY : CMakeFiles/menuconfig.dir/build

CMakeFiles/menuconfig.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/menuconfig.dir/cmake_clean.cmake
.PHONY : CMakeFiles/menuconfig.dir/clean

CMakeFiles/menuconfig.dir/depend:
	cd /home/dtcarrot/esp/web_server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dtcarrot/esp/web_server /home/dtcarrot/esp/web_server /home/dtcarrot/esp/web_server/build /home/dtcarrot/esp/web_server/build /home/dtcarrot/esp/web_server/build/CMakeFiles/menuconfig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/menuconfig.dir/depend

