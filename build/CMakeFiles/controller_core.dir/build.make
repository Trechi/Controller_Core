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
CMAKE_SOURCE_DIR = /home/johanv/code/vertensj-quadrotor/RCcontroller

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/johanv/code/vertensj-quadrotor/RCcontroller/build

# Include any dependencies generated for this target.
include CMakeFiles/controller_core.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/controller_core.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/controller_core.dir/flags.make

CMakeFiles/controller_core.dir/src/controller_core.o: CMakeFiles/controller_core.dir/flags.make
CMakeFiles/controller_core.dir/src/controller_core.o: ../src/controller_core.cpp
CMakeFiles/controller_core.dir/src/controller_core.o: ../manifest.xml
CMakeFiles/controller_core.dir/src/controller_core.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/controller_core.dir/src/controller_core.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/controller_core.dir/src/controller_core.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/controller_core.dir/src/controller_core.o: /home/johanv/code/vertensj-quadrotor/serial/manifest.xml
CMakeFiles/controller_core.dir/src/controller_core.o: /opt/ros/fuerte/stacks/bullet/manifest.xml
CMakeFiles/controller_core.dir/src/controller_core.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/controller_core.dir/src/controller_core.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/controller_core.dir/src/controller_core.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/controller_core.dir/src/controller_core.o: /opt/ros/fuerte/stacks/geometry/angles/manifest.xml
CMakeFiles/controller_core.dir/src/controller_core.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/controller_core.dir/src/controller_core.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/controller_core.dir/src/controller_core.o: /opt/ros/fuerte/share/roswtf/manifest.xml
CMakeFiles/controller_core.dir/src/controller_core.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/controller_core.dir/src/controller_core.o: /opt/ros/fuerte/stacks/geometry/tf/manifest.xml
CMakeFiles/controller_core.dir/src/controller_core.o: /opt/ros/fuerte/stacks/geometry/tf/msg_gen/generated
CMakeFiles/controller_core.dir/src/controller_core.o: /opt/ros/fuerte/stacks/geometry/tf/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johanv/code/vertensj-quadrotor/RCcontroller/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/controller_core.dir/src/controller_core.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/controller_core.dir/src/controller_core.o -c /home/johanv/code/vertensj-quadrotor/RCcontroller/src/controller_core.cpp

CMakeFiles/controller_core.dir/src/controller_core.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/controller_core.dir/src/controller_core.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/johanv/code/vertensj-quadrotor/RCcontroller/src/controller_core.cpp > CMakeFiles/controller_core.dir/src/controller_core.i

CMakeFiles/controller_core.dir/src/controller_core.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/controller_core.dir/src/controller_core.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/johanv/code/vertensj-quadrotor/RCcontroller/src/controller_core.cpp -o CMakeFiles/controller_core.dir/src/controller_core.s

CMakeFiles/controller_core.dir/src/controller_core.o.requires:
.PHONY : CMakeFiles/controller_core.dir/src/controller_core.o.requires

CMakeFiles/controller_core.dir/src/controller_core.o.provides: CMakeFiles/controller_core.dir/src/controller_core.o.requires
	$(MAKE) -f CMakeFiles/controller_core.dir/build.make CMakeFiles/controller_core.dir/src/controller_core.o.provides.build
.PHONY : CMakeFiles/controller_core.dir/src/controller_core.o.provides

CMakeFiles/controller_core.dir/src/controller_core.o.provides.build: CMakeFiles/controller_core.dir/src/controller_core.o

