cmake_minimum_required(VERSION 3.14)
project(rc_flags VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_flags rc_flags.qrc)
target_link_libraries(rc_flags Qt5::Core)