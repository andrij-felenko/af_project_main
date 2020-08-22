cmake_minimum_required(VERSION 3.14)
project(rc_cryptoCurrency VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_cryptoCurrency rc_cryptoCurrency.qrc)
target_link_libraries(rc_cryptoCurrency Qt5::Core)