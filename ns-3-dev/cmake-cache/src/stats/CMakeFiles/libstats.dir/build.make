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
include src/stats/CMakeFiles/libstats.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/stats/CMakeFiles/libstats.dir/compiler_depend.make

# Include the progress variables for this target.
include src/stats/CMakeFiles/libstats.dir/progress.make

# Include the compile flags for this target's objects.
include src/stats/CMakeFiles/libstats.dir/flags.make

# Object files for target libstats
libstats_OBJECTS =

# External object files for target libstats
libstats_EXTERNAL_OBJECTS = \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/sqlite-data-output.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/sqlite-output.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/helper/file-helper.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/helper/gnuplot-helper.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/boolean-probe.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/basic-data-calculators.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/data-calculator.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/data-collection-object.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/data-collector.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/data-output-interface.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/double-probe.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/file-aggregator.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/get-wildcard-matches.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/gnuplot-aggregator.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/gnuplot.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/histogram.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/omnet-data-output.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/probe.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/time-data-calculators.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/time-probe.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/time-series-adaptor.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/uinteger-16-probe.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/uinteger-32-probe.cc.o" \
"/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats-obj.dir/model/uinteger-8-probe.cc.o"

../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/sqlite-data-output.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/sqlite-output.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/helper/file-helper.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/helper/gnuplot-helper.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/boolean-probe.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/basic-data-calculators.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/data-calculator.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/data-collection-object.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/data-collector.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/data-output-interface.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/double-probe.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/file-aggregator.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/get-wildcard-matches.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/gnuplot-aggregator.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/gnuplot.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/histogram.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/omnet-data-output.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/probe.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/time-data-calculators.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/time-probe.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/time-series-adaptor.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/uinteger-16-probe.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/uinteger-32-probe.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats-obj.dir/model/uinteger-8-probe.cc.o
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats.dir/build.make
../build/lib/libns3.42-stats-default.so: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/lib/libns3.42-stats-default.so: src/stats/CMakeFiles/libstats.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX shared library ../../../build/lib/libns3.42-stats-default.so"
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libstats.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/stats/CMakeFiles/libstats.dir/build: ../build/lib/libns3.42-stats-default.so
.PHONY : src/stats/CMakeFiles/libstats.dir/build

src/stats/CMakeFiles/libstats.dir/clean:
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats && $(CMAKE_COMMAND) -P CMakeFiles/libstats.dir/cmake_clean.cmake
.PHONY : src/stats/CMakeFiles/libstats.dir/clean

src/stats/CMakeFiles/libstats.dir/depend:
	cd /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/src/stats /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats /mnt/d/Downloads/BTP-D2D-Networks/ns-3-dev/cmake-cache/src/stats/CMakeFiles/libstats.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/stats/CMakeFiles/libstats.dir/depend

