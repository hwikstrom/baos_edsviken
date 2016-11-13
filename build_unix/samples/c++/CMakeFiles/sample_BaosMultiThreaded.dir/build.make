# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/knx/baos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/knx/baos/build_unix

# Include any dependencies generated for this target.
include samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/depend.make

# Include the progress variables for this target.
include samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/progress.make

# Include the compile flags for this target's objects.
include samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/flags.make

samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.o: samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/flags.make
samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.o: ../samples/c++/BaosMultiThreaded.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/knx/baos/build_unix/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.o"
	cd /home/pi/knx/baos/build_unix/samples/c++ && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.o -c /home/pi/knx/baos/samples/c++/BaosMultiThreaded.cpp

samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.i"
	cd /home/pi/knx/baos/build_unix/samples/c++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/knx/baos/samples/c++/BaosMultiThreaded.cpp > CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.i

samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.s"
	cd /home/pi/knx/baos/build_unix/samples/c++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/knx/baos/samples/c++/BaosMultiThreaded.cpp -o CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.s

samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.o.requires:
.PHONY : samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.o.requires

samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.o.provides: samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.o.requires
	$(MAKE) -f samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/build.make samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.o.provides.build
.PHONY : samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.o.provides

samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.o.provides.build: samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.o

# Object files for target sample_BaosMultiThreaded
sample_BaosMultiThreaded_OBJECTS = \
"CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.o"

# External object files for target sample_BaosMultiThreaded
sample_BaosMultiThreaded_EXTERNAL_OBJECTS =

bin/sample_BaosMultiThreaded: samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.o
bin/sample_BaosMultiThreaded: samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/build.make
bin/sample_BaosMultiThreaded: lib/libkdriveBAOS.a
bin/sample_BaosMultiThreaded: lib/libPocoNet.a
bin/sample_BaosMultiThreaded: lib/libPocoFoundation.a
bin/sample_BaosMultiThreaded: samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/sample_BaosMultiThreaded"
	cd /home/pi/knx/baos/build_unix/samples/c++ && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample_BaosMultiThreaded.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/build: bin/sample_BaosMultiThreaded
.PHONY : samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/build

samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/requires: samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/BaosMultiThreaded.cpp.o.requires
.PHONY : samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/requires

samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/clean:
	cd /home/pi/knx/baos/build_unix/samples/c++ && $(CMAKE_COMMAND) -P CMakeFiles/sample_BaosMultiThreaded.dir/cmake_clean.cmake
.PHONY : samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/clean

samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/depend:
	cd /home/pi/knx/baos/build_unix && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/knx/baos /home/pi/knx/baos/samples/c++ /home/pi/knx/baos/build_unix /home/pi/knx/baos/build_unix/samples/c++ /home/pi/knx/baos/build_unix/samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/c++/CMakeFiles/sample_BaosMultiThreaded.dir/depend

