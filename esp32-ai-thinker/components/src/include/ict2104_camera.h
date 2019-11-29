/*
 * ict2104_camera.h
 *
 * Header file used to define the methods
 * required for initializing the camera,
 * starting the image capture and sending image
 * data to ESP32-CAM
 *
 *
 *
 */
#include "esp_camera.h"
#include <esp_http_server.h>
#include "esp_http_client.h"

esp_err_t _http_event_handler(esp_http_client_event_t *evt);
/*
 * Main method used to initialize the camera pins,
 * configuring the camera settings 
 * and checking if camera successfully initialized
 *
 * @returns esp_err_t if the camera failed to initialize 
 *
 */
esp_err_t main_camera_init();



/*
 * Method used to reset the camera
 *
 *
 */
void reset_camera();

/*
 * Method to start the process of capturing image
 * frame
 *
 * Note: main_camera_init() must be called first 
 *
 *
 */
esp_err_t start_capture();

/*
 *
 * Getter / Setter method used to get the current camera status
 *
 *
 */
void toggle_camera_status(uint8_t status);
uint8_t get_camera_status();

