cmake_minimum_required(VERSION 3.14)
project(rc_pirate VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_pirate rc_pirate.qrc)
target_link_libraries(rc_pirate Qt5::Core)