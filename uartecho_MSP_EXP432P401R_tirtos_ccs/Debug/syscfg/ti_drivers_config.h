/*
 *  ======== ti_drivers_config.h ========
 *  Configured TI-Drivers module declarations
 *
 *  DO NOT EDIT - This file is generated for the MSP_EXP432P401R
 *  by the SysConfig tool.
 */
#ifndef ti_drivers_config_h
#define ti_drivers_config_h

#define CONFIG_SYSCONFIG_PREVIEW

#define CONFIG_MSP_EXP432P401R

#ifndef DeviceFamily_MSP432P401x
#define DeviceFamily_MSP432P401x
#endif

#include <ti/devices/DeviceFamily.h>

#include <stdint.h>

/* support C++ sources */
#ifdef __cplusplus
extern "C" {
#endif


/*
 *  ======== GPIO ========
 */

/* P3.6 */
#define CONFIG_TRIGGER_PIN          0
/* P10.1 */
#define CONFIG_GPIO_0               1
/* P3.7 */
#define CONFIG_ECHO_PIN             2
/* P1.0, LaunchPad LED 1 Red */
#define CONFIG_GPIO_LED_0           3
/* P1.5 */
#define CONFIG_PIR_ECHO_PIN         4
/* P6.4 */
#define CONFIG_BUZZER_OUT_PIN       5
/* P2.1, LaunchPad LED 2 Green */
#define CONFIG_LED_PIN_GREEN        6
/* P2.2, LaunchPad LED 2 Blue */
#define CONFIG_LED_PIN_BLUE         7
/* P2.0, LaunchPad LED 2 Red */
#define CONFIG_LED_PIN_RED          8

/* LEDs are active high */
#define CONFIG_GPIO_LED_ON  (1)
#define CONFIG_GPIO_LED_OFF (0)

#define CONFIG_LED_ON  (CONFIG_GPIO_LED_ON)
#define CONFIG_LED_OFF (CONFIG_GPIO_LED_OFF)


/*
 *  ======== NVS ========
 */

#define CONFIG_NVS_0                0


/*
 *  ======== Timer ========
 */

#define CONFIG_TIMER_0              0
#define CONFIG_TIMER_1              1

/*
 *  ======== UART ========
 */

/*
 *  TX: P1.3
 *  RX: P1.2
 *  XDS110 UART
 */
#define CONFIG_UART_0               0
/*
 *  TX: P3.3
 *  RX: P3.2
 */
#define CONFIG_UART_1               1


/*
 *  ======== Board_init ========
 *  Perform all required TI-Drivers initialization
 *
 *  This function should be called once at a point before any use of
 *  TI-Drivers.
 */
extern void Board_init(void);

/*
 *  ======== Board_initGeneral ========
 *  (deprecated)
 *
 *  Board_initGeneral() is defined purely for backward compatibility.
 *
 *  All new code should use Board_init() to do any required TI-Drivers
 *  initialization _and_ use <Driver>_init() for only where specific drivers
 *  are explicitly referenced by the application.  <Driver>_init() functions
 *  are idempotent.
 */
#define Board_initGeneral Board_init

#ifdef __cplusplus
}
#endif

#endif /* include guard */
