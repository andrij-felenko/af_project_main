cmake_minimum_required(VERSION 3.19)
project(rc_home VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
set (CMAKE_CXX_STANDARD 20)
find_package(Qt6Core)

add_library(rc_home rc_home.qrc)
target_link_libraries(rc_home Qt6::Core)