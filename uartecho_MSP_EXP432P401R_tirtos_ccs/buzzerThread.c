#include "buzzer.h"
#include "led.h"
#include "sensor_fusion.h"
/*
 * buzzThread.c
 *
 *  Created on: 8 Nov 2019
 *      Author: dtcarrot
// */
const int cycle_delay_up = 3200000;
const int cycle_delay = 1600000;

void *buzzerThread(void *arg0) {
    while(1) {
        if(is_uart_sent() && get_alert_sound() == 1) {
            uint8_t tone = get_buzzer_tone();
            if(tone == 0) {
//                buzzer_on = 1;
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
//                buzzer_on = 0;
            } else {
                trigger_buzzer(1);
                __delay_cycles(cycle_delay);
                trigger_buzzer(0);
                __delay_cycles(cycle_delay);
                trigger_buzzer(1);
                __delay_cycles(cycle_delay);
                trigger_buzzer(0);
                __delay_cycles(cycle_delay);
                trigger_buzzer(1);
                __delay_cycles(cycle_delay);
                trigger_buzzer(0);
                __delay_cycles(cycle_delay);
            }
            set_alert_sound(0);
        }
//        __delay_cycles(1000);
//        sleep(10);
        usleep(100);
    }
}




