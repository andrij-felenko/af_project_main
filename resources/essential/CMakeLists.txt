cmake_minimum_required(VERSION 3.14)
project(rc_essential VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_essential rc_essential.qrc)
target_link_libraries(rc_essential Qt5::Core)