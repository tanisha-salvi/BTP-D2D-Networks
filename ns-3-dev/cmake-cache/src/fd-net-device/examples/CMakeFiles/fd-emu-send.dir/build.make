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
include src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/compiler_depend.make

# Include the progress variables for this target.
include src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/progress.make

# Include the compile flags for this target's objects.
include src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/flags.make

src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/fd-emu-send.cc.o: src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/flags.make
src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/fd-emu-send.cc.o: ../src/fd-net-device/examples/fd-emu-send.cc
src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/fd-emu-send.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/fd-emu-send.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/fd-emu-send.cc.o: src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/fd-emu-send.cc.o"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/fd-net-device/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -MD -MT src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/fd-emu-send.cc.o -MF CMakeFiles/fd-emu-send.dir/fd-emu-send.cc.o.d -o CMakeFiles/fd-emu-send.dir/fd-emu-send.cc.o -c /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/fd-net-device/examples/fd-emu-send.cc

src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/fd-emu-send.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fd-emu-send.dir/fd-emu-send.cc.i"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/fd-net-device/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/fd-net-device/examples/fd-emu-send.cc > CMakeFiles/fd-emu-send.dir/fd-emu-send.cc.i

src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/fd-emu-send.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fd-emu-send.dir/fd-emu-send.cc.s"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/fd-net-device/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/fd-net-device/examples/fd-emu-send.cc -o CMakeFiles/fd-emu-send.dir/fd-emu-send.cc.s

# Object files for target fd-emu-send
fd__emu__send_OBJECTS = \
"CMakeFiles/fd-emu-send.dir/fd-emu-send.cc.o"

# External object files for target fd-emu-send
fd__emu__send_EXTERNAL_OBJECTS =

../build/src/fd-net-device/examples/ns3.42-fd-emu-send-default: src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/fd-emu-send.cc.o
../build/src/fd-net-device/examples/ns3.42-fd-emu-send-default: src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/build.make
../build/src/fd-net-device/examples/ns3.42-fd-emu-send-default: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/src/fd-net-device/examples/ns3.42-fd-emu-send-default: src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/fd-net-device/examples/ns3.42-fd-emu-send-default"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/fd-net-device/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fd-emu-send.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/build: ../build/src/fd-net-device/examples/ns3.42-fd-emu-send-default
.PHONY : src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/build

src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/clean:
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/fd-net-device/examples && $(CMAKE_COMMAND) -P CMakeFiles/fd-emu-send.dir/cmake_clean.cmake
.PHONY : src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/clean

src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/depend:
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/fd-net-device/examples /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/fd-net-device/examples /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/fd-net-device/examples/CMakeFiles/fd-emu-send.dir/depend

