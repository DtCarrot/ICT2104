#include <stdio.h>
#include "esp_system.h"
#include "nvs_flash.h"
#include "esp_log.h"
#include "nvs.h"
#define STORAGE_NAMESPACE "storage"

nvs_handle_t esp_nvs_handle;
esp_err_t err;

esp_err_t nvs_init() {
    return ESP_OK;
}

int32_t get_image_quality() {
    // Open
    err = nvs_open(STORAGE_NAMESPACE, NVS_READWRITE, &esp_nvs_handle);
    if (err != ESP_OK) return 0;
    // Read
    int32_t image_quality = 0; // value will default to 0, if not set yet in NVS
    err = nvs_get_i32(esp_nvs_handle, "image_quality", &image_quality);
    ESP_LOGI("NVS", "Image Quality: %d", image_quality);
    if (err != ESP_OK && err != ESP_ERR_NVS_NOT_FOUND) return 0;
    nvs_close(esp_nvs_handle);
    // ESP_LOGI(RX_TASK_TAG, "Message header found with data %s", message_header);
    return image_quality;
}

esp_err_t set_image_quality(int32_t image_quality) {

    // Open
    err = nvs_open(STORAGE_NAMESPACE, NVS_READWRITE, &esp_nvs_handle);
    if (err != ESP_OK) return err;

    err = nvs_set_i32(esp_nvs_handle, "image_quality", image_quality);
    ESP_LOGI("NVS", "Setting Image Quality: %d", image_quality);
    if (err != ESP_OK) return err;
    // Commit

    err = nvs_commit(esp_nvs_handle);
    if (err != ESP_OK) return err;
    nvs_close(esp_nvs_handle);
    return ESP_OK;

}
