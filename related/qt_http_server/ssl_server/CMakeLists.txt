cmake_minimum_required(VERSION 3.14)
project(qt_ssl_server)

set (qt_ssl_server_h
    include/qsslserver.h
    include/qtsslserverglobal.h
    )

set (qt_ssl_server_cpp
    qsslserver.cpp
    qsslserver_p.h
    )

find_package(Qt5Core)
find_package(Qt5Network)

add_library(qt_ssl_server SHARED ${qt_ssl_server_h} ${qt_ssl_server_cpp})
set(CMAKE_AUTOMOC ON)

target_link_libraries(qt_ssl_server Qt5::Core Qt5::Network)
target_include_directories(qt_ssl_server
    PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include
    PRIVATE ${Qt5Core_PRIVATE_INCLUDE_DIRS}
    PRIVATE ${Qt5Network_PRIVATE_INCLUDE_DIRS})
