#include <unistd.h>
#include <stdint.h>
#include <stddef.h>

#include "pir.h"
#include <ti/drivers/GPIO.h>

/* Driver configuration */
#include "ti_drivers_config.h"


/*
 *
 * In here we define the GPIO pins for PIR sensor
 *
 */
void init_pir_gpio() {
    GPIO_init();
    GPIO_setConfig(CONFIG_PIR_ECHO_PIN, GPIO_CFG_IN_PU | GPIO_CFG_IN_INT_FALLING);
}


/*
 * 
 * Method used in order to get the pir trigger status
 * 
 *
 */
uint8_t get_pir_trigger_status() {
    // Returns the current pir trigger status
    return GPIO_read(CONFIG_PIR_ECHO_PIN);
}

 