cmake_minimum_required(VERSION 3.14)
project(rc_biometrics VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_biometrics rc.qrc)
target_link_libraries(rc_biometrics Qt5::Core)