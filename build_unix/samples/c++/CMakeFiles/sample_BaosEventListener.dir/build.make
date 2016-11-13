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
include samples/c++/CMakeFiles/sample_BaosEventListener.dir/depend.make

# Include the progress variables for this target.
include samples/c++/CMakeFiles/sample_BaosEventListener.dir/progress.make

# Include the compile flags for this target's objects.
include samples/c++/CMakeFiles/sample_BaosEventListener.dir/flags.make

samples/c++/CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.o: samples/c++/CMakeFiles/sample_BaosEventListener.dir/flags.make
samples/c++/CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.o: ../samples/c++/BaosEventListener.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/knx/baos/build_unix/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object samples/c++/CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.o"
	cd /home/pi/knx/baos/build_unix/samples/c++ && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.o -c /home/pi/knx/baos/samples/c++/BaosEventListener.cpp

samples/c++/CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.i"
	cd /home/pi/knx/baos/build_unix/samples/c++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/knx/baos/samples/c++/BaosEventListener.cpp > CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.i

samples/c++/CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.s"
	cd /home/pi/knx/baos/build_unix/samples/c++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/knx/baos/samples/c++/BaosEventListener.cpp -o CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.s

samples/c++/CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.o.requires:
.PHONY : samples/c++/CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.o.requires

samples/c++/CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.o.provides: samples/c++/CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.o.requires
	$(MAKE) -f samples/c++/CMakeFiles/sample_BaosEventListener.dir/build.make samples/c++/CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.o.provides.build
.PHONY : samples/c++/CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.o.provides

samples/c++/CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.o.provides.build: samples/c++/CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.o

# Object files for target sample_BaosEventListener
sample_BaosEventListener_OBJECTS = \
"CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.o"

# External object files for target sample_BaosEventListener
sample_BaosEventListener_EXTERNAL_OBJECTS =

bin/sample_BaosEventListener: samples/c++/CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.o
bin/sample_BaosEventListener: samples/c++/CMakeFiles/sample_BaosEventListener.dir/build.make
bin/sample_BaosEventListener: lib/libkdriveBAOS.a
bin/sample_BaosEventListener: lib/libPocoNet.a
bin/sample_BaosEventListener: lib/libPocoFoundation.a
bin/sample_BaosEventListener: samples/c++/CMakeFiles/sample_BaosEventListener.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/sample_BaosEventListener"
	cd /home/pi/knx/baos/build_unix/samples/c++ && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample_BaosEventListener.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/c++/CMakeFiles/sample_BaosEventListener.dir/build: bin/sample_BaosEventListener
.PHONY : samples/c++/CMakeFiles/sample_BaosEventListener.dir/build

samples/c++/CMakeFiles/sample_BaosEventListener.dir/requires: samples/c++/CMakeFiles/sample_BaosEventListener.dir/BaosEventListener.cpp.o.requires
.PHONY : samples/c++/CMakeFiles/sample_BaosEventListener.dir/requires

samples/c++/CMakeFiles/sample_BaosEventListener.dir/clean:
	cd /home/pi/knx/baos/build_unix/samples/c++ && $(CMAKE_COMMAND) -P CMakeFiles/sample_BaosEventListener.dir/cmake_clean.cmake
.PHONY : samples/c++/CMakeFiles/sample_BaosEventListener.dir/clean

samples/c++/CMakeFiles/sample_BaosEventListener.dir/depend:
	cd /home/pi/knx/baos/build_unix && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/knx/baos /home/pi/knx/baos/samples/c++ /home/pi/knx/baos/build_unix /home/pi/knx/baos/build_unix/samples/c++ /home/pi/knx/baos/build_unix/samples/c++/CMakeFiles/sample_BaosEventListener.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/c++/CMakeFiles/sample_BaosEventListener.dir/depend
