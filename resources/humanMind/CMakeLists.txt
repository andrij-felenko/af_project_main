cmake_minimum_required(VERSION 3.14)
project(rc_humanMind VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_humanMind rc_humanMind.qrc)
target_link_libraries(rc_humanMind Qt5::Core)