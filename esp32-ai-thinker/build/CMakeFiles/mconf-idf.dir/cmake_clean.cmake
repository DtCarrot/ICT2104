file(REMOVE_RECURSE
  "config/sdkconfig.h"
  "config/sdkconfig.cmake"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.bin"
  "bootloader/bootloader.map"
  "hello-world.bin"
  "hello-world.map"
  "project_elf_src.c"
  "CMakeFiles/mconf-idf"
  "CMakeFiles/mconf-idf-complete"
  "mconf-idf-prefix/src/mconf-idf-stamp/mconf-idf-install"
  "mconf-idf-prefix/src/mconf-idf-stamp/mconf-idf-mkdir"
  "mconf-idf-prefix/src/mconf-idf-stamp/mconf-idf-download"
  "mconf-idf-prefix/src/mconf-idf-stamp/mconf-idf-update"
  "mconf-idf-prefix/src/mconf-idf-stamp/mconf-idf-patch"
  "mconf-idf-prefix/src/mconf-idf-stamp/mconf-idf-configure"
  "mconf-idf-prefix/src/mconf-idf-stamp/mconf-idf-build"
  "kconfig_bin/mconf-idf"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/mconf-idf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
