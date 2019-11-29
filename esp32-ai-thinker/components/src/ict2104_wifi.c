#include <esp_wifi.h>
#include <esp_event.h>
#include "freertos/event_groups.h"
#include <esp_log.h>
#include <esp_system.h>
#include <sys/param.h>

#include <esp_http_server.h>
#include "ict2104_mqtt.h"
#include "ict2104_wifi.h"
#include "ict2104_uart.h"
#include "ict2104_camera.h"

const char * TAG = "WIFI";

static EventGroupHandle_t s_wifi_event_group;

/*
 * Method used to manage wifi events
 *
 */
static esp_err_t wifi_event_handler(void *ctx, system_event_t *event) {
    httpd_handle_t *server = (httpd_handle_t *)ctx;
    ESP_LOGI(TAG, "Current state %d", event->event_id);
    // Check what is the current connectivity state
    switch (event->event_id) {
        case SYSTEM_EVENT_STA_START:
            ESP_LOGI(TAG, "SYSTEM_EVENT_STA_START");
            ESP_ERROR_CHECK(esp_wifi_connect());
            break;
        case SYSTEM_EVENT_STA_GOT_IP:
            ESP_LOGI(TAG, "SYSTEM_EVENT_STA_GOT_IP");
            // Initialize the MQTT instance 
            init_mqtt();
            // Trigger signal for camera to 
            // start capturing photo
            // and sending it to HTTP server
            start_capture();
            ESP_LOGI(TAG, "Starting web server");
            break;
        case SYSTEM_EVENT_STA_DISCONNECTED:
            ESP_LOGI(TAG, "SYSTEM_EVENT_STA_DISCONNECTED");
            ESP_ERROR_CHECK(esp_wifi_connect());

            break;
        default:
            break;
    }
    return ESP_OK;
}

/*
 *  Method used to initialize wifi connectivity
 *
 *
 */
void initialize_wifi(void *arg) {

    ESP_LOGI("WiFi", "Init tcpip adapter");
    tcpip_adapter_init();
    ESP_LOGI("WiFi", "After init adapter");
    // Define event handler that will be used to
    // manage any update in wifi state
    ESP_ERROR_CHECK(esp_event_loop_init(wifi_event_handler, arg));
    ESP_LOGI("WiFi", "Before init config");
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_LOGI("WiFi", "Before init custom config");
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));
    ESP_ERROR_CHECK(esp_wifi_set_storage(WIFI_STORAGE_RAM));

    // Set the wifi ssid and password
    wifi_config_t wifi_config = {
        .sta = {
            .ssid = "Huawei Pro 20",
            .password = "Quicktest1!"
        },
    };

    ESP_LOGI("WiFi", "Setting WiFi configuration SSID %s...", wifi_config.sta.ssid);
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
    // Apply wifi configuration
    ESP_ERROR_CHECK(esp_wifi_set_config(ESP_IF_WIFI_STA, &wifi_config));
    // Start the wifi service
    ESP_ERROR_CHECK(esp_wifi_start());

}


