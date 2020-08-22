cmake_minimum_required(VERSION 3.14)
project(rc_biology VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_biology rc_biology.qrc)
target_link_libraries(rc_biology Qt5::Core)