cmake_minimum_required(VERSION 3.19)
project(rc_cyber_bullying VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
set (CMAKE_CXX_STANDARD 20)
find_package(Qt6Core)

add_library(rc_cyber_bullying rc_cyber_bullying.qrc)
target_link_libraries(rc_cyber_bullying Qt6::Core)