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

// Set buffer size for receiving data
static const int RX_BUF_SIZE = 1024;

// Set TX and RX pins
#define TXD_PIN (GPIO_NUM_14)
#define RXD_PIN (GPIO_NUM_16)

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
    uint8_t *data = (uint8_t *) malloc(RX_BUF_SIZE);

    while (1) {
        // Read data from the UART
        int len = uart_read_bytes(UART_NUM_1, data, RX_BUF_SIZE, 20 / portTICK_RATE_MS);
        // Write data back to the UART
        uart_write_bytes(UART_NUM_1, (const char *) data, len);
    }
}

void uart_init(void) {
    /*
     * Set UART configuration 
     * - ensure that setting same as MSP432 UART.
     * 
     *
     */
    // const uart_config_t uart_config = {
    //     .baud_rate = 115200,
    //     .data_bits = UART_DATA_8_BITS,
    //     .parity = UART_PARITY_DISABLE,
    //     .stop_bits = UART_STOP_BITS_1,
    //     .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
    // };

    // uart_param_config(UART_NUM_1, &uart_config);
    // // Set the TX and RX pin
    // uart_set_pin(UART_NUM_1, TXD_PIN, RXD_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);
    // // We won't use a buffer for sending data.
    // uart_driver_install(UART_NUM_1, RX_BUF_SIZE * 2, 0, 0, NULL, 0);
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

void rx_task(void) {
    static const char *RX_TASK_TAG = "RX_TASK";
    esp_log_level_set(RX_TASK_TAG, ESP_LOG_INFO);
    uint8_t* data = (uint8_t*) malloc(RX_BUF_SIZE+1);
    while (1) {
        const int rxBytes = uart_read_bytes(UART_NUM_1, data, RX_BUF_SIZE, 1000 / portTICK_RATE_MS);
        if (rxBytes > 0) {
            data[rxBytes] = 0;
            ESP_LOGI(RX_TASK_TAG, "Read %d bytes: '%s'", rxBytes, data);
            ESP_LOG_BUFFER_HEXDUMP(RX_TASK_TAG, data, rxBytes, ESP_LOG_INFO);
        }
    }
    free(data);
}

void init_task(void) {
    xTaskCreate(rx_task, "uart_rx_task", 1024*2, NULL, configMAX_PRIORITIES, NULL);
    xTaskCreate(tx_task, "uart_tx_task", 1024*2, NULL, configMAX_PRIORITIES-1, NULL);
    // xTaskCreate(uart_task, "uart_task", 1024*2, NULL, configMAX_PRIORITIES-1, NULL);
}
