cmake_minimum_required(VERSION 3.14)
project(rc_projectManagement VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_projectManagement rc_projectManagement.qrc)
target_link_libraries(rc_projectManagement Qt5::Core)