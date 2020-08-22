cmake_minimum_required(VERSION 3.14)
project(rc_transport VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_transport rc_transport.qrc)
target_link_libraries(rc_transport Qt5::Core)