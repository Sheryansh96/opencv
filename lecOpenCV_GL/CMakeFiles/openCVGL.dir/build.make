# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/harry/Desktop/SJSU/EE264/EE264Ubuntu/opencv-3.1.0/samples/cpp/harry/lecOpenCV_GL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/harry/Desktop/SJSU/EE264/EE264Ubuntu/opencv-3.1.0/samples/cpp/harry/lecOpenCV_GL

# Include any dependencies generated for this target.
include CMakeFiles/openCVGL.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/openCVGL.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/openCVGL.dir/flags.make

CMakeFiles/openCVGL.dir/openCVGL.cpp.o: CMakeFiles/openCVGL.dir/flags.make
CMakeFiles/openCVGL.dir/openCVGL.cpp.o: openCVGL.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/harry/Desktop/SJSU/EE264/EE264Ubuntu/opencv-3.1.0/samples/cpp/harry/lecOpenCV_GL/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/openCVGL.dir/openCVGL.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/openCVGL.dir/openCVGL.cpp.o -c /home/harry/Desktop/SJSU/EE264/EE264Ubuntu/opencv-3.1.0/samples/cpp/harry/lecOpenCV_GL/openCVGL.cpp

CMakeFiles/openCVGL.dir/openCVGL.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openCVGL.dir/openCVGL.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/harry/Desktop/SJSU/EE264/EE264Ubuntu/opencv-3.1.0/samples/cpp/harry/lecOpenCV_GL/openCVGL.cpp > CMakeFiles/openCVGL.dir/openCVGL.cpp.i

CMakeFiles/openCVGL.dir/openCVGL.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openCVGL.dir/openCVGL.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/harry/Desktop/SJSU/EE264/EE264Ubuntu/opencv-3.1.0/samples/cpp/harry/lecOpenCV_GL/openCVGL.cpp -o CMakeFiles/openCVGL.dir/openCVGL.cpp.s

CMakeFiles/openCVGL.dir/openCVGL.cpp.o.requires:
.PHONY : CMakeFiles/openCVGL.dir/openCVGL.cpp.o.requires

CMakeFiles/openCVGL.dir/openCVGL.cpp.o.provides: CMakeFiles/openCVGL.dir/openCVGL.cpp.o.requires
	$(MAKE) -f CMakeFiles/openCVGL.dir/build.make CMakeFiles/openCVGL.dir/openCVGL.cpp.o.provides.build
.PHONY : CMakeFiles/openCVGL.dir/openCVGL.cpp.o.provides

CMakeFiles/openCVGL.dir/openCVGL.cpp.o.provides.build: CMakeFiles/openCVGL.dir/openCVGL.cpp.o

# Object files for target openCVGL
openCVGL_OBJECTS = \
"CMakeFiles/openCVGL.dir/openCVGL.cpp.o"

# External object files for target openCVGL
openCVGL_EXTERNAL_OBJECTS =

openCVGL: CMakeFiles/openCVGL.dir/openCVGL.cpp.o
openCVGL: CMakeFiles/openCVGL.dir/build.make
openCVGL: /usr/local/lib/libopencv_videostab.so.3.1.0
openCVGL: /usr/local/lib/libopencv_videoio.so.3.1.0
openCVGL: /usr/local/lib/libopencv_video.so.3.1.0
openCVGL: /usr/local/lib/libopencv_superres.so.3.1.0
openCVGL: /usr/local/lib/libopencv_stitching.so.3.1.0
openCVGL: /usr/local/lib/libopencv_shape.so.3.1.0
openCVGL: /usr/local/lib/libopencv_photo.so.3.1.0
openCVGL: /usr/local/lib/libopencv_objdetect.so.3.1.0
openCVGL: /usr/local/lib/libopencv_ml.so.3.1.0
openCVGL: /usr/local/lib/libopencv_imgproc.so.3.1.0
openCVGL: /usr/local/lib/libopencv_imgcodecs.so.3.1.0
openCVGL: /usr/local/lib/libopencv_highgui.so.3.1.0
openCVGL: /usr/local/lib/libopencv_flann.so.3.1.0
openCVGL: /usr/local/lib/libopencv_features2d.so.3.1.0
openCVGL: /usr/local/lib/libopencv_core.so.3.1.0
openCVGL: /usr/local/lib/libopencv_calib3d.so.3.1.0
openCVGL: /usr/local/lib/libopencv_features2d.so.3.1.0
openCVGL: /usr/local/lib/libopencv_ml.so.3.1.0
openCVGL: /usr/local/lib/libopencv_highgui.so.3.1.0
openCVGL: /usr/local/lib/libopencv_videoio.so.3.1.0
openCVGL: /usr/local/lib/libopencv_imgcodecs.so.3.1.0
openCVGL: /usr/local/lib/libopencv_flann.so.3.1.0
openCVGL: /usr/local/lib/libopencv_video.so.3.1.0
openCVGL: /usr/local/lib/libopencv_imgproc.so.3.1.0
openCVGL: /usr/local/lib/libopencv_core.so.3.1.0
openCVGL: CMakeFiles/openCVGL.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable openCVGL"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openCVGL.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/openCVGL.dir/build: openCVGL
.PHONY : CMakeFiles/openCVGL.dir/build

CMakeFiles/openCVGL.dir/requires: CMakeFiles/openCVGL.dir/openCVGL.cpp.o.requires
.PHONY : CMakeFiles/openCVGL.dir/requires

CMakeFiles/openCVGL.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/openCVGL.dir/cmake_clean.cmake
.PHONY : CMakeFiles/openCVGL.dir/clean

CMakeFiles/openCVGL.dir/depend:
	cd /home/harry/Desktop/SJSU/EE264/EE264Ubuntu/opencv-3.1.0/samples/cpp/harry/lecOpenCV_GL && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/harry/Desktop/SJSU/EE264/EE264Ubuntu/opencv-3.1.0/samples/cpp/harry/lecOpenCV_GL /home/harry/Desktop/SJSU/EE264/EE264Ubuntu/opencv-3.1.0/samples/cpp/harry/lecOpenCV_GL /home/harry/Desktop/SJSU/EE264/EE264Ubuntu/opencv-3.1.0/samples/cpp/harry/lecOpenCV_GL /home/harry/Desktop/SJSU/EE264/EE264Ubuntu/opencv-3.1.0/samples/cpp/harry/lecOpenCV_GL /home/harry/Desktop/SJSU/EE264/EE264Ubuntu/opencv-3.1.0/samples/cpp/harry/lecOpenCV_GL/CMakeFiles/openCVGL.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/openCVGL.dir/depend

