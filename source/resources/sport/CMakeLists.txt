cmake_minimum_required(VERSION 3.19)
project(rc_sport VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
set (CMAKE_CXX_STANDARD 20)
find_package(Qt6Core)

add_library(rc_sport rc_sport.qrc)
target_link_libraries(rc_sport Qt6::Core)