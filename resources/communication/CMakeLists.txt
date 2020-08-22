cmake_minimum_required(VERSION 3.14)
project(rc_communication VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_communication rc_communication.qrc)
target_link_libraries(rc_communication Qt5::Core)