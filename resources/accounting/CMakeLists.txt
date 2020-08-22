cmake_minimum_required(VERSION 3.14)
project(rc_accounting VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_accounting rc_accounting.qrc)
target_link_libraries(rc_accounting Qt5::Core)