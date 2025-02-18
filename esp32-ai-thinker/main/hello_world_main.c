#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "esp_log.h"
// #include "driver/uart.h"
// #include "string.h"
// #include "driver/gpio.h"
#include "esp_camera.h"

//WROVER-KIT PIN Map
#define CAM_PIN_PWDN    32 //power down is not used
#define CAM_PIN_RESET   -1 //software reset will be performed
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

const char* TAG = "TEST";

static camera_config_t camera_config = {
    // .pin_pwdn  = CAM_PIN_PWDN,
    .pin_pwdn  = CAM_PIN_PWDN,
    .pin_reset = CAM_PIN_RESET,
    .pin_xclk = CAM_PIN_XCLK,
    .pin_sscb_sda = CAM_PIN_SIOD,
    .pin_sscb_scl = CAM_PIN_SIOC,
    // .pin_d7 = CAM_PIN_D9,
    // .pin_d6 = CAM_PIN_D8,
    // .pin_d5 = CAM_PIN_D7,
    // .pin_d4 = CAM_PIN_D6,
    // .pin_d3 = CAM_PIN_D5,
    // .pin_d2 = CAM_PIN_D4,
    // .pin_d1 = CAM_PIN_D3,
    // .pin_d0 = CAM_PIN_D2,
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

    //XCLK 20MHz or 10MHz for OV2640 double FPS (Experimental)
    .xclk_freq_hz = 20000000,
    .ledc_timer = LEDC_TIMER_0,
    .ledc_channel = LEDC_CHANNEL_0,

    // .pixel_format = PIXFORMAT_JPEG,//YUV422,GRAYSCALE,RGB565,JPEG
    // .frame_size = FRAMESIZE_SVGA,//QQVGA-QXGA Do not use sizes above QVGA when not JPEG

    // .jpeg_quality = 10, //0-63 lower number means higher quality
    // .fb_count = 2 //if more than one, i2s runs in continuous mode. Use only with JPEG
    .pixel_format = PIXFORMAT_JPEG,//YUV422,GRAYSCALE,RGB565,JPEG
    .frame_size = FRAMESIZE_UXGA,//QQVGA-QXGA Do not use sizes above QVGA when not JPEG

    .jpeg_quality = 12, //0-63 lower number means higher quality
    .fb_count = 1 //if more than one, i2s runs in continuous mode. Use only with JPEG

};

// esp_err_t camera_init();
// esp_err_t camera_capture();

esp_err_t main_camera_init(){
    // power up the camera if PWDN pin is defined
    // initialize the camera
    // gpio_config_t gpio_pwr_config;
    // gpio_pwr_config.pin_bit_mask = (1ULL << 32);
    // gpio_pwr_config.mode = GPIO_MODE_OUTPUT;
    // gpio_pwr_config.pull_down_en = GPIO_PULLDOWN_DISABLE;
    // gpio_pwr_config.pull_up_en = GPIO_PULLUP_DISABLE;
    // gpio_pwr_config.intr_type = GPIO_INTR_DISABLE;
    // gpio_config(&gpio_pwr_config);
    // gpio_set_level(32,0);
    // vTaskDelay(10/ portTICK_PERIOD_MS);
    // for (int i=0; i<100000;i++) {}
    ESP_LOGD(TAG, "Starting camera");
    
    //initialize the camera
    esp_err_t err = esp_camera_init(&camera_config);
    if (err != ESP_OK) {
        ESP_LOGD(TAG, "Camera Init Failed");
        return err;
    }

    return ESP_OK;
}

esp_err_t camera_capture(){
    //acquire a frame
    camera_fb_t * fb = esp_camera_fb_get();
    if (!fb) {
        ESP_LOGI(TAG, "Camera Capture Failed");
        return ESP_FAIL;
    }
    //replace this with your own function
    // process_image(fb->width, fb->height, fb->format, fb->buf, fb->len);
    ESP_LOGI(TAG, "Captured image");
  
    //return the frame buffer back to the driver for reuse
    esp_camera_fb_return(fb);
    return ESP_OK;
}

void app_main(void)
{

    vTaskDelay(10000 / portTICK_PERIOD_MS);
    main_camera_init();
    ESP_LOGI(TAG, "Capturing image now");
    // for (int i=0; i<10000; i++) {
    //     for (int j=0; j<10000; j++) {
    camera_capture();
    //     }
    // }
}