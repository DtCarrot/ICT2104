# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# compile ASM with /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc
# compile C with /home/dtcarrot/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc
ASM_FLAGS =   -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -nostdlib -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -ggdb -mfix-esp32-psram-cache-issue -Og -D_GNU_SOURCE -DIDF_VER=\"v4.1-dev-281-g96b96ae24-dirty\" -DGCC_NOT_5_2_0 -DESP_PLATFORM

ASM_DEFINES = -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\"

ASM_INCLUDES = -I/home/dtcarrot/esp/web_server/build/config -I/home/dtcarrot/esp/esp-idf/components/esp32/include -I/home/dtcarrot/esp/esp-idf/components/newlib/platform_include -I/home/dtcarrot/esp/esp-idf/components/freertos/include -I/home/dtcarrot/esp/esp-idf/components/heap/include -I/home/dtcarrot/esp/esp-idf/components/log/include -I/home/dtcarrot/esp/esp-idf/components/soc/esp32/include -I/home/dtcarrot/esp/esp-idf/components/soc/include -I/home/dtcarrot/esp/esp-idf/components/esp_rom/include -I/home/dtcarrot/esp/esp-idf/components/esp_common/include -I/home/dtcarrot/esp/esp-idf/components/xtensa/include -I/home/dtcarrot/esp/esp-idf/components/xtensa/esp32/include -I/home/dtcarrot/esp/esp-idf/components/driver/include -I/home/dtcarrot/esp/esp-idf/components/esp_ringbuf/include -I/home/dtcarrot/esp/esp-idf/components/esp_event/include -I/home/dtcarrot/esp/esp-idf/components/tcpip_adapter/include -I/home/dtcarrot/esp/esp-idf/components/lwip/include/apps -I/home/dtcarrot/esp/esp-idf/components/lwip/include/apps/sntp -I/home/dtcarrot/esp/esp-idf/components/lwip/lwip/src/include -I/home/dtcarrot/esp/esp-idf/components/lwip/port/esp32/include -I/home/dtcarrot/esp/esp-idf/components/lwip/port/esp32/include/arch -I/home/dtcarrot/esp/esp-idf/components/vfs/include -I/home/dtcarrot/esp/esp-idf/components/esp_wifi/include -I/home/dtcarrot/esp/esp-idf/components/esp_wifi/esp32/include -I/home/dtcarrot/esp/esp-idf/components/esp_eth/include -I/home/dtcarrot/esp/esp-idf/components/efuse/include -I/home/dtcarrot/esp/esp-idf/components/efuse/esp32/include -I/home/dtcarrot/esp/esp-idf/components/app_trace/include -I/home/dtcarrot/esp/esp-idf/components/app_update/include -I/home/dtcarrot/esp/esp-idf/components/spi_flash/include -I/home/dtcarrot/esp/esp-idf/components/bootloader_support/include -I/home/dtcarrot/esp/esp-idf/components/mbedtls/port/include -I/home/dtcarrot/esp/esp-idf/components/mbedtls/mbedtls/include -I/home/dtcarrot/esp/esp-idf/components/nvs_flash/include -I/home/dtcarrot/esp/esp-idf/components/pthread/include -I/home/dtcarrot/esp/esp-idf/components/wpa_supplicant/include -I/home/dtcarrot/esp/esp-idf/components/wpa_supplicant/port/include -I/home/dtcarrot/esp/esp-idf/components/wpa_supplicant/include/esp_supplicant -I/home/dtcarrot/esp/esp-idf/components/espcoredump/include 

C_FLAGS = -mlongcalls -Wno-frame-address   -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -nostdlib -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -ggdb -mfix-esp32-psram-cache-issue -Og -std=gnu99 -Wno-old-style-declaration -D_GNU_SOURCE -DIDF_VER=\"v4.1-dev-281-g96b96ae24-dirty\" -DGCC_NOT_5_2_0 -DESP_PLATFORM

C_DEFINES = -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\"

C_INCLUDES = -I/home/dtcarrot/esp/web_server/build/config -I/home/dtcarrot/esp/esp-idf/components/esp32/include -I/home/dtcarrot/esp/esp-idf/components/newlib/platform_include -I/home/dtcarrot/esp/esp-idf/components/freertos/include -I/home/dtcarrot/esp/esp-idf/components/heap/include -I/home/dtcarrot/esp/esp-idf/components/log/include -I/home/dtcarrot/esp/esp-idf/components/soc/esp32/include -I/home/dtcarrot/esp/esp-idf/components/soc/include -I/home/dtcarrot/esp/esp-idf/components/esp_rom/include -I/home/dtcarrot/esp/esp-idf/components/esp_common/include -I/home/dtcarrot/esp/esp-idf/components/xtensa/include -I/home/dtcarrot/esp/esp-idf/components/xtensa/esp32/include -I/home/dtcarrot/esp/esp-idf/components/driver/include -I/home/dtcarrot/esp/esp-idf/components/esp_ringbuf/include -I/home/dtcarrot/esp/esp-idf/components/esp_event/include -I/home/dtcarrot/esp/esp-idf/components/tcpip_adapter/include -I/home/dtcarrot/esp/esp-idf/components/lwip/include/apps -I/home/dtcarrot/esp/esp-idf/components/lwip/include/apps/sntp -I/home/dtcarrot/esp/esp-idf/components/lwip/lwip/src/include -I/home/dtcarrot/esp/esp-idf/components/lwip/port/esp32/include -I/home/dtcarrot/esp/esp-idf/components/lwip/port/esp32/include/arch -I/home/dtcarrot/esp/esp-idf/components/vfs/include -I/home/dtcarrot/esp/esp-idf/components/esp_wifi/include -I/home/dtcarrot/esp/esp-idf/components/esp_wifi/esp32/include -I/home/dtcarrot/esp/esp-idf/components/esp_eth/include -I/home/dtcarrot/esp/esp-idf/components/efuse/include -I/home/dtcarrot/esp/esp-idf/components/efuse/esp32/include -I/home/dtcarrot/esp/esp-idf/components/app_trace/include -I/home/dtcarrot/esp/esp-idf/components/app_update/include -I/home/dtcarrot/esp/esp-idf/components/spi_flash/include -I/home/dtcarrot/esp/esp-idf/components/bootloader_support/include -I/home/dtcarrot/esp/esp-idf/components/mbedtls/port/include -I/home/dtcarrot/esp/esp-idf/components/mbedtls/mbedtls/include -I/home/dtcarrot/esp/esp-idf/components/nvs_flash/include -I/home/dtcarrot/esp/esp-idf/components/pthread/include -I/home/dtcarrot/esp/esp-idf/components/wpa_supplicant/include -I/home/dtcarrot/esp/esp-idf/components/wpa_supplicant/port/include -I/home/dtcarrot/esp/esp-idf/components/wpa_supplicant/include/esp_supplicant -I/home/dtcarrot/esp/esp-idf/components/espcoredump/include 

# Custom flags: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/cpu_start.c.obj_FLAGS = -fno-stack-protector

