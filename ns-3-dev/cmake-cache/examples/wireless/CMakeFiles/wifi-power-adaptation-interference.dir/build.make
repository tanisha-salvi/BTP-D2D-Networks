# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache

# Include any dependencies generated for this target.
include examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/progress.make

# Include the compile flags for this target's objects.
include examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/flags.make

examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/wifi-power-adaptation-interference.cc.o: examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/flags.make
examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/wifi-power-adaptation-interference.cc.o: ../examples/wireless/wifi-power-adaptation-interference.cc
examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/wifi-power-adaptation-interference.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/wifi-power-adaptation-interference.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/wifi-power-adaptation-interference.cc.o: examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/wifi-power-adaptation-interference.cc.o"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/examples/wireless && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -MD -MT examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/wifi-power-adaptation-interference.cc.o -MF CMakeFiles/wifi-power-adaptation-interference.dir/wifi-power-adaptation-interference.cc.o.d -o CMakeFiles/wifi-power-adaptation-interference.dir/wifi-power-adaptation-interference.cc.o -c /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/examples/wireless/wifi-power-adaptation-interference.cc

examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/wifi-power-adaptation-interference.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wifi-power-adaptation-interference.dir/wifi-power-adaptation-interference.cc.i"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/examples/wireless && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/examples/wireless/wifi-power-adaptation-interference.cc > CMakeFiles/wifi-power-adaptation-interference.dir/wifi-power-adaptation-interference.cc.i

examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/wifi-power-adaptation-interference.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wifi-power-adaptation-interference.dir/wifi-power-adaptation-interference.cc.s"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/examples/wireless && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/examples/wireless/wifi-power-adaptation-interference.cc -o CMakeFiles/wifi-power-adaptation-interference.dir/wifi-power-adaptation-interference.cc.s

# Object files for target wifi-power-adaptation-interference
wifi__power__adaptation__interference_OBJECTS = \
"CMakeFiles/wifi-power-adaptation-interference.dir/wifi-power-adaptation-interference.cc.o"

# External object files for target wifi-power-adaptation-interference
wifi__power__adaptation__interference_EXTERNAL_OBJECTS =

../build/examples/wireless/ns3.42-wifi-power-adaptation-interference-default: examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/wifi-power-adaptation-interference.cc.o
../build/examples/wireless/ns3.42-wifi-power-adaptation-interference-default: examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/build.make
../build/examples/wireless/ns3.42-wifi-power-adaptation-interference-default: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/examples/wireless/ns3.42-wifi-power-adaptation-interference-default: examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../build/examples/wireless/ns3.42-wifi-power-adaptation-interference-default"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/examples/wireless && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wifi-power-adaptation-interference.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/build: ../build/examples/wireless/ns3.42-wifi-power-adaptation-interference-default
.PHONY : examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/build

examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/clean:
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/examples/wireless && $(CMAKE_COMMAND) -P CMakeFiles/wifi-power-adaptation-interference.dir/cmake_clean.cmake
.PHONY : examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/clean

examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/depend:
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/examples/wireless /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/examples/wireless /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/wireless/CMakeFiles/wifi-power-adaptation-interference.dir/depend

