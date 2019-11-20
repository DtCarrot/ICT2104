#include "esp_camera.h"

static size_t jpg_encode_stream(void *arg, size_t index, const void *data, size_t len);
esp_err_t jpg_httpd_handler(httpd_req_t *req);
esp_err_t main_camera_init();
esp_err_t start_capture();

