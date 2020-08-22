cmake_minimum_required(VERSION 3.14)
project(rc_dataScience VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_dataScience rc_dataScience.qrc)
target_link_libraries(rc_dataScience Qt5::Core)