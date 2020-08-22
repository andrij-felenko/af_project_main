cmake_minimum_required(VERSION 3.14)
project(rc_economicalGrowth VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_economicalGrowth rc_economicalGrowth.qrc)
target_link_libraries(rc_economicalGrowth Qt5::Core)