#include <unistd.h>
#include <stdint.h>
#include <stddef.h>
#include "sensor_fusion.h"

/*
 * Source file for functions that will manage the sensor fusion
 *
 *
 */
uint8_t sensor_fusion_check(float distance, uint8_t active) {
    if(distance < 20 && active) {
        return 1;
    }
    return 0;
}
