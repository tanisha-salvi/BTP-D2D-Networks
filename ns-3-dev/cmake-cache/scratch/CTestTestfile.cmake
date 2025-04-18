# CMake generated Testfile for 
# Source directory: /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/scratch
# Build directory: /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/scratch
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ctest-scratch_scratch-simulator "ns3.42-scratch-simulator-default")
set_tests_properties(ctest-scratch_scratch-simulator PROPERTIES  WORKING_DIRECTORY "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/build/scratch/" _BACKTRACE_TRIPLES "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/build-support/custom-modules/ns3-executables.cmake;47;add_test;/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/build-support/custom-modules/ns3-executables.cmake;140;set_runtime_outputdirectory;/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/scratch/CMakeLists.txt;67;build_exec;/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/scratch/CMakeLists.txt;79;create_scratch;/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/scratch/CMakeLists.txt;0;")
add_test(ctest-scratch_ues "ns3.42-ues-default")
set_tests_properties(ctest-scratch_ues PROPERTIES  WORKING_DIRECTORY "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/build/scratch/" _BACKTRACE_TRIPLES "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/build-support/custom-modules/ns3-executables.cmake;47;add_test;/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/build-support/custom-modules/ns3-executables.cmake;140;set_runtime_outputdirectory;/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/scratch/CMakeLists.txt;67;build_exec;/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/scratch/CMakeLists.txt;79;create_scratch;/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/scratch/CMakeLists.txt;0;")
add_test(ctest-scratch_subdir_scratch-subdir "ns3.42-scratch-subdir-default")
set_tests_properties(ctest-scratch_subdir_scratch-subdir PROPERTIES  WORKING_DIRECTORY "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/build/scratch/subdir/" _BACKTRACE_TRIPLES "/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/build-support/custom-modules/ns3-executables.cmake;47;add_test;/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/build-support/custom-modules/ns3-executables.cmake;140;set_runtime_outputdirectory;/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/scratch/CMakeLists.txt;67;build_exec;/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/scratch/CMakeLists.txt;109;create_scratch;/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/scratch/CMakeLists.txt;0;")
subdirs("nested-subdir")
