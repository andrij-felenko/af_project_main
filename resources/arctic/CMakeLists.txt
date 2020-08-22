cmake_minimum_required(VERSION 3.14)
project(rc_arctic VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_arctic rc_arctic.qrc)
target_link_libraries(rc_arctic Qt5::Core)