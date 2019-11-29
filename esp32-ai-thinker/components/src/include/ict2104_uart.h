/*
 * ict2104_uart.h
 * Defines methods to initialize UART for both RX
 * and TX
 *
 *
 */

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
void parse_message(char* output, uint8_t byte_size);

/*
 *
 * Main task function that shall be responsible
 * for reading UART input
 *
 */
void uart_task(void);

/*
 *
 * Method wrapper used to create UART task
 *
 *
 * Note: Must be called before running sendData()
 *
 */
void uart_init(void);

/*
 *
 * Method to send data to MSP432 over UART
 *
 */
int sendData(const char* data);
