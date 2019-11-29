/*
 * ultrasonic.h
 *
 * This header file shall declare the interfaces
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

void init_ultrasonic_gpio();
void trigger_ultrasonic_pin(uint8_t);
void ultrasonic_echo_interrupt(uint8_t);
float compute_distance();

/*
 * Getters, Setters used to manipulate or retrieve 
 * variables that are encapsulated inside the source 
 * file without exposing it as a global variable.
 *
 *
 */
void set_ultrasonic_distance(float);
float get_ultrasonic_distance();
void reset_ultrasonic_microseconds_count();
void inc_ultrasonic_microseconds_count(uint16_t);
uint16_t get_microseconds_count();
uint8_t read_ultrasonic_trigger_pin();
void reset_microseconds_since_high_trigger();
void inc_microseconds_since_high_trigger(uint8_t);
uint16_t get_microseconds_since_high_trigger();
