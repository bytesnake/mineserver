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
include plugins/CMakeFiles/crapMobs.dir/depend.make

# Include the progress variables for this target.
include plugins/CMakeFiles/crapMobs.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/CMakeFiles/crapMobs.dir/flags.make

plugins/CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.o: plugins/CMakeFiles/crapMobs.dir/flags.make
plugins/CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.o: plugins/crapMobs/crapMobs.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/lorenz/mineserver/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object plugins/CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.o"
	cd /home/lorenz/mineserver/plugins && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.o -c /home/lorenz/mineserver/plugins/crapMobs/crapMobs.cpp

plugins/CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.i"
	cd /home/lorenz/mineserver/plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/lorenz/mineserver/plugins/crapMobs/crapMobs.cpp > CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.i

plugins/CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.s"
	cd /home/lorenz/mineserver/plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/lorenz/mineserver/plugins/crapMobs/crapMobs.cpp -o CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.s

plugins/CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.o.requires:
.PHONY : plugins/CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.o.requires

plugins/CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.o.provides: plugins/CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.o.requires
	$(MAKE) -f plugins/CMakeFiles/crapMobs.dir/build.make plugins/CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.o.provides.build
.PHONY : plugins/CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.o.provides

plugins/CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.o.provides.build: plugins/CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.o

# Object files for target crapMobs
crapMobs_OBJECTS = \
"CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.o"

# External object files for target crapMobs
crapMobs_EXTERNAL_OBJECTS =

plugins/bin/crapMobs.so: plugins/CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.o
plugins/bin/crapMobs.so: plugins/CMakeFiles/crapMobs.dir/build.make
plugins/bin/crapMobs.so: plugins/CMakeFiles/crapMobs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library bin/crapMobs.so"
	cd /home/lorenz/mineserver/plugins && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/crapMobs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/CMakeFiles/crapMobs.dir/build: plugins/bin/crapMobs.so
.PHONY : plugins/CMakeFiles/crapMobs.dir/build

plugins/CMakeFiles/crapMobs.dir/requires: plugins/CMakeFiles/crapMobs.dir/crapMobs/crapMobs.cpp.o.requires
.PHONY : plugins/CMakeFiles/crapMobs.dir/requires

plugins/CMakeFiles/crapMobs.dir/clean:
	cd /home/lorenz/mineserver/plugins && $(CMAKE_COMMAND) -P CMakeFiles/crapMobs.dir/cmake_clean.cmake
.PHONY : plugins/CMakeFiles/crapMobs.dir/clean

plugins/CMakeFiles/crapMobs.dir/depend:
	cd /home/lorenz/mineserver && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lorenz/mineserver /home/lorenz/mineserver/plugins /home/lorenz/mineserver /home/lorenz/mineserver/plugins /home/lorenz/mineserver/plugins/CMakeFiles/crapMobs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/CMakeFiles/crapMobs.dir/depend
