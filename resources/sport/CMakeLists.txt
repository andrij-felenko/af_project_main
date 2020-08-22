cmake_minimum_required(VERSION 3.14)
project(rc_sport VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_sport rc_sport.qrc)
target_link_libraries(rc_sport Qt5::Core)