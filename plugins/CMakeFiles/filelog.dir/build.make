# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lorenz/mineserver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lorenz/mineserver

# Include any dependencies generated for this target.
include plugins/CMakeFiles/filelog.dir/depend.make

# Include the progress variables for this target.
include plugins/CMakeFiles/filelog.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/CMakeFiles/filelog.dir/flags.make

plugins/CMakeFiles/filelog.dir/filelog/filelog.cpp.o: plugins/CMakeFiles/filelog.dir/flags.make
plugins/CMakeFiles/filelog.dir/filelog/filelog.cpp.o: plugins/filelog/filelog.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/lorenz/mineserver/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object plugins/CMakeFiles/filelog.dir/filelog/filelog.cpp.o"
	cd /home/lorenz/mineserver/plugins && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/filelog.dir/filelog/filelog.cpp.o -c /home/lorenz/mineserver/plugins/filelog/filelog.cpp

plugins/CMakeFiles/filelog.dir/filelog/filelog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/filelog.dir/filelog/filelog.cpp.i"
	cd /home/lorenz/mineserver/plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/lorenz/mineserver/plugins/filelog/filelog.cpp > CMakeFiles/filelog.dir/filelog/filelog.cpp.i

plugins/CMakeFiles/filelog.dir/filelog/filelog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/filelog.dir/filelog/filelog.cpp.s"
	cd /home/lorenz/mineserver/plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/lorenz/mineserver/plugins/filelog/filelog.cpp -o CMakeFiles/filelog.dir/filelog/filelog.cpp.s

plugins/CMakeFiles/filelog.dir/filelog/filelog.cpp.o.requires:
.PHONY : plugins/CMakeFiles/filelog.dir/filelog/filelog.cpp.o.requires

plugins/CMakeFiles/filelog.dir/filelog/filelog.cpp.o.provides: plugins/CMakeFiles/filelog.dir/filelog/filelog.cpp.o.requires
	$(MAKE) -f plugins/CMakeFiles/filelog.dir/build.make plugins/CMakeFiles/filelog.dir/filelog/filelog.cpp.o.provides.build
.PHONY : plugins/CMakeFiles/filelog.dir/filelog/filelog.cpp.o.provides

plugins/CMakeFiles/filelog.dir/filelog/filelog.cpp.o.provides.build: plugins/CMakeFiles/filelog.dir/filelog/filelog.cpp.o

# Object files for target filelog
filelog_OBJECTS = \
"CMakeFiles/filelog.dir/filelog/filelog.cpp.o"

# External object files for target filelog
filelog_EXTERNAL_OBJECTS =

plugins/bin/filelog.so: plugins/CMakeFiles/filelog.dir/filelog/filelog.cpp.o
plugins/bin/filelog.so: plugins/CMakeFiles/filelog.dir/build.make
plugins/bin/filelog.so: plugins/CMakeFiles/filelog.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library bin/filelog.so"
	cd /home/lorenz/mineserver/plugins && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/filelog.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/CMakeFiles/filelog.dir/build: plugins/bin/filelog.so
.PHONY : plugins/CMakeFiles/filelog.dir/build

plugins/CMakeFiles/filelog.dir/requires: plugins/CMakeFiles/filelog.dir/filelog/filelog.cpp.o.requires
.PHONY : plugins/CMakeFiles/filelog.dir/requires

plugins/CMakeFiles/filelog.dir/clean:
	cd /home/lorenz/mineserver/plugins && $(CMAKE_COMMAND) -P CMakeFiles/filelog.dir/cmake_clean.cmake
.PHONY : plugins/CMakeFiles/filelog.dir/clean

plugins/CMakeFiles/filelog.dir/depend:
	cd /home/lorenz/mineserver && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lorenz/mineserver /home/lorenz/mineserver/plugins /home/lorenz/mineserver /home/lorenz/mineserver/plugins /home/lorenz/mineserver/plugins/CMakeFiles/filelog.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/CMakeFiles/filelog.dir/depend

