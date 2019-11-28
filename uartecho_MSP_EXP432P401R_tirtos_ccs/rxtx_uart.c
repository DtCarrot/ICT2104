/*
 *  ======== uartecho.c ========
 */
#include <unistd.h>
#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>
#include <pthread.h>
/* Driver Header files */
#include <ti/drivers/GPIO.h>
#include <ti/drivers/UART.h>
#include <ti/sysbios/BIOS.h>
#include <xdc/runtime/Error.h>

/* Driver configuration */
#include "ti_drivers_config.h"

#include <ti/sysbios/knl/Semaphore.h>
#include "rxtx_uart.h"
#include "buzzer.h"

UART_Handle uart;
UART_Params uartParams;

const char  echoPrompt[] = "Echoing characters:\r\n";

const char *ALERT = "ALT1";
const char *CHANGE_TONE = "CHT1";
const char *CHANGE_TONE_ACK = "TACK";


Semaphore_Handle SEM_uart_rx; // this binary semaphore handles uart receiving interrupts

/* Stack size in bytes */
#define THREADSTACKSIZE    2048

void init_uart_thread() {
    pthread_t           usThread;
    pthread_attr_t      usAttrs;
    struct sched_param  usPriParam;
    int                 retc;
    /* Initialize the attributes structure with default values */
    pthread_attr_init(&usAttrs);
    usPriParam.sched_priority=2;

    retc = pthread_attr_setschedparam(&usAttrs, &usPriParam);
    retc |= pthread_attr_setdetachstate(&usAttrs, PTHREAD_CREATE_DETACHED);
    retc |= pthread_attr_setstacksize(&usAttrs, THREADSTACKSIZE);
    if (retc != 0) {
        /* failed to set attributes */
        while (1) {

        }
    }
    retc = pthread_create(&usThread, &usAttrs, init_uart, NULL);
    if (retc != 0) {
        /* pthread_create() failed */
        while (1) {}
    }

}

void *init_uart() {
    UART_init();

    /* Create a UART with data processing off. */
    UART_Params_init(&uartParams);

    uartParams.writeDataMode = UART_DATA_BINARY;
    uartParams.writeMode = UART_MODE_BLOCKING;
    uartParams.readDataMode = UART_DATA_BINARY;
    uartParams.readReturnMode = UART_RETURN_FULL;
    uartParams.readEcho = UART_ECHO_OFF;
    uartParams.readMode = UART_MODE_CALLBACK;
    uartParams.readCallback = &rx_uart_interrupt;

    uartParams.baudRate = 115200;

    uart = UART_open(CONFIG_UART_1, &uartParams);

    if (uart == NULL) {
        /* UART_open() failed */
        while (1);
    }

    // Define binary semaphore to ensure that only one resource
    // accesses UART at the same time
    Semaphore_Params sem_params;
    Error_Block eb;

    // Initialize semaphore
    Semaphore_Params_init(&sem_params);
    // Define the semaphore to be binary
    sem_params.mode = Semaphore_Mode_BINARY;
    // Create semaphore
    SEM_uart_rx = Semaphore_create(0, &sem_params, &eb);
    //char input[4];
    // While loop to check for any incoming data
//

    while(1) {
        char input[50];
        UART_read(uart, &input, sizeof(input));
        // If the command is to play the alarm
        if(strncmp(input, "play", 4) == 0) {
            // Start the alarm
        } else if(strncmp(input, ALERT, 4) == 0) {
            // Turn on the alarm
            //create_buzzer_thread();
            set_alert_sound(1);
        } else if(strncmp(input, CHANGE_TONE, 4) == 0) {
            // Message to change tone
            change_buzzer_tone();
            // Send CHANGE_TONE_ACK
            send_data(CHANGE_TONE_ACK, sizeof(CHANGE_TONE_ACK), NULL, 0);
        }

        // Clear the value after running the comparison checks
        //strcpy(input, "");
        //input[0] = '\0';
//        __delay_cycles(100);
        usleep(100);

    }



}

uint8_t rxData[1024];

void rx_uart_interrupt(UART_Handle handle, void *rxBuf, size_t size) {
    int i = 0;
    for (i = 0; i < size; i++) {
        rxData[i] = ((uint8_t*) rxBuf)[i];
    }
    int j = 0;

}


/*
 * Method that is used to send data with UART command with
 * optional message.
 *
 *
 */
void send_data(uint8_t *command, uint8_t command_len, uint8_t *msg, uint8_t msg_len) {

    // Dynamically define the memory management for command
    uint8_t *output_code = malloc(sizeof(uint8_t) * command_len);
    uint8_t *output_msg;

    // If the message is not NULL, we need to dynamically declare
    // the message data memory
    if (msg != NULL) {
        output_msg = malloc(sizeof(uint8_t) * msg_len);
        strncpy(output_msg, msg, sizeof(msg));
    }

    strncpy(output_code, command, sizeof(output_code));

    // Wait until the binary mutex have been released
    Semaphore_pend(SEM_uart_rx, BIOS_WAIT_FOREVER);

    // Acquire the mutex
    Semaphore_post(SEM_uart_rx);

    // Write the 4 byte header code
    UART_writePolling(uart, output_code, sizeof(output_code));
    if (msg != NULL) {
        // Write the 4 byte header associated message
        UART_writePolling(uart, output_msg, sizeof(output_msg));
        // Free the memeory for the msg
        free(output_msg);
    }

    // Release the mutex so that other
    // resources can acquire the mutex
    Semaphore_post(SEM_uart_rx);

    // Free the memory for the coe
    free(output_code);
}

