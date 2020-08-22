cmake_minimum_required(VERSION 3.14)
project(rc_character VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_character rc_character.qrc)
target_link_libraries(rc_character Qt5::Core)