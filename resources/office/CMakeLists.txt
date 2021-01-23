cmake_minimum_required(VERSION 3.19)
project(rc_office VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
set (CMAKE_CXX_STANDARD 20)
find_package(Qt6Core)

add_library(rc_office rc_office.qrc)
target_link_libraries(rc_office Qt6::Core)