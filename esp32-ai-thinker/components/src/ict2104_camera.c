/*
 * ict2104_camera.c
 *
 * Source file used to implement the methods
 * required for initializing the camera,
 * starting the image capture and sending image
 * data to ESP32-CAM
 *
 *
 *
 */
#include <esp_log.h>
#include <esp_wifi.h>
#include <esp_http_server.h>
#include "esp_http_client.h"
#include "esp_tls.h"
#include "ict2104_camera.h"
#include "ict2104_nvs.h"
#include "mbedtls/base64.h"

/*
 *
 * Define camera pin used for ESP32-CAM
 *
 *
 */
#define CAM_PIN_PWDN    32 
#define CAM_PIN_RESET   -1 
#define CAM_PIN_XCLK    0
#define CAM_PIN_SIOD    26
#define CAM_PIN_SIOC    27
#define CAM_PIN_D7      35
#define CAM_PIN_D6      34
#define CAM_PIN_D5      39
#define CAM_PIN_D4      36
#define CAM_PIN_D3      21
#define CAM_PIN_D2      19
#define CAM_PIN_D1      18
#define CAM_PIN_D0      5
#define CAM_PIN_VSYNC   25
#define CAM_PIN_HREF    23
#define CAM_PIN_PCLK    22

static const char *TAG = "camera";

int img_quality;
int count = 0;
uint8_t camera_activated = 0;

typedef struct {
  httpd_req_t *req;
  size_t len;
} jpg_chunking_t;


/*
 *
 * Handle HTTP event 
 *
 * Currently used for debugging
 *
 */
esp_err_t _http_event_handler(esp_http_client_event_t *evt) {
  switch(evt->event_id) {
    case HTTP_EVENT_ERROR:
        ESP_LOGD(TAG, "HTTP_EVENT_ERROR");
        break;
    case HTTP_EVENT_ON_CONNECTED:
        ESP_LOGD(TAG, "HTTP_EVENT_ON_CONNECTED");
        break;
    case HTTP_EVENT_HEADER_SENT:
        ESP_LOGD(TAG, "HTTP_EVENT_HEADER_SENT");
        break;
    case HTTP_EVENT_ON_HEADER:
        ESP_LOGD(TAG, "HTTP_EVENT_ON_HEADER, key=%s, value=%s", evt->header_key, evt->header_value);
        break;
    case HTTP_EVENT_ON_DATA:
        ESP_LOGD(TAG, "HTTP_EVENT_ON_DATA, len=%d", evt->data_len);
        if (!esp_http_client_is_chunked_response(evt->client)) {
            // Write out data
            printf("%.*s", evt->data_len, (char*)evt->data);
        }

        break;
    case HTTP_EVENT_ON_FINISH:
        ESP_LOGD(TAG, "HTTP_EVENT_ON_FINISH");
        break;
    case HTTP_EVENT_DISCONNECTED:
        ESP_LOGI(TAG, "HTTP_EVENT_DISCONNECTED");
        int mbedtls_err = 0;
        esp_err_t err = esp_tls_get_and_clear_last_error(evt->data, &mbedtls_err, NULL);
        if (err != 0) {
            ESP_LOGI(TAG, "Last esp error code: 0x%x", err);
            ESP_LOGI(TAG, "Last mbedtls failure: 0x%x", mbedtls_err);
        }
        break;
  }
  return ESP_OK;
}

/*
 * Main method used to initialize the camera pins,
 * configuring the camera settings 
 * and checking if camera successfully initialized
 *
 * @returns esp_err_t if the camera failed to initialize 
 *
 */
esp_err_t main_camera_init() {
  img_quality = (int) get_image_quality();
  // Define the camera configuration
  // pins and image quality 
  static camera_config_t camera_config = {
      .pin_pwdn  = CAM_PIN_PWDN,
      .pin_reset = CAM_PIN_RESET,
      .pin_xclk = CAM_PIN_XCLK,
      .pin_sscb_sda = CAM_PIN_SIOD,
      .pin_sscb_scl = CAM_PIN_SIOC,
      .pin_d7 = CAM_PIN_D7,
      .pin_d6 = CAM_PIN_D6,
      .pin_d5 = CAM_PIN_D5,
      .pin_d4 = CAM_PIN_D4,
      .pin_d3 = CAM_PIN_D3,
      .pin_d2 = CAM_PIN_D2,
      .pin_d1 = CAM_PIN_D1,
      .pin_d0 = CAM_PIN_D0,
      .pin_vsync = CAM_PIN_VSYNC,
      .pin_href = CAM_PIN_HREF,
      .pin_pclk = CAM_PIN_PCLK,

      .xclk_freq_hz = 20000000,
      .ledc_timer = LEDC_TIMER_0,
      .ledc_channel = LEDC_CHANNEL_0,

      .pixel_format = PIXFORMAT_JPEG,//YUV422,GRAYSCALE,RGB565,JPEG
      .frame_size = FRAMESIZE_SVGA,//QQVGA-QXGA Do not use sizes above QVGA when not JPEG

      .jpeg_quality = 12, //0-63 lower number means higher quality
      .fb_count = 1 //if more than one, i2s runs in continuous mode. Use only with JPEG
  };

  // if the img quality flag is 0,
  // we use SVGA frame size 
  if(img_quality == 0) {
    camera_config.frame_size = FRAMESIZE_SVGA;

  } else {
    // if the img quality flag is 0,
    // we use VGA frame size which is lower resolution 
    // than FRAMESIZE_SVGA
    camera_config.frame_size = FRAMESIZE_VGA;
  }
  ESP_LOGD(TAG, "Starting camera");
  // Initialize the camera with configuration
  esp_err_t err = esp_camera_init(&camera_config);
  // Check if camera was initialized successfully
  if (err != ESP_OK)
  {
    ESP_LOGE(TAG, "Camera Init Failed");
    return err;
  }
  // set flag to indicate that camera is active
  toggle_camera_status(1);
  return ESP_OK;
}