CMakeFiles/controller_core.dir/src/pid.o: CMakeFiles/controller_core.dir/flags.make
CMakeFiles/controller_core.dir/src/pid.o: ../src/pid.cpp
CMakeFiles/controller_core.dir/src/pid.o: ../manifest.xml
CMakeFiles/controller_core.dir/src/pid.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/controller_core.dir/src/pid.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/controller_core.dir/src/pid.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/controller_core.dir/src/pid.o: /home/johanv/code/vertensj-quadrotor/serial/manifest.xml
CMakeFiles/controller_core.dir/src/pid.o: /opt/ros/fuerte/stacks/bullet/manifest.xml
CMakeFiles/controller_core.dir/src/pid.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/controller_core.dir/src/pid.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/controller_core.dir/src/pid.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/controller_core.dir/src/pid.o: /opt/ros/fuerte/stacks/geometry/angles/manifest.xml
CMakeFiles/controller_core.dir/src/pid.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/controller_core.dir/src/pid.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/controller_core.dir/src/pid.o: /opt/ros/fuerte/share/roswtf/manifest.xml
CMakeFiles/controller_core.dir/src/pid.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/controller_core.dir/src/pid.o: /opt/ros/fuerte/stacks/geometry/tf/manifest.xml
CMakeFiles/controller_core.dir/src/pid.o: /opt/ros/fuerte/stacks/geometry/tf/msg_gen/generated
CMakeFiles/controller_core.dir/src/pid.o: /opt/ros/fuerte/stacks/geometry/tf/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johanv/code/vertensj-quadrotor/RCcontroller/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/controller_core.dir/src/pid.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/controller_core.dir/src/pid.o -c /home/johanv/code/vertensj-quadrotor/RCcontroller/src/pid.cpp

CMakeFiles/controller_core.dir/src/pid.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/controller_core.dir/src/pid.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/johanv/code/vertensj-quadrotor/RCcontroller/src/pid.cpp > CMakeFiles/controller_core.dir/src/pid.i

CMakeFiles/controller_core.dir/src/pid.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/controller_core.dir/src/pid.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/johanv/code/vertensj-quadrotor/RCcontroller/src/pid.cpp -o CMakeFiles/controller_core.dir/src/pid.s

CMakeFiles/controller_core.dir/src/pid.o.requires:
.PHONY : CMakeFiles/controller_core.dir/src/pid.o.requires

CMakeFiles/controller_core.dir/src/pid.o.provides: CMakeFiles/controller_core.dir/src/pid.o.requires
	$(MAKE) -f CMakeFiles/controller_core.dir/build.make CMakeFiles/controller_core.dir/src/pid.o.provides.build
.PHONY : CMakeFiles/controller_core.dir/src/pid.o.provides

CMakeFiles/controller_core.dir/src/pid.o.provides.build: CMakeFiles/controller_core.dir/src/pid.o

# Object files for target controller_core
controller_core_OBJECTS = \
"CMakeFiles/controller_core.dir/src/controller_core.o" \
"CMakeFiles/controller_core.dir/src/pid.o"

# External object files for target controller_core
controller_core_EXTERNAL_OBJECTS =

../bin/controller_core: CMakeFiles/controller_core.dir/src/controller_core.o
../bin/controller_core: CMakeFiles/controller_core.dir/src/pid.o
../bin/controller_core: CMakeFiles/controller_core.dir/build.make
../bin/controller_core: CMakeFiles/controller_core.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/controller_core"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/controller_core.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/controller_core.dir/build: ../bin/controller_core
.PHONY : CMakeFiles/controller_core.dir/build

CMakeFiles/controller_core.dir/requires: CMakeFiles/controller_core.dir/src/controller_core.o.requires
CMakeFiles/controller_core.dir/requires: CMakeFiles/controller_core.dir/src/pid.o.requires
.PHONY : CMakeFiles/controller_core.dir/requires

CMakeFiles/controller_core.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/controller_core.dir/cmake_clean.cmake
.PHONY : CMakeFiles/controller_core.dir/clean

CMakeFiles/controller_core.dir/depend:
	cd /home/johanv/code/vertensj-quadrotor/RCcontroller/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/johanv/code/vertensj-quadrotor/RCcontroller /home/johanv/code/vertensj-quadrotor/RCcontroller /home/johanv/code/vertensj-quadrotor/RCcontroller/build /home/johanv/code/vertensj-quadrotor/RCcontroller/build /home/johanv/code/vertensj-quadrotor/RCcontroller/build/CMakeFiles/controller_core.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/controller_core.dir/depend

