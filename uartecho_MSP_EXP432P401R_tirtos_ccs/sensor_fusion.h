#include <unistd.h>
#include <stdint.h>
#include <stddef.h>

/*
 * Header file for functions that will manage 
 * the sensor fusion
 *
 * This includes setting the rule trigger for ultrasonic
 * distance and motion detection
 *
 */

// Identify the time since the alert have been last 
// triggered. 
// This is to prevent duplicate triggering of buzzers
// or setting of UART messages
extern int time_since_last_alert;

// Check whether the uart have already been sent from a
// detection alert.
// Ideally, it should be reset every 10 seconds.
extern uint8_t uart_sent;

/*
 *
 * Method used to perform sensor fusion check
 *
 * @returns 1 if there is a potential human 
 *
 * Criteria to return 1 
 * - distance less than 30 cm
 * - ultrasonic motion detected
 *
 *
 * @returns 0 if there is no potential human
 *
 */
uint8_t sensor_fusion_check(float distance, uint8_t active);

/*
 * Define getters and setters method
 * to encapsulate variables 
 *
 */
uint8_t is_uart_sent();

void set_uart_sent(uint8_t status);

int get_time_since_last_alert();
void inc_time_since_last_alert(int count);
void reset_time_count();

void set_alert_sound(uint8_t status);
uint8_t get_alert_sound();
