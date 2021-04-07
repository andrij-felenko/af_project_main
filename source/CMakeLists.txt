#
# CMakeQt: CMake build system template for Qt based projects
# Author: Andrij Felenko <andrij.felenko.develop@gmail.com>
#
cmake_minimum_required(VERSION 3.19)

# Project Info
project(Andrij_Felenko_projects LANGUAGES CXX)
set(PROJECT_NAME_SHORT  "Andrij Felenko projects")
set(PROJECT_NAME_LONG   "List of all current Andrij Felenko projects")
set(PROJECT_DESCRIPTION "CMake build system template for Qt based projects")
set(PROJECT_COPYRIGHT   "Copyright (C) 2019-2021 Andrij Felenko")
set(PROJECT_CONTACT     "andrij.felenko@tuta.io")
set(PROJECT_VENDOR      "Andrij Felenko")
set(ORG_WEBSITE         "http://andrij.felenko.com")

# build info
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin/app)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin/lib)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin/archive)

# Recursively add sub dirs
#add_subdirectory(base_af)
#add_subdirectory(projects)
add_subdirectory(related)
#add_subdirectory(resources)
#add_subdirectory(utilities)
