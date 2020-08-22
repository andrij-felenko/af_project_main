cmake_minimum_required(VERSION 3.14)
project(rc_warehouse VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_warehouse rc_warehouse.qrc)
target_link_libraries(rc_warehouse Qt5::Core)