/*
 * Method used to reset the camera.
 * Currently, it will be called after clicking
 * the change image quality in UI
 *
 * @TODO: To be refactored to split up logic to reset camera 
 * and changing of image quality.
 *
 *
 */
void reset_camera() {
  // Get the current image quality 
  uint8_t new_image_quality = get_image_quality();
  // Configure the image quality
  if(new_image_quality == 0) {
    new_image_quality++;
  } else {
    new_image_quality = 0;
  }
  // Update the image quality setting in nvs storage
  set_image_quality(new_image_quality);
  // Toggle the camera status to 0
  toggle_camera_status(0);
  // Deinitialize ESP-32 camera
  ESP_ERROR_CHECK(esp_camera_deinit());
  // Reinitialize the ESP-32 Camera
  ESP_ERROR_CHECK(main_camera_init());
}


/*
 * Method to start the process of capturing image
 * frame
 *
 * Note: main_camera_init() must be called first 
 *
 *
 */
esp_err_t start_capture() {

  // Continuously capture photo frame
  while(1) {

    camera_fb_t *fb = NULL;
    esp_err_t res = ESP_OK;
    size_t fb_len = 0;
    int64_t fr_start = esp_timer_get_time();

    // If the camera is inactive,
    // we sleep and wait for 2000ms 
    if(get_camera_status() == 0) {
      ESP_LOGI("Camera", "Camera undefined");
      // Delay by 2000ms before next request
      vTaskDelay(2000 / portTICK_PERIOD_MS);
      continue;
    }
    // Get the frame buffer from the ESP32 Camera
    fb = esp_camera_fb_get();
    // Check if the camera capture have been successful
    if (!fb)
    {
      ESP_LOGE(TAG, "Camera capture failed");
      // Might want to trigger mqtt to send an error message when capturing video frame
      return ESP_FAIL;
    }

    // Prepare the POST request to upload the frame buffer data
    // using HTTP.
    // Sends to the <remote ip>/upload with the buffer data
    esp_http_client_config_t config = {
        .url = "http://httpbin.org/get",
        .event_handler = _http_event_handler,
    };
    esp_http_client_handle_t client = esp_http_client_init(&config);

    // Set remote URL 
    esp_http_client_set_url(client, "http://192.168.43.210:8000/upload");
    // Set HTTP method -> Set post in our case
    esp_http_client_set_method(client, HTTP_METHOD_POST);
    // Set the post data which is the buffer data together with the buffer length
    esp_http_client_set_post_field(client, (const char *)fb->buf, fb->len);
    ESP_LOGI(TAG, "Size: %d", fb->len);
    // Set header content type
    esp_http_client_set_header(client, "Content-Type", "image/jpg");

    esp_err_t err = NULL;

    // Execute HTTP POST Request
    err = esp_http_client_perform(client);
    // Check whether there is any error in invoking http request.
    if (err == ESP_OK) {
      // Get http status code and length
      ESP_LOGI(TAG, "HTTP POST Status = %d, content_length = %d",
              esp_http_client_get_status_code(client),
              esp_http_client_get_content_length(client));
    } else {
      ESP_LOGE(TAG, "HTTP POST request failed: %s", esp_err_to_name(err));
    }
    // Clean up after sending each http message
    esp_http_client_cleanup(client);

    // Delay by 2000ms before next request
    vTaskDelay(2000 / portTICK_PERIOD_MS);

  }
  return ESP_OK;
}

/*
 *
 * Getter / Setter method used to get the current camera status
 *
 *
 */
void toggle_camera_status(uint8_t status) {
  camera_activated = status;
}

uint8_t get_camera_status() {
  return camera_activated;
}
