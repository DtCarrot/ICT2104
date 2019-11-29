/*
 * ict2104_uart.h
 * This file implements the methods required to 
 * connect to UART, set up the async RX and TX of tasks
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
#include "ict2104_camera.h"
#include "ict2104_uart.h"
#include "ict2104_mqtt.h"

// Set buffer size for receiving data
static const int RX_BUF_SIZE = 1024;

// Set TX and RX pins
#define TXD_PIN (GPIO_NUM_14)
#define RXD_PIN (GPIO_NUM_16)



char message_header[5];
uint8_t message_header_exists = 0;

/*
 *
 * Parse message sent from MSP432 via UART
 *
 * By comparing the first 4 bytes of the string 
 * which represents predefined commands
 *
 * It will trigger corresponding action
 *
 */
void parse_message(char* output, uint8_t byte_size) {

    const char * RX_TASK_TAG = "UART RX";

    // SC01 - Code for "People Detected"
    const char *PEOPLE_DETECTED = "SC01";

    // SC02 - Code to stop alarm
    const char *ALARM_STOP = "SC02";

    // SC03 - Code for "Temperature Reading"
    const char *TEMPERATURE_READING = "SR03";

    // SC04 - Code for "Ultrasonic Reading"
    const char *ULTRASONIC_READING = "SR04";

    // SC04 - Code for "Ultrasonic Reading"
    // const char *ULTRASONIC_READING = "SR04";

    // Change tone ACK
    const char *CHANGE_TONE_ACK = "TACK";


    char msg[byte_size];
    strcpy(msg, output);
    ESP_LOGI(RX_TASK_TAG, "Parsing data");

    // If there is a message header that exists
    // we need to check and wait for the associated reading value
    if(message_header_exists) {
        // Check whether there is an ultrasonic reading 
        if(strncmp((char*) message_header, ULTRASONIC_READING, 4) == 0) {

            ESP_LOGI(RX_TASK_TAG, "Message header found with data %s", message_header);
            // Reset the messge header flag
            message_header_exists = 0;

            char *data_message = malloc(sizeof(char) * 9); // Dynamically declare memory
            sprintf(data_message, "%s%s", message_header, msg);

            // Publish mqtt message with ultrasonic reading command
            publish_mqtt(data_message, sizeof(data_message));

            free(data_message); // Clear the memory 

        } else if(strncmp((char*) message_header, TEMPERATURE_READING, 4) == 0) {

            ESP_LOGI(RX_TASK_TAG, "Message header found with data %s", message_header);
            // Reset the messge header flag
            message_header_exists = 0;
            // Publish mqtt message with temperature reading command
            publish_mqtt(msg, sizeof(msg));
            
        } else {

            // Reset the message header information
            message_header_exists = 0;

        }
    } 

    // Check the message command and perform action based
    // on the UART input
    if(strncmp((char*) msg, PEOPLE_DETECTED, 4) == 0) {

        // If people detected, we need to fuse with the prediction from video stream
        ESP_LOGI(RX_TASK_TAG, "People detected");
        // Now we need to start capture video
        publish_mqtt(msg, sizeof(msg));

    } else if(strncmp((char*) msg, ALARM_STOP, 4) == 0) {

        // If command is to cease alert
        ESP_LOGI(RX_TASK_TAG, "Cease Alert");
        publish_mqtt(msg, sizeof(msg));

    } else if(strncmp((char*) msg, ULTRASONIC_READING, 4) == 0) {

        // Set the ultrasonic message header to tell loop to expect an ultrasonic distance value
        strcpy(message_header, ULTRASONIC_READING);
        message_header_exists = 1;
        ESP_LOGI(RX_TASK_TAG, "Found SC03");

    } else if(strncmp((char*) msg, TEMPERATURE_READING, 4) == 0) {

        // @TODO
        // Set the temperature message header to tell loop to expect an temperature reading value
        strcpy(message_header, TEMPERATURE_READING);
        message_header_exists = 1;
        ESP_LOGI(RX_TASK_TAG, "Found SC04");

    } else if(strncmp((char*) msg, CHANGE_TONE_ACK, 4) == 0) {

        ESP_LOGI(RX_TASK_TAG, "Change Tone ACK");
        publish_mqtt(msg, sizeof(msg));

    } else {

        return;

    }
}

/*
 *
 * Main task function that shall be responsible
 * for reading UART input
 *
 */
void uart_task(void) {
    const char * RX_TASK_TAG = "UART RX";
    // Define configuration for UART
    // set baud rate to 115200 
    // with 8 bits with 1 stop bit
    const uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
    };
    ESP_LOGI(RX_TASK_TAG, "Config uart params");
    // Set UART configuration
    ESP_ERROR_CHECK(uart_param_config(UART_NUM_1, &uart_config));
    // Set the TX and RX pin
    ESP_LOGI(RX_TASK_TAG, "Config set pin");
    ESP_ERROR_CHECK(uart_set_pin(UART_NUM_1, TXD_PIN, RXD_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE));
    // We won't use a buffer for sending data.
    ESP_LOGI(RX_TASK_TAG, "Config driver install");
    // ESP_ERROR_CHECK(uart_driver_install(UART_NUM_1,  2, 0, 0, NULL, 0));
    ESP_ERROR_CHECK(uart_driver_install(UART_NUM_1, RX_BUF_SIZE * 2, 0, 0, NULL, 0));
    // Configure a temporary buffer for the incoming data
    uint8_t* data = (uint8_t*) malloc(RX_BUF_SIZE+1);
    // Read data sent from MSP432 over UART protocol.
    while (1) {
        // Read 4 bytes of data at a time
        const int rxBytes = uart_read_bytes(UART_NUM_1, data, 4, 1000 / portTICK_RATE_MS);
        if (rxBytes > 0) {
            data[rxBytes] = 0;
            ESP_LOGI(RX_TASK_TAG, "Read %d bytes: '%s'", rxBytes, data);
            // Parse message and execute corresponding action
            parse_message((char*)data, sizeof(data));
        }
    }
    free(data); // Free dynamically allocated data
}

/*
 *
 * Method wrapper used to create UART task
 *
 *
 * Note: Must be called before running sendData()
 *
 */
void uart_init(void) {
    xTaskCreate(uart_task, "uart_task", 1024*2, NULL, configMAX_PRIORITIES-1, NULL);
}

/*
 *
 * Method to send data to MSP432 over UART
 *
 */
int sendData(const char* data) {
    static const char *logName = "SEND_DATA";
    const int len = strlen(data);
    // Write data to MSP432 over UART
    const int txBytes = uart_write_bytes(UART_NUM_1, data, len);
    ESP_LOGI(logName, "Wrote %d bytes", txBytes);
    return txBytes;
}



