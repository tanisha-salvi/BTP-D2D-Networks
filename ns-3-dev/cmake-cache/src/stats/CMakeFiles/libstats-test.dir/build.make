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
include src/stats/CMakeFiles/libstats-test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/stats/CMakeFiles/libstats-test.dir/compiler_depend.make

# Include the progress variables for this target.
include src/stats/CMakeFiles/libstats-test.dir/progress.make

# Include the compile flags for this target's objects.
include src/stats/CMakeFiles/libstats-test.dir/flags.make

src/stats/CMakeFiles/libstats-test.dir/test/average-test-suite.cc.o: src/stats/CMakeFiles/libstats-test.dir/flags.make
src/stats/CMakeFiles/libstats-test.dir/test/average-test-suite.cc.o: ../src/stats/test/average-test-suite.cc
src/stats/CMakeFiles/libstats-test.dir/test/average-test-suite.cc.o: CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx
src/stats/CMakeFiles/libstats-test.dir/test/average-test-suite.cc.o: CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx.gch
src/stats/CMakeFiles/libstats-test.dir/test/average-test-suite.cc.o: src/stats/CMakeFiles/libstats-test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/stats/CMakeFiles/libstats-test.dir/test/average-test-suite.cc.o"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx -MD -MT src/stats/CMakeFiles/libstats-test.dir/test/average-test-suite.cc.o -MF CMakeFiles/libstats-test.dir/test/average-test-suite.cc.o.d -o CMakeFiles/libstats-test.dir/test/average-test-suite.cc.o -c /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/stats/test/average-test-suite.cc

src/stats/CMakeFiles/libstats-test.dir/test/average-test-suite.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libstats-test.dir/test/average-test-suite.cc.i"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx -E /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/stats/test/average-test-suite.cc > CMakeFiles/libstats-test.dir/test/average-test-suite.cc.i

src/stats/CMakeFiles/libstats-test.dir/test/average-test-suite.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libstats-test.dir/test/average-test-suite.cc.s"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx -S /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/stats/test/average-test-suite.cc -o CMakeFiles/libstats-test.dir/test/average-test-suite.cc.s

src/stats/CMakeFiles/libstats-test.dir/test/basic-data-calculators-test-suite.cc.o: src/stats/CMakeFiles/libstats-test.dir/flags.make
src/stats/CMakeFiles/libstats-test.dir/test/basic-data-calculators-test-suite.cc.o: ../src/stats/test/basic-data-calculators-test-suite.cc
src/stats/CMakeFiles/libstats-test.dir/test/basic-data-calculators-test-suite.cc.o: CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx
src/stats/CMakeFiles/libstats-test.dir/test/basic-data-calculators-test-suite.cc.o: CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx.gch
src/stats/CMakeFiles/libstats-test.dir/test/basic-data-calculators-test-suite.cc.o: src/stats/CMakeFiles/libstats-test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/stats/CMakeFiles/libstats-test.dir/test/basic-data-calculators-test-suite.cc.o"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx -MD -MT src/stats/CMakeFiles/libstats-test.dir/test/basic-data-calculators-test-suite.cc.o -MF CMakeFiles/libstats-test.dir/test/basic-data-calculators-test-suite.cc.o.d -o CMakeFiles/libstats-test.dir/test/basic-data-calculators-test-suite.cc.o -c /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/stats/test/basic-data-calculators-test-suite.cc

src/stats/CMakeFiles/libstats-test.dir/test/basic-data-calculators-test-suite.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libstats-test.dir/test/basic-data-calculators-test-suite.cc.i"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx -E /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/stats/test/basic-data-calculators-test-suite.cc > CMakeFiles/libstats-test.dir/test/basic-data-calculators-test-suite.cc.i

src/stats/CMakeFiles/libstats-test.dir/test/basic-data-calculators-test-suite.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libstats-test.dir/test/basic-data-calculators-test-suite.cc.s"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx -S /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/stats/test/basic-data-calculators-test-suite.cc -o CMakeFiles/libstats-test.dir/test/basic-data-calculators-test-suite.cc.s

src/stats/CMakeFiles/libstats-test.dir/test/double-probe-test-suite.cc.o: src/stats/CMakeFiles/libstats-test.dir/flags.make
src/stats/CMakeFiles/libstats-test.dir/test/double-probe-test-suite.cc.o: ../src/stats/test/double-probe-test-suite.cc
src/stats/CMakeFiles/libstats-test.dir/test/double-probe-test-suite.cc.o: CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx
src/stats/CMakeFiles/libstats-test.dir/test/double-probe-test-suite.cc.o: CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx.gch
src/stats/CMakeFiles/libstats-test.dir/test/double-probe-test-suite.cc.o: src/stats/CMakeFiles/libstats-test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/stats/CMakeFiles/libstats-test.dir/test/double-probe-test-suite.cc.o"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx -MD -MT src/stats/CMakeFiles/libstats-test.dir/test/double-probe-test-suite.cc.o -MF CMakeFiles/libstats-test.dir/test/double-probe-test-suite.cc.o.d -o CMakeFiles/libstats-test.dir/test/double-probe-test-suite.cc.o -c /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/stats/test/double-probe-test-suite.cc

