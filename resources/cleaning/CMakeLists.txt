cmake_minimum_required(VERSION 3.14)
project(rc_cleaning VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_cleaning rc_cleaning.qrc)
target_link_libraries(rc_cleaning Qt5::Core)