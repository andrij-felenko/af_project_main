cmake_minimum_required(VERSION 3.14)
project(rc_money_1 VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_money_1 rc_money_1.qrc)
target_link_libraries(rc_money_1 Qt5::Core)