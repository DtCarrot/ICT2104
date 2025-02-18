/*
 *  ======== ti_drivers_config.c ========
 *  Configured TI-Drivers module definitions
 *
 *  DO NOT EDIT - This file is generated for the MSP_EXP432P401R
 *  by the SysConfig tool.
 */

#include <stddef.h>

#ifndef DeviceFamily_MSP432P401x
#define DeviceFamily_MSP432P401x
#endif

#include <ti/devices/DeviceFamily.h>

#include "ti_drivers_config.h"

/*
 *  =============================== GPIO ===============================
 */

#include <ti/drivers/GPIO.h>
#include <ti/drivers/gpio/GPIOMSP432.h>

/*
 *  ======== gpioPinConfigs ========
 *  Array of Pin configurations
 */
GPIO_PinConfig gpioPinConfigs[] = {
    /* CONFIG_TRIGGER_PIN */
    GPIOMSP432_P3_6 | GPIO_CFG_OUT_STD | GPIO_CFG_OUT_STR_MED | GPIO_CFG_OUT_LOW,
    /* CONFIG_GPIO_0 */
    GPIOMSP432_P10_1 | GPIO_CFG_IN_NOPULL | GPIO_CFG_IN_INT_NONE,
    /* CONFIG_ECHO_PIN */
    GPIOMSP432_P3_7 | GPIO_CFG_IN_NOPULL | GPIO_CFG_IN_INT_BOTH_EDGES,
    /* CONFIG_GPIO_LED_0 : LaunchPad LED 1 Red */
    GPIOMSP432_P1_0 | GPIO_CFG_OUT_STD | GPIO_CFG_OUT_STR_HIGH | GPIO_CFG_OUT_LOW,
    /* CONFIG_PIR_ECHO_PIN */
    GPIOMSP432_P1_5 | GPIO_CFG_IN_NOPULL | GPIO_CFG_IN_INT_NONE,
    /* CONFIG_BUZZER_OUT_PIN */
    GPIOMSP432_P6_4 | GPIO_CFG_OUT_STD | GPIO_CFG_OUT_STR_HIGH | GPIO_CFG_OUT_LOW,
    /* CONFIG_LED_PIN_GREEN : LaunchPad LED 2 Green */
    GPIOMSP432_P2_1 | GPIO_CFG_OUT_STD | GPIO_CFG_OUT_STR_MED | GPIO_CFG_OUT_LOW,
    /* CONFIG_LED_PIN_BLUE : LaunchPad LED 2 Blue */
    GPIOMSP432_P2_2 | GPIO_CFG_OUT_STD | GPIO_CFG_OUT_STR_MED | GPIO_CFG_OUT_LOW,
    /* CONFIG_LED_PIN_RED : LaunchPad LED 2 Red */
    GPIOMSP432_P2_0 | GPIO_CFG_OUT_STD | GPIO_CFG_OUT_STR_MED | GPIO_CFG_OUT_LOW,
};

/*
 *  ======== gpioCallbackFunctions ========
 *  Array of callback function pointers
 *
 *  NOTE: Unused callback entries can be omitted from the callbacks array to
 *  reduce memory usage by enabling callback table optimization
 *  (GPIO.optimizeCallbackTableSize = true)
 */
GPIO_CallbackFxn gpioCallbackFunctions[] = {
    /* CONFIG_TRIGGER_PIN */
    NULL,
    /* CONFIG_GPIO_0 */
    NULL,
    /* CONFIG_ECHO_PIN */
    NULL,
    /* CONFIG_GPIO_LED_0 : LaunchPad LED 1 Red */
    NULL,
    /* CONFIG_PIR_ECHO_PIN */
    NULL,
    /* CONFIG_BUZZER_OUT_PIN */
    NULL,
    /* CONFIG_LED_PIN_GREEN : LaunchPad LED 2 Green */
    NULL,
    /* CONFIG_LED_PIN_BLUE : LaunchPad LED 2 Blue */
    NULL,
    /* CONFIG_LED_PIN_RED : LaunchPad LED 2 Red */
    NULL,
};

/*
 *  ======== GPIOMSP432_config ========
 */
const GPIOMSP432_Config GPIOMSP432_config = {
    .pinConfigs = (GPIO_PinConfig *)gpioPinConfigs,
    .callbacks = (GPIO_CallbackFxn *)gpioCallbackFunctions,
    .numberOfPinConfigs = 9,
    .numberOfCallbacks = 9,
    .intPriority = (~0)
};


