#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <string.h>
#include "esp_wifi.h"
#include "esp_system.h"

#include "freertos/FreeRTOS.h"

#include "lwip/sockets.h"
#include "lwip/dns.h"
#include "lwip/netdb.h"

#include "esp_log.h"
#include "mqtt_client.h"

/*
 * Publish MQTT message to broker
 * @param: 
 * - char *data -> data to be sent 
 * - uint8_t byte_size -> the size of data
 *
 */
void publish_mqtt(char *data, uint8_t byte_size);

/*
 * Method used to send MQTT heartbeat to tell
 * web application that ESP32 CAM is still connected
 *
 *
 */
void heartbeat_mqtt(void *p);

/*
 * Parse MQTT message
 * and send corresponding message data 
 *
 *
 */
void parse_mqtt_message(char* output, uint8_t byte_size);

/*
 * Method used to initialize mqtt client
 *
 *
 */
void init_mqtt();

/*
 *
 * Wrapper method used to intialize the init_mqtt() task 
 * with 2048 bytes
 *
 */
void init_mqtt_task();

// Getter to check MQTT connectivity status
uint8_t check_if_mqtt_connected();

/*
 *
 * MQTT method to determine any changes in MQTT state
 *
 *
 */
static esp_err_t mqtt_event_handler(esp_mqtt_event_handle_t event);



