cmake_minimum_required(VERSION 3.14)
project(rc_fair VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_fair rc_fair.qrc)
target_link_libraries(rc_fair Qt5::Core)