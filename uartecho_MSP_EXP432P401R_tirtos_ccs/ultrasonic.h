#include <unistd.h>
#include <stdint.h>
#include <stddef.h>

extern float ultrasonic_distance;
extern uint16_t ultrasonic_microseconds_count;
extern uint16_t time_since_last_trigger;


void init_ultrasonic_gpio();
void trigger_ultrasonic_pin(uint8_t);
void ultrasonic_echo_interrupt(uint8_t);
float compute_distance();
void set_ultrasonic_distance(float);
float get_ultrasonic_distance();
void reset_ultrasonic_microseconds_count();
void inc_ultrasonic_microseconds_count(uint16_t);
uint16_t get_microseconds_count();
uint8_t read_ultrasonic_trigger_pin();
void reset_microseconds_since_high_trigger();
void inc_microseconds_since_high_trigger(uint8_t);
uint16_t get_microseconds_since_high_trigger();
