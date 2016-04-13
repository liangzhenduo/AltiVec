cmake_minimum_required(VERSION 3.3)
project(AltiVec)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
    instruction_ops.cpp
    main.cpp
    ppc_altivec.h)

add_executable(AltiVec ${SOURCE_FILES})