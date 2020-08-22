cmake_minimum_required(VERSION 3.14)
project(rc_business VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_business rc_business.qrc)
target_link_libraries(rc_business Qt5::Core)