cmake_minimum_required(VERSION 3.14)
project(rc_geography VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_geography rc_geography.qrc)
target_link_libraries(rc_geography Qt5::Core)