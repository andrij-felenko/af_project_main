cmake_minimum_required(VERSION 3.14)
project(rc_finance VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_finance rc_finance.qrc)
target_link_libraries(rc_finance Qt5::Core)