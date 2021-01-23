cmake_minimum_required(VERSION 3.19)
project(rc_projectManagement VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
set (CMAKE_CXX_STANDARD 20)
find_package(Qt6Core)

add_library(rc_projectManagement rc_projectManagement.qrc)
target_link_libraries(rc_projectManagement Qt6::Core)