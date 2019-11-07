cmake_minimum_required(VERSION 3.14)
project(rc_office VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_office rc.qrc)
target_link_libraries(rc_office Qt5::Core)