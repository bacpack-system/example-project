#
# BringAuto CXX Project temple.
#

CMAKE_MINIMUM_REQUIRED(VERSION 3.18)
PROJECT(example-project CXX)

INCLUDE(cmake/Settings.cmake)

#
# We initialize CMLIB library.
# If you do not have one just follow https://github.com/cmakelib/cmakelib
#
FIND_PACKAGE(CMLIB
    COMPONENTS CMDEF STORAGE
    REQUIRED
)

# Define curl and zlib packages
BA_PACKAGE_LIBRARY(curl v7.79.1)
BA_PACKAGE_LIBRARY(zlib v1.2.11 OUTPUT_PATH_VAR ZLIB_ROOT)

#
# After package add we can use standard FIND_LIBRARY
# as a documented by the package upstream
#
FIND_PACKAGE(ZLIB REQUIRED)
FIND_PACKAGE(CURL REQUIRED)

CMDEF_ADD_EXECUTABLE(
    TARGET example-project
    SOURCES main.cpp
    VERSION 1.0.0
)
TARGET_LINK_LIBRARIES(example-project PUBLIC CURL::libcurl ZLIB::ZLIB)

# Install created target
CMDEF_INSTALL(TARGET example-project)

# Install all shared library dependencies needed for json_target
# and update RUNPATH.
BA_PACKAGE_DEPS_IMPORTED(example-project)
