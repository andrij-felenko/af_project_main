cmake_minimum_required(VERSION 3.14)
project(rc_stationery VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_stationery rc_stationery.qrc)
target_link_libraries(rc_stationery Qt5::Core)