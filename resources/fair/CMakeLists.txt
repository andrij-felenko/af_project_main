cmake_minimum_required(VERSION 3.19)
project(rc_fair VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
set (CMAKE_CXX_STANDARD 20)
find_package(Qt6Core)

add_library(rc_fair rc_fair.qrc)
target_link_libraries(rc_fair Qt6::Core)