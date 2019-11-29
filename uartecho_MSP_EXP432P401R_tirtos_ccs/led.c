/*
 * led.c
 *
 *  Created on: 27 Nov 2019
 *      Author: dtcarrot
 */
#include <unistd.h>
#include <stdint.h>
#include <stddef.h>

#include "led.h"
#include <ti/drivers/GPIO.h>

/* Driver configuration */
#include "ti_drivers_config.h"

// Initialize the led pins
void init_led_gpio() {
    GPIO_setConfig(CONFIG_LED_PIN_GREEN, GPIO_CFG_IN_PU | GPIO_CFG_IN_INT_FALLING);
    GPIO_setConfig(CONFIG_LED_PIN_RED, GPIO_CFG_IN_PU | GPIO_CFG_IN_INT_FALLING);
    GPIO_setConfig(CONFIG_LED_PIN_BLUE, GPIO_CFG_IN_PU | GPIO_CFG_IN_INT_FALLING);
    GPIO_setConfig(CONFIG_GPIO_LED_0, GPIO_CFG_IN_PU | GPIO_CFG_IN_INT_FALLING);
}

// Initialize the led red pin
void trigger_led0(uint8_t val) {
    GPIO_write(CONFIG_GPIO_LED_0, val);
}

void trigger_led1(uint8_t val) {
    // GPIO_write(CONFIG_GPIO_LED_0, val);
}



