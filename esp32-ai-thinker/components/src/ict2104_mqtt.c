#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <string.h>
#include "esp_wifi.h"
#include "esp_system.h"
#include "esp_event.h"
#include "tcpip_adapter.h"
// #include "common_components/protocol_examples_common.h"

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/semphr.h"
#include "freertos/queue.h"
#include "freertos/event_groups.h"

#include "lwip/sockets.h"
#include "lwip/dns.h"
#include "lwip/netdb.h"

#include "esp_log.h"
#include "mqtt_client.h"

uint8_t mqtt_connected = 0;

static esp_err_t mqtt_event_handler(esp_mqtt_event_handle_t event) {
    const char * TAG = "MQTT";
    esp_mqtt_client_handle_t client = event->client;
    int msg_id;
    switch(event->event_id) {
        case MQTT_EVENT_CONNECTED:
            mqtt_connected = 1;
            ESP_LOGI(TAG, "MQTT_EVENT_CONNECTED");
            msg_id = esp_mqtt_client_subscribe(client, "test", 0);
            ESP_LOGI(TAG, "sent subscribe successful, msg_id=%d", msg_id);
            break;

        case MQTT_EVENT_DISCONNECTED:
            mqtt_connected = 0;
            ESP_LOGE(TAG, "MQTT_EVENT_DISCONNECTED");
            break;

        case MQTT_EVENT_SUBSCRIBED:
            ESP_LOGI(TAG, "MQTT_EVENT_SUBSCRIBED, msg_id=%d", event->msg_id);
            msg_id = esp_mqtt_client_publish(client, "test", "data", 0, 0, 0);
            ESP_LOGI(TAG, "sent publish successful, msg_id=%d", msg_id);
            break;

        case MQTT_EVENT_UNSUBSCRIBED:
            ESP_LOGI(TAG, "MQTT_EVENT_UNSUBSCRIBED, msg_id=%d", event->msg_id);
            break;

        case MQTT_EVENT_PUBLISHED:
            ESP_LOGI(TAG, "MQTT_EVENT_PUBLISHED, msg_id=%d", event->msg_id);
            break;

        case MQTT_EVENT_DATA:
            ESP_LOGI(TAG, "MQTT_EVENT_DATA");
            printf("TOPIC=%.*s\r\n", event->topic_len, event->topic);
            printf("DATA=%.*s\r\n", event->data_len, event->data);
            break;

        case MQTT_EVENT_ERROR:
            mqtt_connected = 0;
            ESP_LOGI(TAG, "MQTT_EVENT_ERROR");
            break;
        default:
            break;
    }
    return ESP_OK;
}

const esp_mqtt_client_config_t mqtt_cfg = {
    .uri = "mqtt://mqtt.eclipse.org",
    .event_handle = mqtt_event_handler
};

esp_mqtt_client_handle_t mqtt_client;
void init_mqtt() {
    mqtt_client = esp_mqtt_client_init(&mqtt_cfg);
    esp_mqtt_client_start(mqtt_client);
}


uint8_t check_if_mqtt_connected() {
    return mqtt_connected;
}

void publish_mqtt(char *data) {
    const char * TAG = "MQTT";
    ESP_LOGI(TAG, "Publish MQTT");
    int msg_id = esp_mqtt_client_publish(mqtt_client, "test", "Fast test", 0, 0, 0);
}