cmake_minimum_required(VERSION 3.19)
project(rc_transport VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
set (CMAKE_CXX_STANDARD 20)
find_package(Qt6Core)

add_library(rc_transport rc_transport.qrc)
target_link_libraries(rc_transport Qt6::Core)