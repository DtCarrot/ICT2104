file(REMOVE_RECURSE
  "../config/sdkconfig.h"
  "../config/sdkconfig.cmake"
  "../bootloader/bootloader.elf"
  "../bootloader/bootloader.bin"
  "../bootloader/bootloader.map"
  "CMakeFiles/app"
  "../hello-world.bin"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/app.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
