cmake_minimum_required(VERSION 3.14)
project(http_parser)

set (http_parser_h
    include/http_parser.h
    )

set (http_parser_cpp
    http_parser.c
    )

find_package(Qt5Core)

add_library(http_parser SHARED  ${http_parser_h} ${http_parser_cpp})

target_link_libraries(http_parser Qt5::Core)
target_include_directories(http_parser PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
