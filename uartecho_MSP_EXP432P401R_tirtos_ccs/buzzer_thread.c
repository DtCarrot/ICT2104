/*
 * This source file shall be used to 
 * play the intruder alert buzzer
 * based on the selected tone
 *
 */

#include "buzzer.h"
#include "led.h"
#include "sensor_fusion.h"

const int cycle_delay_up = 3200000; // 320 ms
const int cycle_delay = 1600000; // 160 ms
const int short_delay = 1200000; // 120 ms

// Define remote trigger flag
uint8_t remote_trigger = 0;

/*
 *
 * Method that is first called whenever the buzzer thread is first initialized
 *
 * Within thread, it will be responsible for checking if any alert should be played
 * and play the appropriate tone
 *
 *
 */
void *buzzerThread(void *arg0) {
    while(1) {
        // If either remote trigger or triggered from either ultrasonic and / or 
        // pir sensor
        if((remote_trigger || is_uart_sent()) && get_alert_sound() == 1) {
            // Get the buzzer tone that should be played 
            // Currently. Only 2 buzzer tones are supported
            uint8_t tone = get_buzzer_tone();
            // If first tone
            if(tone == 0) {
                // Play the following buzzer sequence with LED lights
                trigger_buzzer(1);
                trigger_led0(1);
                __delay_cycles(cycle_delay);
                trigger_buzzer(0);
                trigger_led0(0);
                __delay_cycles(cycle_delay_up);
                __delay_cycles(cycle_delay);
                trigger_buzzer(1);
                trigger_led0(1);
                __delay_cycles(cycle_delay);
                trigger_buzzer(0);
                trigger_led0(0);
                __delay_cycles(cycle_delay_up);
                __delay_cycles(cycle_delay);
                trigger_buzzer(1);
                trigger_led0(1);
                __delay_cycles(cycle_delay);
                trigger_buzzer(0);
                trigger_led0(0);
                __delay_cycles(cycle_delay_up);
                __delay_cycles(cycle_delay);
                trigger_buzzer(1);
                trigger_led0(1);
                __delay_cycles(cycle_delay);
                trigger_buzzer(0);
                trigger_led0(0);
                __delay_cycles(cycle_delay_up);
                __delay_cycles(cycle_delay);
                trigger_buzzer(1);
                trigger_led0(1);
                __delay_cycles(cycle_delay);
                trigger_buzzer(0);
                trigger_led0(0);
                __delay_cycles(cycle_delay_up);
                __delay_cycles(cycle_delay);
                trigger_buzzer(1);
                trigger_led0(1);
                __delay_cycles(cycle_delay);
                trigger_buzzer(0);
                trigger_led0(0);
                __delay_cycles(cycle_delay_up);
                __delay_cycles(cycle_delay);
                trigger_buzzer(1);
                trigger_led0(1);
                __delay_cycles(cycle_delay);
                trigger_buzzer(0);
                trigger_led0(0);
                __delay_cycles(cycle_delay_up);
                __delay_cycles(cycle_delay);
                trigger_buzzer(1);
                trigger_led0(1);
                __delay_cycles(cycle_delay);
                trigger_buzzer(0);
                trigger_led0(0);
                __delay_cycles(cycle_delay_up);
                __delay_cycles(cycle_delay);
                trigger_buzzer(1);
                trigger_led0(1);
                __delay_cycles(cycle_delay);
                trigger_buzzer(0);
                trigger_led0(0);
                __delay_cycles(cycle_delay);
                trigger_led0(1);
            } else {
                // If second tone
                // trigger an alternative buzzer sequence
                trigger_buzzer(1);
                __delay_cycles(short_delay);
                trigger_buzzer(0);
                __delay_cycles(short_delay / 2);
                trigger_buzzer(1);
                __delay_cycles(short_delay);
                trigger_buzzer(0);
                __delay_cycles(cycle_delay);

                trigger_buzzer(1);
                __delay_cycles(short_delay);
                trigger_buzzer(0);
                __delay_cycles(short_delay / 2);
                trigger_buzzer(1);
                __delay_cycles(short_delay);
                trigger_buzzer(0);
                __delay_cycles(cycle_delay);

                trigger_buzzer(1);
                __delay_cycles(short_delay);
                trigger_buzzer(0);
                __delay_cycles(short_delay / 2);
                trigger_buzzer(1);
                __delay_cycles(short_delay);
                trigger_buzzer(0);
                __delay_cycles(short_delay / 2);
                trigger_buzzer(1);
                __delay_cycles(short_delay);
                trigger_buzzer(0);
                __delay_cycles(cycle_delay);

                trigger_buzzer(1);
                __delay_cycles(short_delay);
                trigger_buzzer(0);
                __delay_cycles(short_delay / 2);
                trigger_buzzer(1);
                __delay_cycles(short_delay);
                trigger_buzzer(0);
                __delay_cycles(cycle_delay);

                trigger_buzzer(1);
                __delay_cycles(short_delay);
                trigger_buzzer(0);
                __delay_cycles(short_delay / 2);
                trigger_buzzer(1);
                __delay_cycles(short_delay);
                trigger_buzzer(0);
                __delay_cycles(cycle_delay);

                trigger_buzzer(1);
                __delay_cycles(short_delay);
                trigger_buzzer(0);
                __delay_cycles(short_delay / 2);
                trigger_buzzer(1);
                __delay_cycles(short_delay);
                trigger_buzzer(0);
                __delay_cycles(short_delay / 2);
                trigger_buzzer(1);
                __delay_cycles(short_delay);
                trigger_buzzer(0);
                __delay_cycles(cycle_delay);

            }
            // Change remote alert trigger flag to 0
            set_alert_sound(0);
            toggle_remote_trigger(0);
        }

        // Sleep for 1000 microseconds
        // to prevent thread from consume additional resource
        // while inactive
        usleep(1000);
    }
}

/*
 *
 * Setter to toggle the remote trigger status
 *
 * @params uint8_t status -> Current remote trigger status
 *
 */
void toggle_remote_trigger(uint8_t status) {
    remote_trigger = status;
}



