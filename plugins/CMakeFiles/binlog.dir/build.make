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
include plugins/CMakeFiles/binlog.dir/depend.make

# Include the progress variables for this target.
include plugins/CMakeFiles/binlog.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/CMakeFiles/binlog.dir/flags.make

plugins/CMakeFiles/binlog.dir/binlog/binlog.cpp.o: plugins/CMakeFiles/binlog.dir/flags.make
plugins/CMakeFiles/binlog.dir/binlog/binlog.cpp.o: plugins/binlog/binlog.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/lorenz/mineserver/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object plugins/CMakeFiles/binlog.dir/binlog/binlog.cpp.o"
	cd /home/lorenz/mineserver/plugins && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/binlog.dir/binlog/binlog.cpp.o -c /home/lorenz/mineserver/plugins/binlog/binlog.cpp

plugins/CMakeFiles/binlog.dir/binlog/binlog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binlog.dir/binlog/binlog.cpp.i"
	cd /home/lorenz/mineserver/plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/lorenz/mineserver/plugins/binlog/binlog.cpp > CMakeFiles/binlog.dir/binlog/binlog.cpp.i

plugins/CMakeFiles/binlog.dir/binlog/binlog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binlog.dir/binlog/binlog.cpp.s"
	cd /home/lorenz/mineserver/plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/lorenz/mineserver/plugins/binlog/binlog.cpp -o CMakeFiles/binlog.dir/binlog/binlog.cpp.s

plugins/CMakeFiles/binlog.dir/binlog/binlog.cpp.o.requires:
.PHONY : plugins/CMakeFiles/binlog.dir/binlog/binlog.cpp.o.requires

plugins/CMakeFiles/binlog.dir/binlog/binlog.cpp.o.provides: plugins/CMakeFiles/binlog.dir/binlog/binlog.cpp.o.requires
	$(MAKE) -f plugins/CMakeFiles/binlog.dir/build.make plugins/CMakeFiles/binlog.dir/binlog/binlog.cpp.o.provides.build
.PHONY : plugins/CMakeFiles/binlog.dir/binlog/binlog.cpp.o.provides

plugins/CMakeFiles/binlog.dir/binlog/binlog.cpp.o.provides.build: plugins/CMakeFiles/binlog.dir/binlog/binlog.cpp.o

# Object files for target binlog
binlog_OBJECTS = \
"CMakeFiles/binlog.dir/binlog/binlog.cpp.o"

# External object files for target binlog
binlog_EXTERNAL_OBJECTS =

plugins/bin/binlog.so: plugins/CMakeFiles/binlog.dir/binlog/binlog.cpp.o
plugins/bin/binlog.so: plugins/CMakeFiles/binlog.dir/build.make
plugins/bin/binlog.so: plugins/CMakeFiles/binlog.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library bin/binlog.so"
	cd /home/lorenz/mineserver/plugins && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/binlog.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/CMakeFiles/binlog.dir/build: plugins/bin/binlog.so
.PHONY : plugins/CMakeFiles/binlog.dir/build

plugins/CMakeFiles/binlog.dir/requires: plugins/CMakeFiles/binlog.dir/binlog/binlog.cpp.o.requires
.PHONY : plugins/CMakeFiles/binlog.dir/requires

plugins/CMakeFiles/binlog.dir/clean:
	cd /home/lorenz/mineserver/plugins && $(CMAKE_COMMAND) -P CMakeFiles/binlog.dir/cmake_clean.cmake
.PHONY : plugins/CMakeFiles/binlog.dir/clean

plugins/CMakeFiles/binlog.dir/depend:
	cd /home/lorenz/mineserver && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lorenz/mineserver /home/lorenz/mineserver/plugins /home/lorenz/mineserver /home/lorenz/mineserver/plugins /home/lorenz/mineserver/plugins/CMakeFiles/binlog.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/CMakeFiles/binlog.dir/depend

