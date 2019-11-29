################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
../MSP_EXP432P401R_TIRTOS.cmd 

SYSCFG_SRCS += \
../uartecho.syscfg 

C_SRCS += \
../buzzer.c \
../buzzer_thread.c \
../led.c \
../main_thread.c \
../main_tirtos.c \
../pir.c \
../rxtx_uart.c \
../sensor_fusion.c \
./syscfg/ti_drivers_config.c \
../ultrasonic.c 

GEN_FILES += \
./syscfg/ti_drivers_config.c 

GEN_MISC_DIRS += \
./syscfg/ 

C_DEPS += \
./buzzer.d \
./buzzer_thread.d \
./led.d \
./main_thread.d \
./main_tirtos.d \
./pir.d \
./rxtx_uart.d \
./sensor_fusion.d \
./syscfg/ti_drivers_config.d \
./ultrasonic.d 

OBJS += \
./buzzer.obj \
./buzzer_thread.obj \
./led.obj \
./main_thread.obj \
./main_tirtos.obj \
./pir.obj \
./rxtx_uart.obj \
./sensor_fusion.obj \
./syscfg/ti_drivers_config.obj \
./ultrasonic.obj 

GEN_MISC_FILES += \
./syscfg/ti_drivers_config.h \
./syscfg/syscfg_c.rov.xs 

GEN_MISC_DIRS__QUOTED += \
"syscfg/" 

OBJS__QUOTED += \
"buzzer.obj" \
"buzzer_thread.obj" \
"led.obj" \
"main_thread.obj" \
"main_tirtos.obj" \
"pir.obj" \
"rxtx_uart.obj" \
"sensor_fusion.obj" \
"syscfg/ti_drivers_config.obj" \
"ultrasonic.obj" 

GEN_MISC_FILES__QUOTED += \
"syscfg/ti_drivers_config.h" \
"syscfg/syscfg_c.rov.xs" 

C_DEPS__QUOTED += \
"buzzer.d" \
"buzzer_thread.d" \
"led.d" \
"main_thread.d" \
"main_tirtos.d" \
"pir.d" \
"rxtx_uart.d" \
"sensor_fusion.d" \
"syscfg/ti_drivers_config.d" \
"ultrasonic.d" 

GEN_FILES__QUOTED += \
"syscfg/ti_drivers_config.c" 

C_SRCS__QUOTED += \
"../buzzer.c" \
"../buzzer_thread.c" \
"../led.c" \
"../main_thread.c" \
"../main_tirtos.c" \
"../pir.c" \
"../rxtx_uart.c" \
"../sensor_fusion.c" \
"./syscfg/ti_drivers_config.c" \
"../ultrasonic.c" 

SYSCFG_SRCS__QUOTED += \
"../uartecho.syscfg" 


