# MSP432 Smart Sensor Module

This Module have been designed to take in sensor readings from both Ultrasonic and PIR sensor and perform sensor fusion
to detect for any potential intruder. Based on the input, it shall trigger a buzzer alert and send a trigger message over UART to trigger recording.


# Threads

In this module, there shall be two primary threads that will be launched.

## UART thread

Receives and sends UART message to ESP32-CAM.

## Sensor thread

Receives reading on Ultrasonic and PIR sensor and triggers buzzer

## Sensor Schematics

### UART to ESP32-CAM

TX - P1.3
RX - P1.2 

### Ultrasonic Sensor GPIO 

Trigger - P2.7
Echo    - P2.6

### PIR Sensor GPIO

Echo    - P1.5

### Buzzer GPIO

OUT     - P1.7
