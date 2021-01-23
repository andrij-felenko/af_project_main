cmake_minimum_required(VERSION 3.19)
project(rc_cleaning VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
set (CMAKE_CXX_STANDARD 20)
find_package(Qt6Core)

add_library(rc_cleaning rc_cleaning.qrc)
target_link_libraries(rc_cleaning Qt6::Core)