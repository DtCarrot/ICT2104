#include "buzzer.h"

/*
 * buzzThread.c
 *
 *  Created on: 8 Nov 2019
 *      Author: dtcarrot
 */
const int cycle_delay = 4800000;
void *buzzerThread(void *arg0) {

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
    return NULL;

}




