# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/toand/git/mivp/projects/instancespace/continuous_optimization/mixmod_app

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/toand/git/mivp/projects/instancespace/continuous_optimization/mixmod_app/build

# Include any dependencies generated for this target.
include CMakeFiles/discLoss.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/discLoss.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/discLoss.dir/flags.make

CMakeFiles/discLoss.dir/discLoss_mex.cpp.o: CMakeFiles/discLoss.dir/flags.make
CMakeFiles/discLoss.dir/discLoss_mex.cpp.o: ../discLoss_mex.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/toand/git/mivp/projects/instancespace/continuous_optimization/mixmod_app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/discLoss.dir/discLoss_mex.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/discLoss.dir/discLoss_mex.cpp.o -c /Users/toand/git/mivp/projects/instancespace/continuous_optimization/mixmod_app/discLoss_mex.cpp

CMakeFiles/discLoss.dir/discLoss_mex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/discLoss.dir/discLoss_mex.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/toand/git/mivp/projects/instancespace/continuous_optimization/mixmod_app/discLoss_mex.cpp > CMakeFiles/discLoss.dir/discLoss_mex.cpp.i

CMakeFiles/discLoss.dir/discLoss_mex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/discLoss.dir/discLoss_mex.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/toand/git/mivp/projects/instancespace/continuous_optimization/mixmod_app/discLoss_mex.cpp -o CMakeFiles/discLoss.dir/discLoss_mex.cpp.s

CMakeFiles/discLoss.dir/discLoss_mex.cpp.o.requires:

.PHONY : CMakeFiles/discLoss.dir/discLoss_mex.cpp.o.requires

CMakeFiles/discLoss.dir/discLoss_mex.cpp.o.provides: CMakeFiles/discLoss.dir/discLoss_mex.cpp.o.requires
	$(MAKE) -f CMakeFiles/discLoss.dir/build.make CMakeFiles/discLoss.dir/discLoss_mex.cpp.o.provides.build
.PHONY : CMakeFiles/discLoss.dir/discLoss_mex.cpp.o.provides

CMakeFiles/discLoss.dir/discLoss_mex.cpp.o.provides.build: CMakeFiles/discLoss.dir/discLoss_mex.cpp.o


# Object files for target discLoss
discLoss_OBJECTS = \
"CMakeFiles/discLoss.dir/discLoss_mex.cpp.o"

# External object files for target discLoss
discLoss_EXTERNAL_OBJECTS =

discLoss: CMakeFiles/discLoss.dir/discLoss_mex.cpp.o
discLoss: CMakeFiles/discLoss.dir/build.make
discLoss: CMakeFiles/discLoss.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/toand/git/mivp/projects/instancespace/continuous_optimization/mixmod_app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable discLoss"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/discLoss.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/discLoss.dir/build: discLoss

.PHONY : CMakeFiles/discLoss.dir/build

CMakeFiles/discLoss.dir/requires: CMakeFiles/discLoss.dir/discLoss_mex.cpp.o.requires

.PHONY : CMakeFiles/discLoss.dir/requires

CMakeFiles/discLoss.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/discLoss.dir/cmake_clean.cmake
.PHONY : CMakeFiles/discLoss.dir/clean

CMakeFiles/discLoss.dir/depend:
	cd /Users/toand/git/mivp/projects/instancespace/continuous_optimization/mixmod_app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/toand/git/mivp/projects/instancespace/continuous_optimization/mixmod_app /Users/toand/git/mivp/projects/instancespace/continuous_optimization/mixmod_app /Users/toand/git/mivp/projects/instancespace/continuous_optimization/mixmod_app/build /Users/toand/git/mivp/projects/instancespace/continuous_optimization/mixmod_app/build /Users/toand/git/mivp/projects/instancespace/continuous_optimization/mixmod_app/build/CMakeFiles/discLoss.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/discLoss.dir/depend

