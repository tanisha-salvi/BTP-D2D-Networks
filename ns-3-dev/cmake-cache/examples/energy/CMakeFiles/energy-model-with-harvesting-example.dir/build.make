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
include examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/progress.make

# Include the compile flags for this target's objects.
include examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/flags.make

examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/energy-model-with-harvesting-example.cc.o: examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/flags.make
examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/energy-model-with-harvesting-example.cc.o: ../examples/energy/energy-model-with-harvesting-example.cc
examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/energy-model-with-harvesting-example.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/energy-model-with-harvesting-example.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/energy-model-with-harvesting-example.cc.o: examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/energy-model-with-harvesting-example.cc.o"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/examples/energy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -MD -MT examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/energy-model-with-harvesting-example.cc.o -MF CMakeFiles/energy-model-with-harvesting-example.dir/energy-model-with-harvesting-example.cc.o.d -o CMakeFiles/energy-model-with-harvesting-example.dir/energy-model-with-harvesting-example.cc.o -c /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/examples/energy/energy-model-with-harvesting-example.cc

examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/energy-model-with-harvesting-example.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/energy-model-with-harvesting-example.dir/energy-model-with-harvesting-example.cc.i"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/examples/energy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/examples/energy/energy-model-with-harvesting-example.cc > CMakeFiles/energy-model-with-harvesting-example.dir/energy-model-with-harvesting-example.cc.i

examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/energy-model-with-harvesting-example.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/energy-model-with-harvesting-example.dir/energy-model-with-harvesting-example.cc.s"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/examples/energy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/examples/energy/energy-model-with-harvesting-example.cc -o CMakeFiles/energy-model-with-harvesting-example.dir/energy-model-with-harvesting-example.cc.s

# Object files for target energy-model-with-harvesting-example
energy__model__with__harvesting__example_OBJECTS = \
"CMakeFiles/energy-model-with-harvesting-example.dir/energy-model-with-harvesting-example.cc.o"

# External object files for target energy-model-with-harvesting-example
energy__model__with__harvesting__example_EXTERNAL_OBJECTS =

../build/examples/energy/ns3.42-energy-model-with-harvesting-example-default: examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/energy-model-with-harvesting-example.cc.o
../build/examples/energy/ns3.42-energy-model-with-harvesting-example-default: examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/build.make
../build/examples/energy/ns3.42-energy-model-with-harvesting-example-default: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/examples/energy/ns3.42-energy-model-with-harvesting-example-default: examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../build/examples/energy/ns3.42-energy-model-with-harvesting-example-default"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/examples/energy && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/energy-model-with-harvesting-example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/build: ../build/examples/energy/ns3.42-energy-model-with-harvesting-example-default
.PHONY : examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/build

examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/clean:
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/examples/energy && $(CMAKE_COMMAND) -P CMakeFiles/energy-model-with-harvesting-example.dir/cmake_clean.cmake
.PHONY : examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/clean

examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/depend:
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/examples/energy /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/examples/energy /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/energy/CMakeFiles/energy-model-with-harvesting-example.dir/depend

