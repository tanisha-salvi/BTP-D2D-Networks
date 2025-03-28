# CMake generated Testfile for 
# Source directory: /mnt/d/Downloads/ns-3-dev/src/fd-net-device
# Build directory: /mnt/d/Downloads/ns-3-dev/cmake-cache/src/fd-net-device
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ctest-raw-sock-creator "ns3.42-raw-sock-creator-default")
set_tests_properties(ctest-raw-sock-creator PROPERTIES  WORKING_DIRECTORY "/mnt/d/Downloads/ns-3-dev/build/src/fd-net-device/" _BACKTRACE_TRIPLES "/mnt/d/Downloads/ns-3-dev/build-support/custom-modules/ns3-executables.cmake;47;add_test;/mnt/d/Downloads/ns-3-dev/build-support/custom-modules/ns3-executables.cmake;140;set_runtime_outputdirectory;/mnt/d/Downloads/ns-3-dev/src/fd-net-device/CMakeLists.txt;156;build_exec;/mnt/d/Downloads/ns-3-dev/src/fd-net-device/CMakeLists.txt;0;")
add_test(ctest-tap-device-creator "ns3.42-tap-device-creator-default")
set_tests_properties(ctest-tap-device-creator PROPERTIES  WORKING_DIRECTORY "/mnt/d/Downloads/ns-3-dev/build/src/fd-net-device/" _BACKTRACE_TRIPLES "/mnt/d/Downloads/ns-3-dev/build-support/custom-modules/ns3-executables.cmake;47;add_test;/mnt/d/Downloads/ns-3-dev/build-support/custom-modules/ns3-executables.cmake;140;set_runtime_outputdirectory;/mnt/d/Downloads/ns-3-dev/src/fd-net-device/CMakeLists.txt;194;build_exec;/mnt/d/Downloads/ns-3-dev/src/fd-net-device/CMakeLists.txt;0;")
subdirs("examples")
