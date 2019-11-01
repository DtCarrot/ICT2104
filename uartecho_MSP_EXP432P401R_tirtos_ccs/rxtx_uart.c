/*
 *  ======== uartecho.c ========
 */
#include <unistd.h>
#include <stdint.h>
#include <stddef.h>

/* Driver Header files */
#include <ti/drivers/GPIO.h>
#include <ti/drivers/UART.h>

/* Driver configuration */
#include "ti_drivers_config.h"

#include "rxtx_uart.h"

UART_Handle uart;
UART_Params uartParams;
char        input[100];
const char  echoPrompt[] = "Echoing characters:\r\n";

void init_uart() {
    UART_init();
    /* Create a UART with data processing off. */
    UART_Params_init(&uartParams);

    uartParams.writeDataMode = UART_DATA_BINARY;
    uartParams.readDataMode = UART_DATA_BINARY;
    uartParams.readReturnMode = UART_RETURN_FULL;
    uartParams.readEcho = UART_ECHO_OFF;
    uartParams.readMode = UART_MODE_CALLBACK; // the uart uses a read interrupt
    uartParams.readCallback = &rx_uart_interrupt; // function called when the uart interrupt fires

    uartParams.baudRate = 115200;

    uart = UART_open(CONFIG_UART_1, &uartParams);

    if (uart == NULL) {
        /* UART_open() failed */
        while (1);
    }

    //UART_write(uart, echoPrompt, sizeof(echoPrompt));

    /* Loop forever echoing */
    //while (1) {
        //UART_read(uart, &input, sizeof(input));
        //UART_write(uart, &input, sizeof(input));
    //}
    while(1) {}
}

uint8_t rxData[1024];

void rx_uart_interrupt(UART_Handle handle, void *rxBuf, size_t size) {
    int i = 0;
    for (i = 0; i < size; i++) {
        rxData[i] = ((uint8_t*) rxBuf)[i];
    }
    int j = 0;
}

void read_uart() {
    UART_write(uart, echoPrompt, sizeof(echoPrompt));
    //UART_read(uart, &input, 1);
    //UART_write(uart, &input, 1);
}

void send_data(char msg[]) {
    //UART_write(uart, msg, sizeof(msg));
    UART_write(uart, "Trigger", sizeof(msg));
}
