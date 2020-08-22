cmake_minimum_required(VERSION 3.14)
project(rc_dataProtection VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_dataProtection rc_dataProtection.qrc)
target_link_libraries(rc_dataProtection Qt5::Core)