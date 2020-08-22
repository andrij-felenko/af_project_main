cmake_minimum_required(VERSION 3.14)
project(rc_fileFolder VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_fileFolder rc_fileFolder.qrc)
target_link_libraries(rc_fileFolder Qt5::Core)