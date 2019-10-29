#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include <esp_wifi.h>
#include <esp_event_loop.h>
#include <esp_log.h>
#include <esp_system.h>
#include <nvs_flash.h>
#include <sys/param.h>

#include <esp_http_server.h>
#include <ict2104_camera.h>
#include <ict2104_uart.h>

/*
 *
 * Main entry for this application
 *
 *
 */
void app_main()
{
    // Set a delay before starting for debugging purposes
    vTaskDelay(10000 / portTICK_PERIOD_MS);
    ESP_LOGD("TAG", "Before starting camera");
    ESP_LOGI("TAG", "Before starting camera");


    // Initialize the camera
    // ESP_ERROR_CHECK(main_camera_init());

    // Initialize SPI ram
    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        ESP_ERROR_CHECK(nvs_flash_erase());
        ret = nvs_flash_init();
    }
    // Initialize UART driver connectivity
    uart_init();
    // Initialize async task
    init_task();



}


//   main_camera_init();
//   static httpd_handle_t server = NULL;
//   ESP_ERROR_CHECK(ret);
//   ESP_LOGI(TAG, "ESP_WIFI_MODE_STA");
//   initialise_wifi(&server);
