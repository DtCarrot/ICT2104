/*
 * led.h
 *
 *  Created on: 27 Nov 2019
 *      Author: dtcarrot
 */

#ifndef LED_H_
#define LED_H_

#include <unistd.h>
#include <stdint.h>
#include <stddef.h>

void init_led_gpio();
void trigger_led0(uint8_t);
void trigger_led1(uint8_t);


#endif /* LED_H_ */
