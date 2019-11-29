#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <string.h>
#include "esp_wifi.h"
#include "esp_system.h"
#include "esp_event.h"
#include "tcpip_adapter.h"
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

#include "ict2104_uart.h"
#include "ict2104_camera.h"

uint8_t mqtt_connected = 0;

esp_mqtt_client_handle_t client = NULL;

esp_mqtt_client_handle_t mqtt_client;
TaskHandle_t heartbeat_handle = NULL;

/*
 * Publish MQTT message to broker
 * @param: 
 * - char *data -> data to be sent 
 * - uint8_t byte_size -> the size of data
 *
 */
void publish_mqtt(char *data, uint8_t byte_size) {
    // Return if MQTT Client is NULL    
    if (client == NULL) {
        return;
    }
    const char *PUBLISH_TAG = "PUBLISH MQTT";
    // Copy string to msg buffer
    char msg[byte_size];
    strcpy(msg, data);
    const char * TAG = "MQTT";
    ESP_LOGI(TAG, "Publish MQTT");
    // Publish mqtt message with specified topic
    int msg_id = esp_mqtt_client_publish(client, "telemetry", data, 0, 0, 0);
}



/*
 * Method used to send MQTT heartbeat to tell
 * web application that ESP32 CAM is still connected
 *
 *
 */
void heartbeat_mqtt(void *p) {
    const char *msg = "HEARTBEAT";
    while (1) {
        // Publish MQTT heartbeat
        publish_mqtt(msg, sizeof(msg));
        // send heartbeat every 5 seconds.
        vTaskDelay(5000 / portTICK_PERIOD_MS);
    }
}

/*
 * Parse MQTT message
 * and send corresponding message data 
 *
 *
 */
void parse_mqtt_message(char* output, uint8_t byte_size) {

    const char *RESET = "RST1";
    const char *ALERT = "ALT1";
    const char *CHANGE_TONE = "CHT1";
    const char *CHANGE_CAMERA_QUALITY = "CAMQ";

    char msg[byte_size];
    strcpy(msg, output);
    /*
     * Check mqtt message and execute action accordingly
     *
     */


    if(strncmp((char*) msg, RESET, 4) == 0) {

        // Restart ESP32-CAM
        ESP_LOGI("MSG", "Restarting");
        esp_restart();

    } else if(strncmp((char*) msg, ALERT, 4) == 0) {

        ESP_LOGI("MSG", "Alerting");
        // Send alert mesasge to uart
        sendData(ALERT);

    } else if(strncmp((char*) msg, CHANGE_CAMERA_QUALITY, 4) == 0) {

        // If command to change camera quality
        // We reset camera
        ESP_LOGI("MSG", "Received command to change camera quality");
        reset_camera();

    } else if(strncmp((char*) msg, CHANGE_TONE, 4) == 0) {
        // Send message to change the tone
        sendData(CHANGE_TONE);
    }
}




// Getter to check MQTT connectivity status
uint8_t check_if_mqtt_connected() {
    return mqtt_connected;
}

/*
 *
 * MQTT method to determine any changes in MQTT state
 *
 *
 */
static esp_err_t mqtt_event_handler(esp_mqtt_event_handle_t event) {
    const char * TAG = "MQTT";
    client = event->client;
    int msg_id;
    switch(event->event_id) {
        case MQTT_EVENT_CONNECTED:
            mqtt_connected = 1;
            ESP_LOGI(TAG, "MQTT_EVENT_CONNECTED");
            msg_id = esp_mqtt_client_subscribe(client, "command", 0);
            ESP_LOGI(TAG, "sent subscribe successful, msg_id=%d", msg_id);
            // Start the heartbeat_mqtt() task to send 
            // heartbeat message to client
            xTaskCreate(heartbeat_mqtt, "heartbeat_mqtt", 1024*2, NULL, configMAX_PRIORITIES-1, &heartbeat_handle);
            break;

        case MQTT_EVENT_DISCONNECTED:
            mqtt_connected = 0;
            ESP_LOGE(TAG, "MQTT_EVENT_DISCONNECTED");
            // Delete the heartbeat_handle 
            if(heartbeat_handle != NULL) {
                vTaskDelete(heartbeat_handle);
            }
            break;

        case MQTT_EVENT_SUBSCRIBED:
            ESP_LOGI(TAG, "MQTT_EVENT_SUBSCRIBED, msg_id=%d", event->msg_id);
            msg_id = esp_mqtt_client_publish(client, "telemetry", "STARTED", 0, 0, 0);
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
            // When a new event data have been received
            // Parse MQTT message which executes action accordingly
            parse_mqtt_message((char*)event->data, sizeof(event->data));
            break;

        case MQTT_EVENT_ERROR:
            mqtt_connected = 0;
            ESP_LOGI(TAG, "MQTT_EVENT_ERROR");
            if(heartbeat_handle != NULL) {
                vTaskDelete(heartbeat_handle);
            }
            break;
        default:
            break;
    }
    return ESP_OK;
}

/*
 * Method used to initialize mqtt client
 *
 *
 */
void init_mqtt() {

    // Define MQTT broker authentication
    const esp_mqtt_client_config_t mqtt_cfg = {
        .uri = "mqtt://tailor.cloudmqtt.com:17072",
        .username = "zrxlhoid",
        .password = "Bv7DAHDDEwVu",
        .event_handle = mqtt_event_handler
    };

    // Init MQTT client
    mqtt_client = esp_mqtt_client_init(&mqtt_cfg);
    
    // Start MQTT
    esp_mqtt_client_start(mqtt_client);

}

/*
 *
 * Wrapper method used to intialize the init_mqtt() task 
 * with 2048 bytes
 *
 */
void init_mqtt_task() {
    xTaskCreate(init_mqtt_task, "mqtt_task", 1024*2, NULL, configMAX_PRIORITIES-1, NULL);
}
