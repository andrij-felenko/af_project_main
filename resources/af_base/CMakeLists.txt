cmake_minimum_required(VERSION 3.14)
project(rc_af_base VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)

add_library(rc_af_base af_base.qrc)
target_link_libraries(rc_af_base Qt5::Core)
