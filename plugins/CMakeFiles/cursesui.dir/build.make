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
include plugins/CMakeFiles/cursesui.dir/depend.make

# Include the progress variables for this target.
include plugins/CMakeFiles/cursesui.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/CMakeFiles/cursesui.dir/flags.make

plugins/CMakeFiles/cursesui.dir/cursesui/screen.cpp.o: plugins/CMakeFiles/cursesui.dir/flags.make
plugins/CMakeFiles/cursesui.dir/cursesui/screen.cpp.o: plugins/cursesui/screen.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/lorenz/mineserver/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object plugins/CMakeFiles/cursesui.dir/cursesui/screen.cpp.o"
	cd /home/lorenz/mineserver/plugins && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cursesui.dir/cursesui/screen.cpp.o -c /home/lorenz/mineserver/plugins/cursesui/screen.cpp

plugins/CMakeFiles/cursesui.dir/cursesui/screen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cursesui.dir/cursesui/screen.cpp.i"
	cd /home/lorenz/mineserver/plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/lorenz/mineserver/plugins/cursesui/screen.cpp > CMakeFiles/cursesui.dir/cursesui/screen.cpp.i

plugins/CMakeFiles/cursesui.dir/cursesui/screen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cursesui.dir/cursesui/screen.cpp.s"
	cd /home/lorenz/mineserver/plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/lorenz/mineserver/plugins/cursesui/screen.cpp -o CMakeFiles/cursesui.dir/cursesui/screen.cpp.s

plugins/CMakeFiles/cursesui.dir/cursesui/screen.cpp.o.requires:
.PHONY : plugins/CMakeFiles/cursesui.dir/cursesui/screen.cpp.o.requires

plugins/CMakeFiles/cursesui.dir/cursesui/screen.cpp.o.provides: plugins/CMakeFiles/cursesui.dir/cursesui/screen.cpp.o.requires
	$(MAKE) -f plugins/CMakeFiles/cursesui.dir/build.make plugins/CMakeFiles/cursesui.dir/cursesui/screen.cpp.o.provides.build
.PHONY : plugins/CMakeFiles/cursesui.dir/cursesui/screen.cpp.o.provides

plugins/CMakeFiles/cursesui.dir/cursesui/screen.cpp.o.provides.build: plugins/CMakeFiles/cursesui.dir/cursesui/screen.cpp.o

# Object files for target cursesui
cursesui_OBJECTS = \
"CMakeFiles/cursesui.dir/cursesui/screen.cpp.o"

# External object files for target cursesui
cursesui_EXTERNAL_OBJECTS =

plugins/bin/cursesui.so: plugins/CMakeFiles/cursesui.dir/cursesui/screen.cpp.o
plugins/bin/cursesui.so: /usr/lib/libcurses.so
plugins/bin/cursesui.so: plugins/CMakeFiles/cursesui.dir/build.make
plugins/bin/cursesui.so: plugins/CMakeFiles/cursesui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library bin/cursesui.so"
	cd /home/lorenz/mineserver/plugins && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cursesui.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/CMakeFiles/cursesui.dir/build: plugins/bin/cursesui.so
.PHONY : plugins/CMakeFiles/cursesui.dir/build

plugins/CMakeFiles/cursesui.dir/requires: plugins/CMakeFiles/cursesui.dir/cursesui/screen.cpp.o.requires
.PHONY : plugins/CMakeFiles/cursesui.dir/requires

plugins/CMakeFiles/cursesui.dir/clean:
	cd /home/lorenz/mineserver/plugins && $(CMAKE_COMMAND) -P CMakeFiles/cursesui.dir/cmake_clean.cmake
.PHONY : plugins/CMakeFiles/cursesui.dir/clean

plugins/CMakeFiles/cursesui.dir/depend:
	cd /home/lorenz/mineserver && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lorenz/mineserver /home/lorenz/mineserver/plugins /home/lorenz/mineserver /home/lorenz/mineserver/plugins /home/lorenz/mineserver/plugins/CMakeFiles/cursesui.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/CMakeFiles/cursesui.dir/depend