/*
 *  =============================== NVS ===============================
 */

#include <ti/drivers/NVS.h>
#include <ti/drivers/nvs/NVSMSP432.h>

/*
 *  NVSMSP432 Internal NVS flash region definitions
 *
 * Place uninitialized char arrays at addresses
 * corresponding to the 'regionBase' addresses defined in
 * the configured NVS regions. These arrays are used as
 * place holders so that the linker will not place other
 * content there.
 *
 * For GCC targets, the 'flashBuf' arrays are each placed into
 * the shared ".nvs" section. The user must add content to
 * their GCC linker command file to place the .nvs section
 * at the lowest 'regionBase' address specified in their NVS
 * regions.
 */

#if defined(__TI_COMPILER_VERSION__)

#pragma LOCATION(flashBuf0, 0x0);
#pragma NOINIT(flashBuf0);
static char flashBuf0[0x1000];

#elif defined(__IAR_SYSTEMS_ICC__)

__no_init static char flashBuf0[0x1000] @ 0x0;

#elif defined(__GNUC__)

__attribute__ ((section (".nvs")))
static char flashBuf0[0x1000];

#endif

NVSMSP432_Object nvsMSP432Objects[1];

static const NVSMSP432_HWAttrs nvsMSP432HWAttrs[1] = {
    /* CONFIG_NVS_0 */
    {
        .regionBase = (void *) flashBuf0,
        .regionSize = 0x1000
    },
};

#define CONFIG_NVS_COUNT 1

const NVS_Config NVS_config[CONFIG_NVS_COUNT] = {
    /* CONFIG_NVS_0 */
    {
        .fxnTablePtr = &NVSMSP432_fxnTable,
        .object = &nvsMSP432Objects[0],
        .hwAttrs = &nvsMSP432HWAttrs[0],
    },
};

const uint_least8_t NVS_count = CONFIG_NVS_COUNT;


/*
 *  =============================== Power ===============================
 */

#include <ti/drivers/Power.h>
#include <ti/drivers/power/PowerMSP432.h>
extern void PowerMSP432_initPolicy(void);
extern void PowerMSP432_sleepPolicy(void);

const PowerMSP432_ConfigV1 PowerMSP432_config = {
    .policyInitFxn         = PowerMSP432_initPolicy,
    .policyFxn             = PowerMSP432_sleepPolicy,
    .initialPerfLevel      = 3,
    .enablePolicy          = true,
    .enablePerf            = true,
    .enableParking         = false,
    .resumeShutdownHookFxn = NULL,
    .customPerfLevels      = NULL,
    .numCustom             = 0,
    .useExtendedPerf       = false,
    .configurePinHFXT      = false,
    .HFXTFREQ              = 0,
    .bypassHFXT            = false,
    .configurePinLFXT      = false,
    .bypassLFXT            = false,
    .LFXTDRIVE             = 0,
    .enableInterruptsCS    = false,
    .priorityInterruptsCS  = (~0),
    .isrCS                 = NULL
};


/*
 *  =============================== Timer ===============================
 */

#include <ti/drivers/Timer.h>
#include <ti/drivers/timer/TimerMSP432.h>
#include <ti/devices/msp432p4xx/driverlib/interrupt.h>
#include <ti/devices/msp432p4xx/driverlib/timer_a.h>
#include <ti/devices/msp432p4xx/driverlib/timer32.h>

#define CONFIG_TIMER_COUNT 2

/*
 *  ======== timerMSP432Objects ========
 */
TimerMSP432_Object timerMSP432Objects[CONFIG_TIMER_COUNT];

/*
 *  ======== timerMSP432HWAttrs ========
 */
const TimerMSP432_HWAttrs TimerMSP432HWAttrs[CONFIG_TIMER_COUNT] = {
    /* CONFIG_TIMER_0 */
    {
        .timerBaseAddress  = TIMER32_0_BASE,
        .intNum            = INT_T32_INT1,
        .intPriority       = (~0),
    },
    /* CONFIG_TIMER_1 */
    {
        .timerBaseAddress  = TIMER_A1_BASE,
        .intNum            = INT_TA1_0,
        .intPriority       = 0xc0,
        .clockSource       = TIMER_A_CLOCKSOURCE_ACLK
    },
};

/*
 *  ======== Timer_config ========
 */
