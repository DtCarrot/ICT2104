/*
 * ultrasonic.h
 *
 * This source file shall implement the interfaces
 * required to initialize the ultrasonic pins,
 * managing the trigger for ultrasonic trigger pin
 * and interrupt when the echo pin goes HIGH.
 *
 *
 * Additionally, it shall also perform necessary calculation
 * to calculate the distance based on the ultrasonic
 * reading
 *
 *
 */
#include <unistd.h>
#include <stdint.h>
#include <stddef.h>


#include "ultrasonic.h"
#include <ti/drivers/GPIO.h>

/* Driver configuration */
#include "ti_drivers_config.h"

float ultrasonic_distance = 0;

/*
 *
 * Declare two variables that shall compute 
 * the microseconds since the last ultrasonic
 * HIGH trigger
 *
 *
 */

// Counter primarily used to calculate the distance
uint16_t ultrasonic_microseconds_count = 0;

// Counter to ensure that the trigger PIN
// does not get turned on too quickly
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

/*
 *
 * Method used to trigger the ultrasonic pin
 *
 * @params uint8_t status -> Configure status of the ultrasonic pin
 *
 */
void trigger_ultrasonic_pin(uint8_t status) {
    GPIO_write(CONFIG_TRIGGER_PIN, status);
}



/*
 * Called whether there is an echo back from the ultrasonic sensor
 *
 */
void ultrasonic_echo_interrupt(uint8_t index) {
    // Calculate the ultrasonic distance
    set_ultrasonic_distance(compute_distance());
    // Reset the microseconds passed since
    // the trigger pin was activated
    reset_ultrasonic_microseconds_count();
}

/*
 *
 * Method used to calculate the distance 
 *
 * Formula: ((Microseconds count since ultrasonic pin triggerd) / 2) / 29.412
 *
 *
 */
float compute_distance() {
    return ((get_microseconds_count() / 2) / 29.412);
}

/*
 * Getters, Setters used to manipulate or retrieve 
 * variables that are encapsulated inside the source 
 * file without exposing it as a global variable.
 *
 *
 */
void set_ultrasonic_distance(float distance) {
    ultrasonic_distance = distance;
}

/*
 *
 * Getter method to retrieve 
 * the current ultrasonic distance
 *
 *
 */
float get_ultrasonic_distance() {
    return ultrasonic_distance;
}

/*
 *
 * Setter method to reset
 * the microseconds passsed since 
 * the ultrasonic HIGH pin was triggered
 *
 *
 */
void reset_ultrasonic_microseconds_count() {
    ultrasonic_microseconds_count = 0;
}

/*
 *
 * Method used to increment the ultrasonic
 * microseconds that passed since high trigger was activated.
 *
 *
 */
void inc_ultrasonic_microseconds_count(uint16_t microseconds) {
    ultrasonic_microseconds_count += microseconds;
}

/*
 * 
 * Getter method used to retrieve the microseconds
 * that have passed since the ultrasomic trigger HIGH pin 
 * was activated
 *
 * @return uint16_t
 *
 */
uint16_t get_microseconds_count() {
    return ultrasonic_microseconds_count;
}

/*
 *
 * Getter mwthod used to get the current trigger
 * pin status
 *
 * @returns uint8_t
 * 1 if the GPIO trigger pin was read
 * 0 if the GPIO trigger pin was not set.
 *
 *
 */
uint8_t read_ultrasonic_trigger_pin() {
    return GPIO_read(CONFIG_TRIGGER_PIN);
}

/*
 *
 * Method used to read the microseconds that 
 * have passed since the high trigger
 *
 *
 */
void reset_microseconds_since_high_trigger() {
    time_since_last_trigger = 0;
}

/*
 *
 * Used to increment the microseconds that 
 * have passed since the high trigger
 *
 * @params 
 * - uint8_t microseconds -> Microseconds to increase by
 *
 */
void inc_microseconds_since_high_trigger(uint8_t microseconds) {
    time_since_last_trigger += microseconds;
}

/*
 *
 * Used to read the microseconds that 
 * have passed since the high trigger
 *
 *
 */
uint16_t get_microseconds_since_high_trigger() {
    return time_since_last_trigger;
}


