cmake_minimum_required(VERSION 3.14)
project(rc_ecology VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_ecology rc_ecology.qrc)
target_link_libraries(rc_ecology Qt5::Core)