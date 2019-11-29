#include <unistd.h>
#include <stdint.h>
#include <stddef.h>

#include "buzzer.h"
#include <ti/drivers/GPIO.h>

/* Driver configuration */
#include "ti_drivers_config.h"

uint8_t buzzer_tone = 0;

uint8_t get_buzzer_tone() {
    return buzzer_tone;
}

/*
 *
 * Method to change the buzzer tone
 *
 * Currently there are two options, buzzer tone 1 and buzzer tone 2
 *
 */
uint8_t change_buzzer_tone() {
    // If buzzer tone is 1, 
    // we need to reset the buzzer tone number to 0
    if(buzzer_tone == 1) {
        buzzer_tone = 0;
    } else {
        buzzer_tone++;
    }
}

void init_buzzer_gpio() {
    // Initialize the gpio for buzzer
    GPIO_init();
    GPIO_setConfig(CONFIG_BUZZER_OUT_PIN, GPIO_CFG_IN_PU | GPIO_CFG_IN_INT_FALLING);
    GPIO_write(CONFIG_BUZZER_OUT_PIN, 0);
}

/*
 * Method used to trigger buzzer
 *
 * @param status - uint8 with updated buzzer status
 *
 */
void trigger_buzzer(uint8_t status) {
    GPIO_write(CONFIG_BUZZER_OUT_PIN, status);
}
