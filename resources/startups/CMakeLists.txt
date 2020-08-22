cmake_minimum_required(VERSION 3.14)
project(rc_startups VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_startups rc_startups.qrc)
target_link_libraries(rc_startups Qt5::Core)