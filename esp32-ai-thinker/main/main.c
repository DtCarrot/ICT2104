#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include <esp_wifi.h>
#include <esp_event_loop.h>
#include <esp_log.h>
#include <esp_system.h>
#include <nvs_flash.h>
#include <sys/param.h>
#include "driver/gpio.h"
#include <esp_http_server.h>
#include <ict2104_camera.h>
#include <ict2104_uart.h>
#include <ict2104_wifi.h>
#include <ict2104_mqtt.h>
#include <ict2104_nvs.h>
#include "fd_forward.h"

/*
 *
 * Main entry for this application
 *
 *
 */
void app_main()
{
    nvs_init();
    // Set a delay before starting for debugging purposes
    vTaskDelay(10000 / portTICK_PERIOD_MS);
    ESP_LOGD("TAG", "Before starting camera");
    ESP_LOGI("TAG", "Before starting camera");

    ESP_LOGI("TAG", "Before starting uart");
    // Initialize UART driver connectivity
    // uart_init();
    ESP_LOGI("TAG", "Finished UART init");

    vTaskDelay(2000 / portTICK_PERIOD_MS);
    uart_init();
    // Initialize SPI ram
    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        ESP_ERROR_CHECK(nvs_flash_erase());
        ret = nvs_flash_init();
    }

    ESP_ERROR_CHECK(ret);

    // Initialize the camera
    ESP_ERROR_CHECK(main_camera_init());
    // init_task();

    // Initialize async task
    ESP_LOGI("TAG", "Before starting wifi");
    httpd_handle_t server = NULL;
    initialize_wifi(&server);
    // init_mqtt();

}


