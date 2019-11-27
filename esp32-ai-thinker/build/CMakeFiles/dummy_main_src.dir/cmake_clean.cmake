file(REMOVE_RECURSE
  "hello-world.map"
  "CMakeFiles/dummy_main_src"
  "dummy_main_src.c"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/dummy_main_src.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
