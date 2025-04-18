# CMake generated Testfile for 
# Source directory: /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev
# Build directory: /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ctest-stdlib_pch_exec "ns3.42-stdlib_pch_exec-default")
set_tests_properties(ctest-stdlib_pch_exec PROPERTIES  WORKING_DIRECTORY "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/" _BACKTRACE_TRIPLES "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/build-support/custom-modules/ns3-executables.cmake;47;add_test;/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/build-support/macros-and-definitions.cmake;1312;set_runtime_outputdirectory;/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/CMakeLists.txt;149;process_options;/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/CMakeLists.txt;0;")
subdirs("contrib/nr")
subdirs("contrib/nr-prose")
subdirs("src")
subdirs("examples")
subdirs("scratch")
subdirs("utils")
