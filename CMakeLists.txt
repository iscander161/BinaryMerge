cmake_minimum_required(VERSION 3.13)
project(BinaryMerge)

set(CMAKE_CXX_FLAGS --static)
set(CMAKE_CXX_STANDARD 14)

add_executable(BinaryMerge main.cpp main.h)