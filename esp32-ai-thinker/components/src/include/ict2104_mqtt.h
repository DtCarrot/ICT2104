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

// Used to initialize mqtt service
void init_mqtt();
static esp_err_t mqtt_event_handler(esp_mqtt_event_handle_t event);
uint8_t check_if_mqtt_connected();
void publish_mqtt(char *data);