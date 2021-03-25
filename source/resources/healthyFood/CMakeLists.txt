cmake_minimum_required(VERSION 3.19)
project(rc_healthyFood VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
set (CMAKE_CXX_STANDARD 20)
find_package(Qt6Core)

add_library(rc_healthyFood rc_healthyFood.qrc)
target_link_libraries(rc_healthyFood Qt6::Core)