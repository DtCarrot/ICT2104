#include <esp_wifi.h>
#include <esp_event.h>
#include <esp_log.h>
#include <esp_system.h>

// extern httpd_handle_t server;
void initialize_wifi(void *);
static esp_err_t event_handler(esp_event_handler_t event);
