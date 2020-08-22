cmake_minimum_required(VERSION 3.14)
project(rc_financeAndAccounting VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_financeAndAccounting rc_financeAndAccounting.qrc)
target_link_libraries(rc_financeAndAccounting Qt5::Core)