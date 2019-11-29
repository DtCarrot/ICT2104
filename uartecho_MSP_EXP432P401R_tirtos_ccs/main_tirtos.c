/*
 * Main entry file in the MSP432 system programming
 *
 *
 *  ======== main_tirtos.c =======
 */
#include <stdint.h>

/* POSIX Header files */
#include <pthread.h>

/* RTOS header files */
#include <ti/sysbios/BIOS.h>

/* Driver configuration */
#include <ti/drivers/Board.h>
#include "rxtx_uart.h"

#include <unistd.h>
#include <stddef.h>

#include <ti/drivers/GPIO.h>

/* Driver configuration */
#include "ti_drivers_config.h"

#include "led.h"


/* Custom files */
extern void main_thread(void *arg0);
extern void *buzzerThread(void *arg0);
extern void *ultrasonicThread(void *arg0);


/* Stack size in bytes */
#define THREADSTACKSIZE    1024
int retc;

void create_buzzer_thread() {
    pthread_t           buzzThread;
    pthread_attr_t      buzzAttrs;
    struct sched_param  buzzPriParam;
    /* Initialize the attributes structure with default values */
    pthread_attr_init(&buzzAttrs);
    buzzPriParam.sched_priority=2;

    retc = pthread_attr_setschedparam(&buzzAttrs, &buzzPriParam);
    retc |= pthread_attr_setdetachstate(&buzzAttrs, PTHREAD_CREATE_DETACHED);
    retc |= pthread_attr_setstacksize(&buzzAttrs, 512);
    if (retc != 0) {
        /* failed to set attributes */
        while (1) {

        }
    }
    retc = pthread_create(&buzzThread, &buzzAttrs, buzzerThread, NULL);
    if (retc != 0) {
        /* pthread_create() failed */
        while (1) {

        }
    }
}


/*
 *  ======== main ========
 *
 *
 * In the main entry, we create 3 different threads
 * buzzer_thread -> To toggle buzzer tone
 * main_thread -> To detect current sensor status (Ultrasonic distance & PIR sensor)
 * uart thread -> To write and read UART data to and from ESP32-CAM
 *
 *
 */
int main(void) {
    pthread_t           thread;
    pthread_attr_t      attrs;
    struct sched_param  priParam;
    int                 retc;

    /* Call driver init functions */
    Board_init();
    GPIO_init();


    // Initialize the led GPIO pins
    init_led_gpio();

    // Trigger the red led lights
    trigger_led1(1);

    // Initialize the buzzer thread
    create_buzzer_thread();

    /*
     *
     * Initialize the main thread used
     * to get the ultrasonic and PIR 
     * sensor value
     *
     *
     */
    pthread_t           usThread;
    pthread_attr_t      usAttrs;
    struct sched_param  usPriParam;
    /* Initialize the attributes structure with default values */
    pthread_attr_init(&usAttrs);
    // Set schedule priority to 2
    usPriParam.sched_priority=2;

    retc = pthread_attr_setschedparam(&usAttrs, &usPriParam);
    retc |= pthread_attr_setdetachstate(&usAttrs, PTHREAD_CREATE_DETACHED);
    retc |= pthread_attr_setstacksize(&usAttrs, THREADSTACKSIZE);
    if (retc != 0) {
        /* failed to set attributes */
        while (1) {

        }
    }
    retc = pthread_create(&usThread, &usAttrs, main_thread, NULL);
    if (retc != 0) {
        /* pthread_create() failed */
        while (1) {}
    }

    // Initialize the UART thread
    init_uart_thread();

    BIOS_start();

    return (0);
}
