cmake_minimum_required(VERSION 3.14)
project(rc_basic VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_basic rc.qrc)
target_link_libraries(rc_basic Qt5::Core)