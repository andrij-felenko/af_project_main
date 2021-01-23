cmake_minimum_required(VERSION 3.19)
project(rc_financeAndAccounting VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
set (CMAKE_CXX_STANDARD 20)
find_package(Qt6Core)

add_library(rc_financeAndAccounting rc_financeAndAccounting.qrc)
target_link_libraries(rc_financeAndAccounting Qt6::Core)