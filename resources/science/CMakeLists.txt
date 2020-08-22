cmake_minimum_required(VERSION 3.14)
project(rc_science VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_science rc_science.qrc)
target_link_libraries(rc_science Qt5::Core)