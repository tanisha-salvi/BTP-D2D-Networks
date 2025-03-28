# CMake generated Testfile for 
# Source directory: /mnt/d/Downloads/ns-3-dev/src/tap-bridge
# Build directory: /mnt/d/Downloads/ns-3-dev/cmake-cache/src/tap-bridge
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ctest-tap-creator "ns3.42-tap-creator-default")
set_tests_properties(ctest-tap-creator PROPERTIES  WORKING_DIRECTORY "/mnt/d/Downloads/ns-3-dev/build/src/tap-bridge/" _BACKTRACE_TRIPLES "/mnt/d/Downloads/ns-3-dev/build-support/custom-modules/ns3-executables.cmake;47;add_test;/mnt/d/Downloads/ns-3-dev/build-support/custom-modules/ns3-executables.cmake;140;set_runtime_outputdirectory;/mnt/d/Downloads/ns-3-dev/src/tap-bridge/CMakeLists.txt;37;build_exec;/mnt/d/Downloads/ns-3-dev/src/tap-bridge/CMakeLists.txt;0;")
subdirs("examples")
