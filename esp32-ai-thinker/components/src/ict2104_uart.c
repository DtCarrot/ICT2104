/*
 * This file implements the methods required to 
 * connect to UART, set up the async RX and TX of tasks
 *
 *
 *
 */

#include "esp_log.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/event_groups.h"
#include <esp_system.h>
#include <sys/param.h>
#include "driver/uart.h"
#include "string.h"
#include "driver/gpio.h"
#include "ict2104_uart.h"
#include "ict2104_mqtt.h"

// Set buffer size for receiving data
static const int RX_BUF_SIZE = 1024;

// Set TX and RX pins
#define TXD_PIN (GPIO_NUM_14)
#define RXD_PIN (GPIO_NUM_16)


// SC01 - Code for "People Detected"
const char *SC01 = "SC01";

// SC02 - Code for "Sensor Reading"
const char *SC02 = "SC02"

// SC03 - Code for "Start Alarm"
const char *SC03 = "SC03";

// SC04 - Code for "Stop Alarm"
const char *SC04 = "SC04";


/*
 *
 * Parse message
 *
 */
void parse_message(char* output, uint8_t byte_size) {
    char msg[byte_size];
    strcpy(msg, output);
    if(strncmp((char*) data, SC01, 4) == 0) {
        // If people detected, we need to fuse with the prediction from video stream
        ESP_LOGI(RX_TASK_TAG, "Found SC01");
        // Now we need to start capture video
    } else if(strncmp((char*) data, SC02, 4) == 0) {
        // If readings of sensor detected - send to MQTT to publish to broker.
        ESP_LOGI(RX_TASK_TAG, "Found SC02");
        // Send reading to MQTT server
        publish_mqtt(output, byte_size);
    } else if(strncmp((char*) data, SC03, 4) == 0) {
        // Reading of start alarm message 
        ESP_LOGI(RX_TASK_TAG, "Found SC03");
    } else if(strncmp((char*) data, SC04, 4) == 0) {
        ESP_LOGI(RX_TASK_TAG, "Found SC04");
    }
}

void uart_task(void) {
    const char * RX_TASK_TAG = "UART RX";
    const uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
    };
    ESP_LOGI(RX_TASK_TAG, "Config uart params");
    ESP_ERROR_CHECK(uart_param_config(UART_NUM_1, &uart_config));
    // Set the TX and RX pin
    ESP_LOGI(RX_TASK_TAG, "Config set pin");
    ESP_ERROR_CHECK(uart_set_pin(UART_NUM_1, TXD_PIN, RXD_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE));
    // We won't use a buffer for sending data.
    ESP_LOGI(RX_TASK_TAG, "Config driver install");
    ESP_ERROR_CHECK(uart_driver_install(UART_NUM_1, RX_BUF_SIZE * 2, 0, 0, NULL, 0));
    // Configure a temporary buffer for the incoming data
    uint8_t* data = (uint8_t*) malloc(RX_BUF_SIZE+1);
    // Read data sent from MSP432 over UART protocol.
    while (1) {
        const int rxBytes = uart_read_bytes(UART_NUM_1, data, RX_BUF_SIZE, 1000 / portTICK_RATE_MS);
        if (rxBytes > 0) {
            data[rxBytes] = 0;
            ESP_LOGI(RX_TASK_TAG, "Read %d bytes: '%s'", rxBytes, data);
            // Match against existing codes
            ESP_LOG_BUFFER_HEXDUMP(RX_TASK_TAG, data, rxBytes, ESP_LOG_INFO);
        }
    }
    free(data);
}

void rx_task(void) {
    static const char *RX_TASK_TAG = "RX_TASK";
    esp_log_level_set(RX_TASK_TAG, ESP_LOG_INFO);
    uint8_t* data = (uint8_t*) malloc(RX_BUF_SIZE+1);
    while (1) {
        const int rxBytes = uart_read_bytes(UART_NUM_1, data, RX_BUF_SIZE, 1000 / portTICK_RATE_MS);
        if (rxBytes > 0) {
            data[rxBytes] = 0;
            ESP_LOGI(RX_TASK_TAG, "Read %d bytes: '%s'", rxBytes, data);
            uint8_t *sc01 = (uint8_t) "SC01";
            uint8_t found = 1;
            for (int i=0; i<rxBytes; i++) {
                if(data[i] != sc01[i]) {
                    found = 0;
                }
            }
            if(found) {
                ESP_LOGI(RX_TASK_TAG, "Found SC01");
            }
            ESP_LOG_BUFFER_HEXDUMP(RX_TASK_TAG, data, rxBytes, ESP_LOG_INFO);
            // if(strncmp((const char*) data, "SC01", 4) == 0) {
            // }
        }
    }
    free(data);
}

void uart_init(void) {
    xTaskCreate(uart_task, "uart_task", 1024*2, NULL, configMAX_PRIORITIES-1, NULL);
}


int sendData(const char* logName, const char* data)
{
    const int len = strlen(data);
    const int txBytes = uart_write_bytes(UART_NUM_1, data, len);
    printf("Sending...");
    ESP_LOGI(logName, "Wrote %d bytes", txBytes);
    return txBytes;
}

void tx_task(void) {
    static const char *TX_TASK_TAG = "TX_TASK";
    esp_log_level_set(TX_TASK_TAG, ESP_LOG_INFO);
    while (1) {
        sendData(TX_TASK_TAG, "Cello orld");
        vTaskDelay(2000 / portTICK_PERIOD_MS);
    }
}



