file(REMOVE_RECURSE
  "../../../build/lib/libns3.42-nr-prose-default.pdb"
  "../../../build/lib/libns3.42-nr-prose-default.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libnr-prose.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
