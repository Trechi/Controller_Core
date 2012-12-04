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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/johanv/code/vertensj-quadrotor/Controller_Core2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/johanv/code/vertensj-quadrotor/Controller_Core2/build

# Include any dependencies generated for this target.
include CMakeFiles/controller_server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/controller_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/controller_server.dir/flags.make

CMakeFiles/controller_server.dir/src/controller_server.o: CMakeFiles/controller_server.dir/flags.make
CMakeFiles/controller_server.dir/src/controller_server.o: ../src/controller_server.cpp
CMakeFiles/controller_server.dir/src/controller_server.o: ../manifest.xml
CMakeFiles/controller_server.dir/src/controller_server.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/controller_server.dir/src/controller_server.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/controller_server.dir/src/controller_server.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/controller_server.dir/src/controller_server.o: /home/johanv/code/vertensj-quadrotor/serial/manifest.xml
CMakeFiles/controller_server.dir/src/controller_server.o: /opt/ros/fuerte/stacks/bullet/manifest.xml
CMakeFiles/controller_server.dir/src/controller_server.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/controller_server.dir/src/controller_server.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/controller_server.dir/src/controller_server.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/controller_server.dir/src/controller_server.o: /opt/ros/fuerte/stacks/geometry/angles/manifest.xml
CMakeFiles/controller_server.dir/src/controller_server.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/controller_server.dir/src/controller_server.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/controller_server.dir/src/controller_server.o: /opt/ros/fuerte/share/roswtf/manifest.xml
CMakeFiles/controller_server.dir/src/controller_server.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/controller_server.dir/src/controller_server.o: /opt/ros/fuerte/stacks/geometry/tf/manifest.xml
CMakeFiles/controller_server.dir/src/controller_server.o: /opt/ros/fuerte/stacks/geometry/tf/msg_gen/generated
CMakeFiles/controller_server.dir/src/controller_server.o: /opt/ros/fuerte/stacks/geometry/tf/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johanv/code/vertensj-quadrotor/Controller_Core2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/controller_server.dir/src/controller_server.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/controller_server.dir/src/controller_server.o -c /home/johanv/code/vertensj-quadrotor/Controller_Core2/src/controller_server.cpp

CMakeFiles/controller_server.dir/src/controller_server.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/controller_server.dir/src/controller_server.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/johanv/code/vertensj-quadrotor/Controller_Core2/src/controller_server.cpp > CMakeFiles/controller_server.dir/src/controller_server.i

CMakeFiles/controller_server.dir/src/controller_server.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/controller_server.dir/src/controller_server.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/johanv/code/vertensj-quadrotor/Controller_Core2/src/controller_server.cpp -o CMakeFiles/controller_server.dir/src/controller_server.s

CMakeFiles/controller_server.dir/src/controller_server.o.requires:
.PHONY : CMakeFiles/controller_server.dir/src/controller_server.o.requires

CMakeFiles/controller_server.dir/src/controller_server.o.provides: CMakeFiles/controller_server.dir/src/controller_server.o.requires
	$(MAKE) -f CMakeFiles/controller_server.dir/build.make CMakeFiles/controller_server.dir/src/controller_server.o.provides.build
.PHONY : CMakeFiles/controller_server.dir/src/controller_server.o.provides

CMakeFiles/controller_server.dir/src/controller_server.o.provides.build: CMakeFiles/controller_server.dir/src/controller_server.o

# Object files for target controller_server
controller_server_OBJECTS = \
"CMakeFiles/controller_server.dir/src/controller_server.o"

# External object files for target controller_server
controller_server_EXTERNAL_OBJECTS =

../bin/controller_server: CMakeFiles/controller_server.dir/src/controller_server.o
../bin/controller_server: CMakeFiles/controller_server.dir/build.make
../bin/controller_server: CMakeFiles/controller_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/controller_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/controller_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/controller_server.dir/build: ../bin/controller_server
.PHONY : CMakeFiles/controller_server.dir/build

CMakeFiles/controller_server.dir/requires: CMakeFiles/controller_server.dir/src/controller_server.o.requires
.PHONY : CMakeFiles/controller_server.dir/requires

CMakeFiles/controller_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/controller_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/controller_server.dir/clean

CMakeFiles/controller_server.dir/depend:
	cd /home/johanv/code/vertensj-quadrotor/Controller_Core2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/johanv/code/vertensj-quadrotor/Controller_Core2 /home/johanv/code/vertensj-quadrotor/Controller_Core2 /home/johanv/code/vertensj-quadrotor/Controller_Core2/build /home/johanv/code/vertensj-quadrotor/Controller_Core2/build /home/johanv/code/vertensj-quadrotor/Controller_Core2/build/CMakeFiles/controller_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/controller_server.dir/depend

