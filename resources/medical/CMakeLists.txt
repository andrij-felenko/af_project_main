cmake_minimum_required(VERSION 3.14)
project(rc_medical VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_medical rc_medical.qrc)
target_link_libraries(rc_medical Qt5::Core)