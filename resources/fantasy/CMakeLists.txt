cmake_minimum_required(VERSION 3.14)
project(rc_fantasy VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_fantasy rc_fantasy.qrc)
target_link_libraries(rc_fantasy Qt5::Core)