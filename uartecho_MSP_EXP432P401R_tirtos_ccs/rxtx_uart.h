/*
 *  ======== uartecho.c ========
 */
#include <stdint.h>
#include <stddef.h>

/* Driver Header files */
#include <ti/drivers/GPIO.h>
#include <ti/drivers/UART.h>

/* Driver configuration */
#include "ti_drivers_config.h"

void init_uart();
void rx_uart_interrupt(UART_Handle handle, void *ptr, size_t size);
void read_uart();
void send_data(char msg[]);
