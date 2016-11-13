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
include samples/c++/CMakeFiles/sample_BaosServerItem.dir/depend.make

# Include the progress variables for this target.
include samples/c++/CMakeFiles/sample_BaosServerItem.dir/progress.make

# Include the compile flags for this target's objects.
include samples/c++/CMakeFiles/sample_BaosServerItem.dir/flags.make

samples/c++/CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.o: samples/c++/CMakeFiles/sample_BaosServerItem.dir/flags.make
samples/c++/CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.o: ../samples/c++/BaosServerItem.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/knx/baos/build_unix/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object samples/c++/CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.o"
	cd /home/pi/knx/baos/build_unix/samples/c++ && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.o -c /home/pi/knx/baos/samples/c++/BaosServerItem.cpp

samples/c++/CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.i"
	cd /home/pi/knx/baos/build_unix/samples/c++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/knx/baos/samples/c++/BaosServerItem.cpp > CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.i

samples/c++/CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.s"
	cd /home/pi/knx/baos/build_unix/samples/c++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/knx/baos/samples/c++/BaosServerItem.cpp -o CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.s

samples/c++/CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.o.requires:
.PHONY : samples/c++/CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.o.requires

samples/c++/CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.o.provides: samples/c++/CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.o.requires
	$(MAKE) -f samples/c++/CMakeFiles/sample_BaosServerItem.dir/build.make samples/c++/CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.o.provides.build
.PHONY : samples/c++/CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.o.provides

samples/c++/CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.o.provides.build: samples/c++/CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.o

# Object files for target sample_BaosServerItem
sample_BaosServerItem_OBJECTS = \
"CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.o"

# External object files for target sample_BaosServerItem
sample_BaosServerItem_EXTERNAL_OBJECTS =

bin/sample_BaosServerItem: samples/c++/CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.o
bin/sample_BaosServerItem: samples/c++/CMakeFiles/sample_BaosServerItem.dir/build.make
bin/sample_BaosServerItem: lib/libkdriveBAOS.a
bin/sample_BaosServerItem: lib/libPocoNet.a
bin/sample_BaosServerItem: lib/libPocoFoundation.a
bin/sample_BaosServerItem: samples/c++/CMakeFiles/sample_BaosServerItem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/sample_BaosServerItem"
	cd /home/pi/knx/baos/build_unix/samples/c++ && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample_BaosServerItem.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/c++/CMakeFiles/sample_BaosServerItem.dir/build: bin/sample_BaosServerItem
.PHONY : samples/c++/CMakeFiles/sample_BaosServerItem.dir/build

samples/c++/CMakeFiles/sample_BaosServerItem.dir/requires: samples/c++/CMakeFiles/sample_BaosServerItem.dir/BaosServerItem.cpp.o.requires
.PHONY : samples/c++/CMakeFiles/sample_BaosServerItem.dir/requires

samples/c++/CMakeFiles/sample_BaosServerItem.dir/clean:
	cd /home/pi/knx/baos/build_unix/samples/c++ && $(CMAKE_COMMAND) -P CMakeFiles/sample_BaosServerItem.dir/cmake_clean.cmake
.PHONY : samples/c++/CMakeFiles/sample_BaosServerItem.dir/clean

samples/c++/CMakeFiles/sample_BaosServerItem.dir/depend:
	cd /home/pi/knx/baos/build_unix && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/knx/baos /home/pi/knx/baos/samples/c++ /home/pi/knx/baos/build_unix /home/pi/knx/baos/build_unix/samples/c++ /home/pi/knx/baos/build_unix/samples/c++/CMakeFiles/sample_BaosServerItem.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/c++/CMakeFiles/sample_BaosServerItem.dir/depend

