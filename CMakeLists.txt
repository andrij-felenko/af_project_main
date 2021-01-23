#
# CMakeQt: CMake build system template for Qt based projects
# Author: Andrij Felenko <andrij.felenko.develop@gmail.com>
#
cmake_minimum_required(VERSION 3.19)

# Project Info
project(Andrij_Felenko_projects LANGUAGES CXX)
set(PROJECT_NAME_SHORT   "Andrij Felenko projects")
set(PROJECT_NAME_LONG    "List of all current Andrij Felenko projects")
set(PROJECT_DESCRIPTION  "CMake build system template for Qt based projects")
set(PROJECT_COPYRIGHT    "Copyright (C) 2019-2019 Andrij Felenko")
set(PROJECT_CONTACT      "andrij.felenko.develop@gmail.com")
set(PROJECT_VENDOR       "Andrij Felenko")
set(ORG_WEBSITE          "http://google.com")

# build info
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin/lib)

# Recursively add sub dirs
add_subdirectory(base_af)
add_subdirectory(projects)
add_subdirectory(related)
add_subdirectory(resources)
add_subdirectory(utilities)
