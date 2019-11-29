#include <stdio.h>
#include "esp_system.h"

/*
 * Method used to initialize nvs
 *
 *
 */
void nvs_init();

/*
 * Setter & Getter method for image quality in NVS
 *
 *
 */
uint8_t get_image_quality();
uint8_t set_image_quality();
