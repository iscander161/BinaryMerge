# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.13

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "B:\JetBrains\CLion 2019.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "B:\JetBrains\CLion 2019.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Family\CLionProjects\BinaryMerge

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Family\CLionProjects\BinaryMerge\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/BinaryMerge.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/BinaryMerge.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BinaryMerge.dir/flags.make

CMakeFiles/BinaryMerge.dir/main.cpp.obj: CMakeFiles/BinaryMerge.dir/flags.make
CMakeFiles/BinaryMerge.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Family\CLionProjects\BinaryMerge\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BinaryMerge.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\BinaryMerge.dir\main.cpp.obj -c C:\Users\Family\CLionProjects\BinaryMerge\main.cpp

CMakeFiles/BinaryMerge.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BinaryMerge.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Family\CLionProjects\BinaryMerge\main.cpp > CMakeFiles\BinaryMerge.dir\main.cpp.i

CMakeFiles/BinaryMerge.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BinaryMerge.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Family\CLionProjects\BinaryMerge\main.cpp -o CMakeFiles\BinaryMerge.dir\main.cpp.s

# Object files for target BinaryMerge
BinaryMerge_OBJECTS = \
"CMakeFiles/BinaryMerge.dir/main.cpp.obj"

# External object files for target BinaryMerge
BinaryMerge_EXTERNAL_OBJECTS =

BinaryMerge.exe: CMakeFiles/BinaryMerge.dir/main.cpp.obj
BinaryMerge.exe: CMakeFiles/BinaryMerge.dir/build.make
BinaryMerge.exe: CMakeFiles/BinaryMerge.dir/linklibs.rsp
BinaryMerge.exe: CMakeFiles/BinaryMerge.dir/objects1.rsp
BinaryMerge.exe: CMakeFiles/BinaryMerge.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Family\CLionProjects\BinaryMerge\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable BinaryMerge.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\BinaryMerge.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BinaryMerge.dir/build: BinaryMerge.exe

.PHONY : CMakeFiles/BinaryMerge.dir/build

CMakeFiles/BinaryMerge.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\BinaryMerge.dir\cmake_clean.cmake
.PHONY : CMakeFiles/BinaryMerge.dir/clean

CMakeFiles/BinaryMerge.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Family\CLionProjects\BinaryMerge C:\Users\Family\CLionProjects\BinaryMerge C:\Users\Family\CLionProjects\BinaryMerge\cmake-build-debug C:\Users\Family\CLionProjects\BinaryMerge\cmake-build-debug C:\Users\Family\CLionProjects\BinaryMerge\cmake-build-debug\CMakeFiles\BinaryMerge.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BinaryMerge.dir/depend
