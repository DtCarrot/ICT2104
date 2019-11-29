/*
 * ict2104_wifi.h
 *
 * Header file used to manage WiFi connectivity
 *
 *
 *
 */
#include <esp_wifi.h>
#include <esp_event.h>
#include <esp_log.h>
#include <esp_system.h>

static esp_err_t event_handler(esp_event_handler_t event);

/*
 *  Method used to initialize wifi connectivity
 *
 *
 */
void initialize_wifi(void *);
