#include <unistd.h>
#include <stdint.h>
#include <stddef.h>

#include "buzzer.h"
#include <ti/drivers/GPIO.h>

/* Driver configuration */
#include "ti_drivers_config.h"

void init_buzzer_gpio() {
    GPIO_init();
    GPIO_setConfig(CONFIG_BUZZER_OUT_PIN, GPIO_CFG_IN_PU | GPIO_CFG_IN_INT_FALLING);
    GPIO_write(CONFIG_BUZZER_OUT_PIN, 0);
}

void trigger_buzzer(uint8_t status) {
    GPIO_write(CONFIG_BUZZER_OUT_PIN, status);
}