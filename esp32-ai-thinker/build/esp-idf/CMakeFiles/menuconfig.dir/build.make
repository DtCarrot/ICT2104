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

# Utility rule file for menuconfig.

# Include the progress variables for this target.
include esp-idf/CMakeFiles/menuconfig.dir/progress.make

esp-idf/CMakeFiles/menuconfig:
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf && /home/dtcarrot/.espressif/python_env/idf4.1_py3.7_env/bin/python /home/dtcarrot/esp/esp-who/esp-idf/tools/kconfig_new/confgen.py --kconfig /home/dtcarrot/esp/esp-who/esp-idf/Kconfig --config /home/dtcarrot/esp/ict2104/esp32-ai-thinker/sdkconfig --defaults /home/dtcarrot/esp/ict2104/esp32-ai-thinker/sdkconfig.defaults --env "COMPONENT_KCONFIGS= /home/dtcarrot/esp/esp-who/esp-idf/components/app_trace/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/aws_iot/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/bt/Kconfig /home/dtcarrot/esp/ict2104/esp32-ai-thinker/components/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/driver/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/efuse/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/esp32/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/esp_adc_cal/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/esp_event/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/esp_http_client/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/esp_http_server/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/esp_https_ota/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/espcoredump/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/ethernet/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/fatfs/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/freemodbus/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/freertos/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/heap/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/libsodium/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/log/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/lwip/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/mbedtls/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/mdns/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/mqtt/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/nvs_flash/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/openssl/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/pthread/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/spi_flash/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/tcpip_adapter/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/unity/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/vfs/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/wear_levelling/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/wifi_provisioning/Kconfig" --env "COMPONENT_KCONFIGS_PROJBUILD= /home/dtcarrot/esp/esp-who/esp-idf/components/app_update/Kconfig.projbuild /home/dtcarrot/esp/esp-who/esp-idf/components/bootloader/Kconfig.projbuild /home/dtcarrot/esp/esp-who/esp-idf/components/esptool_py/Kconfig.projbuild /home/dtcarrot/esp/ict2104/esp32-ai-thinker/main/Kconfig.projbuild /home/dtcarrot/esp/esp-who/esp-idf/components/partition_table/Kconfig.projbuild" --env IDF_CMAKE=y --env IDF_TARGET=esp32 --output config /home/dtcarrot/esp/ict2104/esp32-ai-thinker/sdkconfig
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf && /usr/bin/cmake -E env "COMPONENT_KCONFIGS= /home/dtcarrot/esp/esp-who/esp-idf/components/app_trace/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/aws_iot/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/bt/Kconfig /home/dtcarrot/esp/ict2104/esp32-ai-thinker/components/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/driver/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/efuse/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/esp32/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/esp_adc_cal/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/esp_event/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/esp_http_client/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/esp_http_server/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/esp_https_ota/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/espcoredump/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/ethernet/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/fatfs/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/freemodbus/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/freertos/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/heap/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/libsodium/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/log/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/lwip/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/mbedtls/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/mdns/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/mqtt/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/nvs_flash/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/openssl/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/pthread/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/spi_flash/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/spiffs/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/tcpip_adapter/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/unity/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/vfs/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/wear_levelling/Kconfig /home/dtcarrot/esp/esp-who/esp-idf/components/wifi_provisioning/Kconfig" "COMPONENT_KCONFIGS_PROJBUILD= /home/dtcarrot/esp/esp-who/esp-idf/components/app_update/Kconfig.projbuild /home/dtcarrot/esp/esp-who/esp-idf/components/bootloader/Kconfig.projbuild /home/dtcarrot/esp/esp-who/esp-idf/components/esptool_py/Kconfig.projbuild /home/dtcarrot/esp/ict2104/esp32-ai-thinker/main/Kconfig.projbuild /home/dtcarrot/esp/esp-who/esp-idf/components/partition_table/Kconfig.projbuild" IDF_CMAKE=y KCONFIG_CONFIG=/home/dtcarrot/esp/ict2104/esp32-ai-thinker/sdkconfig IDF_TARGET=esp32 /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/kconfig_bin/mconf-idf /home/dtcarrot/esp/esp-who/esp-idf/Kconfig

menuconfig: esp-idf/CMakeFiles/menuconfig
menuconfig: esp-idf/CMakeFiles/menuconfig.dir/build.make

.PHONY : menuconfig

# Rule to build all files generated by this target.
esp-idf/CMakeFiles/menuconfig.dir/build: menuconfig

.PHONY : esp-idf/CMakeFiles/menuconfig.dir/build

esp-idf/CMakeFiles/menuconfig.dir/clean:
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf && $(CMAKE_COMMAND) -P CMakeFiles/menuconfig.dir/cmake_clean.cmake
.PHONY : esp-idf/CMakeFiles/menuconfig.dir/clean

esp-idf/CMakeFiles/menuconfig.dir/depend:
	cd /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dtcarrot/esp/ict2104/esp32-ai-thinker /home/dtcarrot/esp/esp-who/esp-idf /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf /home/dtcarrot/esp/ict2104/esp32-ai-thinker/build/esp-idf/CMakeFiles/menuconfig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/CMakeFiles/menuconfig.dir/depend

