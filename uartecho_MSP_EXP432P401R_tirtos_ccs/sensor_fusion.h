#include <unistd.h>
#include <stdint.h>
#include <stddef.h>

/*
 * Header file for functions that will manage the sensor fusion
 *
 *
 */
uint8_t sensor_fusion_check(float distance, uint8_t active);

extern int time_since_last_alert;
extern uint8_t uart_sent;

uint8_t is_uart_sent();
int get_time_since_last_alert();

void set_uart_sent(uint8_t status);

void inc_time_since_last_alert(int count);
void reset_time_count();


void set_alert_sound(uint8_t status);
uint8_t get_alert_sound();
