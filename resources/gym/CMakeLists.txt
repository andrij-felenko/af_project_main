cmake_minimum_required(VERSION 3.14)
project(rc_gym VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_gym rc_gym.qrc)
target_link_libraries(rc_gym Qt5::Core)