const Timer_Config Timer_config[CONFIG_TIMER_COUNT] = {
    /* CONFIG_TIMER_0 */
    {
        .fxnTablePtr = &TimerMSP432_Timer32_fxnTable,
        .object      = &timerMSP432Objects[CONFIG_TIMER_0],
        .hwAttrs     = &TimerMSP432HWAttrs[CONFIG_TIMER_0]
    },
    /* CONFIG_TIMER_1 */
    {
        .fxnTablePtr = &TimerMSP432_Timer_A_fxnTable,
        .object      = &timerMSP432Objects[CONFIG_TIMER_1],
        .hwAttrs     = &TimerMSP432HWAttrs[CONFIG_TIMER_1]
    },
};

const uint_least8_t Timer_count = CONFIG_TIMER_COUNT;


/*
 *  =============================== UART ===============================
 */

#include <ti/drivers/UART.h>
#include <ti/drivers/uart/UARTMSP432.h>
#include <ti/devices/msp432p4xx/driverlib/interrupt.h>
#include <ti/devices/msp432p4xx/driverlib/uart.h>

#define CONFIG_UART_COUNT 2

UARTMSP432_Object uartMSP432Objects[CONFIG_UART_COUNT];

static const UARTMSP432_BaudrateConfig uartMSP432Baudrates[] = {
    /* {baudrate, input clock, prescalar, UCBRFx, UCBRSx, oversampling} */
    { 115200, 3000000, 1, 10, 0, 1 },
    { 115200, 6000000, 3, 4, 2, 1 },
    { 115200, 12000000, 6, 8, 32, 1 },
    { 115200, 24000000, 13, 0, 37, 1 },
};

static unsigned char uartMSP432RingBuffer0[32];
static unsigned char uartMSP432RingBuffer1[32];


static const UARTMSP432_HWAttrsV1 uartMSP432HWAttrs[CONFIG_UART_COUNT] = {
  {
    .baseAddr           = EUSCI_A0_BASE,
    .intNum             = INT_EUSCIA0,
    .intPriority        = (~0),
    .clockSource        = EUSCI_A_UART_CLOCKSOURCE_SMCLK,
    .bitOrder           = EUSCI_A_UART_LSB_FIRST,
    .numBaudrateEntries = sizeof(uartMSP432Baudrates) /
                          sizeof(UARTMSP432_BaudrateConfig),
    .baudrateLUT        = uartMSP432Baudrates,
    .ringBufPtr         = uartMSP432RingBuffer0,
    .ringBufSize        = sizeof(uartMSP432RingBuffer0),
    .rxPin              = UARTMSP432_P1_2_UCA0RXD,
    .txPin              = UARTMSP432_P1_3_UCA0TXD,
    .errorFxn           = NULL
  },
  {
    .baseAddr           = EUSCI_A2_BASE,
    .intNum             = INT_EUSCIA2,
    .intPriority        = (~0),
    .clockSource        = EUSCI_A_UART_CLOCKSOURCE_SMCLK,
    .bitOrder           = EUSCI_A_UART_LSB_FIRST,
    .numBaudrateEntries = sizeof(uartMSP432Baudrates) /
                          sizeof(UARTMSP432_BaudrateConfig),
    .baudrateLUT        = uartMSP432Baudrates,
    .ringBufPtr         = uartMSP432RingBuffer1,
    .ringBufSize        = sizeof(uartMSP432RingBuffer1),
    .rxPin              = UARTMSP432_P3_2_UCA2RXD,
    .txPin              = UARTMSP432_P3_3_UCA2TXD,
    .errorFxn           = NULL
  },
};

const UART_Config UART_config[CONFIG_UART_COUNT] = {
    {   /* CONFIG_UART_0 */
        .fxnTablePtr = &UARTMSP432_fxnTable,
        .object      = &uartMSP432Objects[0],
        .hwAttrs     = &uartMSP432HWAttrs[0]
    },
    {   /* CONFIG_UART_1 */
        .fxnTablePtr = &UARTMSP432_fxnTable,
        .object      = &uartMSP432Objects[1],
        .hwAttrs     = &uartMSP432HWAttrs[1]
    },
};

const uint_least8_t UART_count = CONFIG_UART_COUNT;


#include <ti/drivers/Board.h>

/*
 *  ======== Board_initHook ========
 *  Perform any board-specific initialization needed at startup.  This
 *  function is declared weak to allow applications to override it if needed.
 */
void __attribute__((weak)) Board_initHook(void)
{
}

/*
 *  ======== Board_init ========
 *  Perform any initialization needed before using any board APIs
 */
void Board_init(void)
{
    /* ==== /ti/drivers/Power initialization ==== */
    Power_init();

    Board_initHook();
}
