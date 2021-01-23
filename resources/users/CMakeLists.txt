cmake_minimum_required(VERSION 3.19)
project(rc_users VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
set (CMAKE_CXX_STANDARD 20)
find_package(Qt6Core)

add_library(rc_users rc_users.qrc)
target_link_libraries(rc_users Qt6::Core)