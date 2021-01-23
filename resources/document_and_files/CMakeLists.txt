cmake_minimum_required(VERSION 3.19)
project(rc_document_and_files VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
set (CMAKE_CXX_STANDARD 20)
find_package(Qt6Core)

add_library(rc_document_and_files rc_document_and_files.qrc)
target_link_libraries(rc_document_and_files Qt6::Core)