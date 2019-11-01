/*
 * Copyright (c) 2015-2019, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/*
 *  ======== uartecho.c ========
 */
#include <unistd.h>
#include <stdint.h>
#include <stddef.h>

/* Driver Header files */
#include <ti/drivers/Timer.h>
#include <ti/drivers/UART.h>

#include "ultrasonic.h"
#include "buzzer.h"
#include "pir.h"
#include "sensor_fusion.h"
#include "rxtx_uart.h"

/* Driver configuration */
#include "ti_drivers_config.h"

/* Custom files */

/* Callback used for toggling the LED. */
void timerCallback(Timer_Handle myHandle);
void iteratorCallback(Timer_Handle myHandle);

const int ULTRASONIC_INTERVAL = 1000; // Trigger HIGH every 1000us (1ms)
const int ITERATOR_INTERVAL = 20;
// int count = 0;
// int iter_count = 0;
// float distance = 0;


/*
 *  ======== mainThread ========
 */
void *ultrasonicThread(void *arg0) {

    Timer_Handle timer0;
    Timer_Params params;
    Timer_Handle timer1;
    Timer_Params timerParams1;

    /* Call driver init functions */
    Timer_init();
    init_ultrasonic_gpio();
    init_pir_gpio();
    init_buzzer_gpio();

    Timer_Params_init(&params);
    //Timer_Params_init(&timerParams1);
    params.period = ITERATOR_INTERVAL;
    params.periodUnits = Timer_PERIOD_US;
    params.timerMode = Timer_CONTINUOUS_CALLBACK;
    params.timerCallback = iteratorCallback;

    timer0 = Timer_open(CONFIG_TIMER_0, &params);

    if (timer0 == NULL) {
         /* Failed to initialized timer */
        while (1) {}
    }

    if (Timer_start(timer0) == Timer_STATUS_ERROR) {
        /* Failed to start timer */
        while (1) {}
    }

    init_uart();
}


/*
 * This callback is called every 1,000,000 microseconds, or 1 second. Because
 * the LED is toggled each time this function is called, the LED will blink at
 * a rate of once every 2 seconds.
 * */

/*
 * This callback is called every 1000 microseconds, or 1 millisecond
 *
 *
 *
 */
/*
void timerCallback(Timer_Handle myHandle)
{
    GPIO_write(CONFIG_TRIGGER_PIN, 1);
    usleep(10); // Sleep for 10 miroseconds
    GPIO_write(CONFIG_TRIGGER_PIN, 0);
    int i = 0;
    for(i=0; i<100000; i++) {}
    sleep(1000);
}
*/

/* 
 * 
 * This method will be called every 10us. 
 *
 */
void iteratorCallback(Timer_Handle myHandle) {
    if(get_microseconds_since_high_trigger() >= 1000) {
        // First we need to check whether the trigger pin is turned on
        if(!read_ultrasonic_trigger_pin()) {
            // If trigger pin not turned on
            trigger_ultrasonic_pin(1);
            reset_microseconds_since_high_trigger();
        } else {
            // If trigger pin already turned off
            trigger_ultrasonic_pin(0);
        }
    }

    inc_microseconds_since_high_trigger(ITERATOR_INTERVAL);
    inc_ultrasonic_microseconds_count(ITERATOR_INTERVAL);
    float ultrasonic_detected_distance = get_ultrasonic_distance();
    uint8_t pir_status = get_pir_trigger_status();
    // Run a sensor fusion check to determine whether an object have been detected
    int motion_detected = sensor_fusion_check(ultrasonic_detected_distance, pir_status);
    if(motion_detected) {
        char data[] = "Sending data over\r\n";
        send_data(data);
       //trigger_buzzer(1);
    }

}