src/stats/CMakeFiles/libstats-test.dir/test/double-probe-test-suite.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libstats-test.dir/test/double-probe-test-suite.cc.i"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx -E /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/stats/test/double-probe-test-suite.cc > CMakeFiles/libstats-test.dir/test/double-probe-test-suite.cc.i

src/stats/CMakeFiles/libstats-test.dir/test/double-probe-test-suite.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libstats-test.dir/test/double-probe-test-suite.cc.s"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx -S /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/stats/test/double-probe-test-suite.cc -o CMakeFiles/libstats-test.dir/test/double-probe-test-suite.cc.s

src/stats/CMakeFiles/libstats-test.dir/test/histogram-test-suite.cc.o: src/stats/CMakeFiles/libstats-test.dir/flags.make
src/stats/CMakeFiles/libstats-test.dir/test/histogram-test-suite.cc.o: ../src/stats/test/histogram-test-suite.cc
src/stats/CMakeFiles/libstats-test.dir/test/histogram-test-suite.cc.o: CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx
src/stats/CMakeFiles/libstats-test.dir/test/histogram-test-suite.cc.o: CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx.gch
src/stats/CMakeFiles/libstats-test.dir/test/histogram-test-suite.cc.o: src/stats/CMakeFiles/libstats-test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/stats/CMakeFiles/libstats-test.dir/test/histogram-test-suite.cc.o"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx -MD -MT src/stats/CMakeFiles/libstats-test.dir/test/histogram-test-suite.cc.o -MF CMakeFiles/libstats-test.dir/test/histogram-test-suite.cc.o.d -o CMakeFiles/libstats-test.dir/test/histogram-test-suite.cc.o -c /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/stats/test/histogram-test-suite.cc

src/stats/CMakeFiles/libstats-test.dir/test/histogram-test-suite.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libstats-test.dir/test/histogram-test-suite.cc.i"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx -E /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/stats/test/histogram-test-suite.cc > CMakeFiles/libstats-test.dir/test/histogram-test-suite.cc.i

src/stats/CMakeFiles/libstats-test.dir/test/histogram-test-suite.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libstats-test.dir/test/histogram-test-suite.cc.s"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch-default.dir/cmake_pch.hxx -S /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/stats/test/histogram-test-suite.cc -o CMakeFiles/libstats-test.dir/test/histogram-test-suite.cc.s

# Object files for target libstats-test
libstats__test_OBJECTS = \
"CMakeFiles/libstats-test.dir/test/average-test-suite.cc.o" \
"CMakeFiles/libstats-test.dir/test/basic-data-calculators-test-suite.cc.o" \
"CMakeFiles/libstats-test.dir/test/double-probe-test-suite.cc.o" \
"CMakeFiles/libstats-test.dir/test/histogram-test-suite.cc.o"

# External object files for target libstats-test
libstats__test_EXTERNAL_OBJECTS =

../build/lib/libns3.42-stats-test-default.so: src/stats/CMakeFiles/libstats-test.dir/test/average-test-suite.cc.o
../build/lib/libns3.42-stats-test-default.so: src/stats/CMakeFiles/libstats-test.dir/test/basic-data-calculators-test-suite.cc.o
../build/lib/libns3.42-stats-test-default.so: src/stats/CMakeFiles/libstats-test.dir/test/double-probe-test-suite.cc.o
../build/lib/libns3.42-stats-test-default.so: src/stats/CMakeFiles/libstats-test.dir/test/histogram-test-suite.cc.o
../build/lib/libns3.42-stats-test-default.so: src/stats/CMakeFiles/libstats-test.dir/build.make
../build/lib/libns3.42-stats-test-default.so: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/lib/libns3.42-stats-test-default.so: src/stats/CMakeFiles/libstats-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library ../../../build/lib/libns3.42-stats-test-default.so"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libstats-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/stats/CMakeFiles/libstats-test.dir/build: ../build/lib/libns3.42-stats-test-default.so
.PHONY : src/stats/CMakeFiles/libstats-test.dir/build

src/stats/CMakeFiles/libstats-test.dir/clean:
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats && $(CMAKE_COMMAND) -P CMakeFiles/libstats-test.dir/cmake_clean.cmake
.PHONY : src/stats/CMakeFiles/libstats-test.dir/clean

src/stats/CMakeFiles/libstats-test.dir/depend:
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/stats /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/stats/CMakeFiles/libstats-test.dir/depend

