cmake_minimum_required(VERSION 3.14)
project(rc_gaming VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_gaming rc.qrc)
target_link_libraries(rc_gaming Qt5::Core)