set(COMPONENT_SRCS
  driver/camera.c
  driver/sccb.c
  driver/sensor.c
  driver/twi.c
  driver/xclk.c
  sensors/ov2640.c
  sensors/ov3660.c
  sensors/ov7725.c
  conversions/yuv.c
  conversions/to_jpg.cpp
  conversions/to_bmp.c
  conversions/jpge.cpp
  conversions/esp_jpg_decode.c
  src/ict2104_camera.c
  src/ict2104_uart.c
  src/ict2104_wifi.c
  src/ict2104_mqtt.c
  src/ict2104_nvs.c
  esp-face/face_detection/fd_forward.c
  esp-face/face_recognition/fr_forward.c
  esp-face/face_recognition/fr_flash.c
  esp-face/image_util/image_util.c

  )

set(COMPONENT_ADD_INCLUDEDIRS
  driver/include
  conversions/include
  src/include
  esp-face/face_detection/include
  esp-face/face_recognition/include
  esp-face/face_recognition/include
  esp-face/image_util/include
  esp-face/lib/include



  )

set(COMPONENT_PRIV_INCLUDEDIRS
  driver/private_include
  sensors/private_include
  conversions/private_include
  )

set(COMPONENT_REQUIRES driver )
set(COMPONENT_PRIV_REQUIRES spi_flash freertos mqtt esp_http_server esp_http_client mbedtls nvs_flash)

register_component()
