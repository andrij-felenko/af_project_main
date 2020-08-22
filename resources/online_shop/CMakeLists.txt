cmake_minimum_required(VERSION 3.14)
project(rc_online_shop VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_online_shop rc_online_shop.qrc)
target_link_libraries(rc_online_shop Qt5::Core)