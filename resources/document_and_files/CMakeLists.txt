cmake_minimum_required(VERSION 3.14)
project(rc_document_and_files VERSION 1.0.0)

set (CMAKE_AUTORCC ON)
find_package(Qt5Core)
add_library(rc_document_and_files rc_document_and_files.qrc)
target_link_libraries(rc_document_and_files Qt5::Core)