cmake_minimum_required(VERSION 3.14)
project(rc_ancestry VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_ancestry rc_ancestry.qrc)
target_link_libraries(rc_ancestry Qt5::Core)