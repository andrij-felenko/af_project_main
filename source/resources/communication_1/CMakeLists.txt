cmake_minimum_required(VERSION 3.19)
project(rc_communication_1 VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
set (CMAKE_CXX_STANDARD 20)
find_package(Qt6Core)

add_library(rc_communication_1 rc_communication_1.qrc)
target_link_libraries(rc_communication_1 Qt6::Core)