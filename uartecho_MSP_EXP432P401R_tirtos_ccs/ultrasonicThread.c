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
/* POSIX Header files */
#include <pthread.h>
#include <stdio.h>
/* Driver Header files */
#include <ti/drivers/Timer.h>
#include <ti/drivers/UART.h>

#include "ultrasonic.h"
#include "buzzer.h"
#include "pir.h"
//#include "nvs_driver.h"
#include "sensor_fusion.h"
#include "rxtx_uart.h"
/* Driver configuration */
#include "ti_drivers_config.h"

/* Custom files */
extern void *buzzerThread(void *arg0);

/* Callback used for toggling the LED. */
void timerCallback(Timer_Handle myHandle);
void inspectCallback(Timer_Handle myHandle);
void iteratorCallback(Timer_Handle myHandle);

const int SECOND_IN_MICROSECONDS = 1000000;
const int ULTRASONIC_INTERVAL = 1000; // Trigger HIGH every 1000us (1ms)
const int ITERATOR_INTERVAL = 20;

// Detect commands
const char *PEOPLE_DETECTED = "SC01";
const char *ALARM_STOP = "SC02";

const char *ULTRASONIC_READING = "SR04";




/*
 *  ======== mainThread ========
 */
void *ultrasonicThread(void *arg0) {


//    nvs_initialize();
    Timer_Handle timer0;
    Timer_Params params;
    Timer_Handle timer1;
    Timer_Params params1;

    /* Call driver init functions */
    Timer_init();
    init_ultrasonic_gpio();
    init_pir_gpio();
    init_buzzer_gpio();

    // Initialize Timer0 used to check for ultrasonic reading and send alert 
    // to ESP32 over UART.
    Timer_Params_init(&params);
    params.period = ITERATOR_INTERVAL;
    params.periodUnits = Timer_PERIOD_US;
    params.timerMode = Timer_CONTINUOUS_CALLBACK;
    params.timerCallback = iteratorCallback;

    // Start the timer
    timer0 = Timer_open(CONFIG_TIMER_0, &params);

    // Check if timer have been turned on successfully
    if (timer0 == NULL) {
         /* Failed to initialized timer */
        while (1) {}
    }

    // Check if there is any error message
    if (Timer_start(timer0) == Timer_STATUS_ERROR) {
        /* Failed to start timer */
        while (1) {}
    }


    // Initialize ACLK timer that is used to send ultrasonic telemetry
    // information every 4 seconds over UART.
    Timer_Params_init(&params1);

    // 4,000,000 us = 4 seconds
    params1.period = 4000000;
    // Set period unit to be microseconds
    params1.periodUnits = Timer_PERIOD_US;
    params1.timerMode = Timer_CONTINUOUS_CALLBACK;
    // Define timer interrupt callbac
    params1.timerCallback = inspectCallback;

    timer1 = Timer_open(CONFIG_TIMER_1, &params1);

    if (timer1 == NULL) {
         /* Failed to initialized timer */
        while (1) {}
    }

    if (Timer_start(timer1) == Timer_STATUS_ERROR) {
        /* Failed to start timer */
        while (1) {}
    }

    // Initialize the UART driver

    //create_buzzer_thread();
}




/* 
 *
 * Timer interrupt that shall be called every 4 seconds
 *
 *
 */ 
void inspectCallback(Timer_Handle myHandle) {
    uint8_t distance = (uint8_t) get_ultrasonic_distance();
    // Check if the distance less than 300cm.
    // If the distance is more than 300cm, chances are that there is an error 
    // with the ultrasonic sensor or algorithm
    if(distance < 300) {
        //uint8_t * message = "SR04";
        uint8_t count = 0;
        uint8_t *data = malloc(sizeof(uint8_t) * 4); // Clear at the end of the function

        // If distance is more than 100, then the value will be 3 digits
        if(distance > 100) {
            uint8_t hundreds = (uint8_t) distance % 1000 / 100;
            hundreds = hundreds + 0x30;
            data[count++] = hundreds;
        }

        // If distance is more than 10, then the value will be 2 digits.
        if(distance > 10) {
            uint8_t tens = (uint8_t) distance % 100 / 10;
            tens = tens + 0x30;
            data[count++] = tens;
        }

        // Add the ones value
        uint8_t ones = (uint8_t) distance % 10;
        ones = ones + 0x30;
        data[count++] = ones;

        // Add string null terminator
        data[count] = '\0';

        // Send the UART message
        send_data(ULTRASONIC_READING, sizeof(ULTRASONIC_READING), data, sizeof(data));

        free(data); // Clear manual memory defined using malloc

    } else {
        // Blink LED light to indicate that there is a potential error
    }
}

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

    inc_time_since_last_alert(20);

    // Reset buzzer after activating for 10 seconds.
    if(get_time_since_last_alert() > (SECOND_IN_MICROSECONDS * 10)) {
        send_data(ALARM_STOP, sizeof(ALARM_STOP), NULL, 0);
        // pthread_cancel(buzzThread);
        trigger_buzzer(0);
        reset_time_count();
        set_uart_sent(0);
    }

    inc_microseconds_since_high_trigger(ITERATOR_INTERVAL);
    inc_ultrasonic_microseconds_count(ITERATOR_INTERVAL);
    float ultrasonic_detected_distance = get_ultrasonic_distance();
    uint8_t pir_status = get_pir_trigger_status();
    // Run a sensor fusion check to determine whether an object have been detected
    int motion_detected = sensor_fusion_check(ultrasonic_detected_distance, pir_status);
    if(motion_detected) {
        if(!is_uart_sent()) {
            // create_buzzer_thread();
            set_alert_sound(1);
            uint8_t distance = (uint8_t) ultrasonic_detected_distance;
            uint8_t message[12];

            //send_data(12);
            set_uart_sent(1);

            uint8_t *message_code = "SD04";
            send_data(PEOPLE_DETECTED, sizeof(PEOPLE_DETECTED), NULL, 0);
        }


    } else {
        int a = 0;
    }

}


