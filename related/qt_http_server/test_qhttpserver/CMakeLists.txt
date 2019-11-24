project(test_qhttpserver)

find_package(Qt5Core)
add_executable(test_qhttpserver main.cpp)
target_link_libraries(test_qhttpserver qt_http_server Qt5::Core)
target_include_directories(test_qhttpserver
    PUBLIC $<TARGET_PROPERTY:qt_http_server,INTERFACE_INCLUDE_DIRECTORIES>)
