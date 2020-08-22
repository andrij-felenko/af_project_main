cmake_minimum_required(VERSION 3.14)
project(rc_removals VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_removals rc_removals.qrc)
target_link_libraries(rc_removals Qt5::Core)