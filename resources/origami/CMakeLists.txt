cmake_minimum_required(VERSION 3.14)
project(rc_origami VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_origami rc_origami.qrc)
target_link_libraries(rc_origami Qt5::Core)