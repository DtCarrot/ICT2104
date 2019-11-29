#include <unistd.h>
#include <stdint.h>
#include <stddef.h>
#include "sensor_fusion.h"


uint8_t uart_sent = 0;
int time_since_last_alert = 0;
uint8_t ULTRASONIC_DISTANCE_THRESHOLD = 30;

/*
 * Source file for functions that will manage the sensor fusion
 *
 *
 */
uint8_t sensor_fusion_check(float distance, uint8_t active) {

    // First check if the distance is more than equal to 0
    // and less than the distance threshold in cm.
    if(distance < ULTRASONIC_DISTANCE_THRESHOLD && distance > 0) {
        return 1;
    }

    // Check if the PIR sensor have detected
    if(active) {
        return 1;
    }

    // If the code is still here, 
    // we need to return 0
    return 0;
}


uint8_t is_uart_sent() {
    return uart_sent;
}

void set_uart_sent(uint8_t status) {
    uart_sent = status;
}

int get_time_since_last_alert() {
   return time_since_last_alert;
}

void inc_time_since_last_alert(int count) {
    time_since_last_alert += count;
}

void reset_time_count() {
    time_since_last_alert = 0;
}

uint8_t alert_sound = 0;

void set_alert_sound(uint8_t status) {
    alert_sound = status;
}
uint8_t get_alert_sound() {
    return alert_sound;
}
