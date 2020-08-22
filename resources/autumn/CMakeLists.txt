cmake_minimum_required(VERSION 3.14)
project(rc_autumn VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_autumn rc_autumn.qrc)
target_link_libraries(rc_autumn Qt5::Core)