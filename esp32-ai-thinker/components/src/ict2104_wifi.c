#include <esp_wifi.h>
#include <esp_event.h>
#include "freertos/event_groups.h"
#include <esp_log.h>
#include <esp_system.h>
#include <sys/param.h>

#include <esp_http_server.h>
#include "ict2104_wifi.h"
#include "ict2104_uart.h"
#include "ict2104_camera.h"

const char * TAG = "WIFI";

static EventGroupHandle_t s_wifi_event_group;

httpd_uri_t uri_handler_jpg = {
    .uri = "/jpg",
    .method = HTTP_GET,
    .handler = jpg_httpd_handler};


httpd_handle_t start_webserver(void)
{
  httpd_handle_t server = NULL;
  ESP_LOGI(TAG, "Init web server");
  httpd_config_t config = HTTPD_DEFAULT_CONFIG();

  // Start the httpd server
  ESP_LOGI(TAG, "Starting server on port: '%d'", config.server_port);
  if (httpd_start(&server, &config) == ESP_OK)
  {
    // Set URI handlers
    ESP_LOGI(TAG, "Registering URI handlers");
    httpd_register_uri_handler(server, &uri_handler_jpg);
    return server;
  }

  ESP_LOGI(TAG, "Error starting server!");
  return NULL;
}

void stop_webserver(httpd_handle_t server)
{
  // Stop the httpd server
  httpd_stop(server);
}

static esp_err_t wifi_event_handler(void *ctx, system_event_t *event) {
    httpd_handle_t *server = (httpd_handle_t *)ctx;
    switch (event->event_id) {
        case SYSTEM_EVENT_STA_START:
            ESP_LOGI(TAG, "SYSTEM_EVENT_STA_START");
            ESP_ERROR_CHECK(esp_wifi_connect());
            break;
        case SYSTEM_EVENT_STA_GOT_IP:
            ESP_LOGI(TAG, "SYSTEM_EVENT_STA_GOT_IP");
            ESP_LOGI(TAG, "Got IP: '%s'",
                    ip4addr_ntoa(&event->event_info.got_ip.ip_info.ip));

            /* Start the web server */
            // if (*server == NULL)
            // {
            ESP_LOGI(TAG, "Starting web server");
            *server = start_webserver();
            // }
            break;
        case SYSTEM_EVENT_STA_DISCONNECTED:
            ESP_LOGI(TAG, "SYSTEM_EVENT_STA_DISCONNECTED");
            ESP_ERROR_CHECK(esp_wifi_connect());

            /* Stop the web server */
            if (*server)
            {
            stop_webserver(*server);
            *server = NULL;
            }
            break;
        default:
            break;
    }
    return ESP_OK;
}

void start_wifi() {

}

void initialize_wifi(void *arg) {
    ESP_LOGI("WiFi", "Init tcpip adapter");
    tcpip_adapter_init();
    ESP_LOGI("WiFi", "After init adapter");
    ESP_ERROR_CHECK(esp_event_loop_init(wifi_event_handler, arg));
    ESP_LOGI("WiFi", "Before init config");
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_LOGI("WiFi", "Before init custom config");
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));
    ESP_ERROR_CHECK(esp_wifi_set_storage(WIFI_STORAGE_RAM));
    wifi_config_t wifi_config = {
        .sta = {
            .ssid = "Huawei Pro 20",
            .password = "Quicktest1!"
        },
    };

    ESP_LOGI("WiFi", "Setting WiFi configuration SSID %s...", wifi_config.sta.ssid);
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
    ESP_ERROR_CHECK(esp_wifi_set_config(ESP_IF_WIFI_STA, &wifi_config));
    ESP_ERROR_CHECK(esp_wifi_start());

    // start_wifi();
    // xTaskCreate(start_wifi, "wifi_task", 1024*2, NULL, configMAX_PRIORITIES, NULL);
}


