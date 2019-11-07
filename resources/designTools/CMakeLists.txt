cmake_minimum_required(VERSION 3.14)
project(rc_designTools VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_designTools rc.qrc)
target_link_libraries(rc_designTools Qt5::Core)