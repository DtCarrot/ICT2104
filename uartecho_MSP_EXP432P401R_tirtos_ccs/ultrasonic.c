#include <unistd.h>
#include <stdint.h>
#include <stddef.h>


#include "ultrasonic.h"
#include <ti/drivers/GPIO.h>

/* Driver configuration */
#include "ti_drivers_config.h"

float ultrasonic_distance = 0;
uint16_t ultrasonic_microseconds_count = 0;
uint16_t time_since_last_trigger = 0;

/*
 *
 * Method used to initialize the ultrasonic GPIO pin configuration and interrupt
 *
 *
 *
 */ 
void init_ultrasonic_gpio() {
    GPIO_init();
    GPIO_setConfig(CONFIG_ECHO_PIN, GPIO_CFG_IN_PU | GPIO_CFG_IN_INT_FALLING);
    /* Configure the LED pin */
    GPIO_setCallback(CONFIG_ECHO_PIN, ultrasonic_echo_interrupt);
    GPIO_enableInt(CONFIG_ECHO_PIN);
}

void trigger_ultrasonic_pin(uint8_t status) {
    GPIO_write(CONFIG_TRIGGER_PIN, status);
}



/*
 * Called whether there is an echo back from the ultrasonic sensor
 *
 */
void ultrasonic_echo_interrupt(uint8_t index) {
    set_ultrasonic_distance(compute_distance());
    reset_ultrasonic_microseconds_count();
}

float compute_distance() {
    return ((get_microseconds_count() / 2) / 29.412);
}

/*
 *
 * Define setters / getters
 * for microseconds elapsed since ultrasonic echo was triggered
 * and the distance.
 * 
 */

void set_ultrasonic_distance(float distance) {
    ultrasonic_distance = distance;
}

float get_ultrasonic_distance() {
    return ultrasonic_distance;
}

void reset_ultrasonic_microseconds_count() {
    ultrasonic_microseconds_count = 0;
}

void inc_ultrasonic_microseconds_count(uint16_t microseconds) {
    ultrasonic_microseconds_count += microseconds;
}

uint16_t get_microseconds_count() {
    return ultrasonic_microseconds_count;
}

uint8_t read_ultrasonic_trigger_pin() {
    return GPIO_read(CONFIG_TRIGGER_PIN);
}

void reset_microseconds_since_high_trigger() {
    time_since_last_trigger = 0;
}

void inc_microseconds_since_high_trigger(uint8_t microseconds) {
    time_since_last_trigger += microseconds;
}

uint16_t get_microseconds_since_high_trigger() {
    return time_since_last_trigger;
}


