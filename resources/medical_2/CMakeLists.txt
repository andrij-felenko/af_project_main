cmake_minimum_required(VERSION 3.14)
project(rc_medical_2 VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_medical_2 rc_medical_2.qrc)
target_link_libraries(rc_medical_2 Qt5::Core)