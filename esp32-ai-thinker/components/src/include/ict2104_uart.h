void uart_init(void);
void tx_task(void);
void rx_task(void);
void init_task(void);
int sendData(const char* logName, const char* data);
