cmake_minimum_required(VERSION 3.14)
project(rc_city_park VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_city_park rc_city_park.qrc)
target_link_libraries(rc_city_park Qt5::Core)