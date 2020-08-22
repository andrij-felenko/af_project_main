cmake_minimum_required(VERSION 3.14)
project(rc_construction VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_construction rc_construction.qrc)
target_link_libraries(rc_construction Qt5::Core)