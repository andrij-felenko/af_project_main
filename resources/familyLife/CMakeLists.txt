cmake_minimum_required(VERSION 3.14)
project(rc_familyLife VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_familyLife rc_familyLife.qrc)
target_link_libraries(rc_familyLife Qt5::Core)