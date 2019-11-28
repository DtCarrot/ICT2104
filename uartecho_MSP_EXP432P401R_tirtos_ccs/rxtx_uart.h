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

extern UART_Handle uart;
void init_uart_thread();
void *init_uart();
void rx_uart_interrupt(UART_Handle handle, void *ptr, size_t size);
void read_uart();
//void send_data(char *msg, uint8_t len);
//void send_data(uint8_t* command, uint8_t len);
void send_data_with_msg(uint8_t* command, uint8_t command_len, uint8_t* msg, uint8_t msg_len);
