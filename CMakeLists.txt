#
# BringAuto CXX Project temple.
#

PROJECT(example-project CXX)
CMAKE_MINIMUM_REQUIRED(VERSION 3.18)

INCLUDE(cmake/Settings.cmake)

#
# We initialize CMLIB library.
# If you do not have one just follow https://github.com/cmakelib/cmakelib
#
FIND_PACKAGE(CMLIB
    COMPONENTS CMDEF STORAGE
    REQUIRED
)

IF(NOT BRINGAUTO_SYSTEM_DEP)
    INCLUDE(cmake/Dependencies.cmake)
ENDIF()

#
# After package add we can use standard FIND_LIBRARY
# as a documented by the package upstream
#
FIND_PACKAGE(ZLIB          REQUIRED)
FIND_PACKAGE(CURL          REQUIRED)

# We need to update RPATH to install path of dependencicies
SET(CMAKE_INSTALL_RPATH "$ORIGIN/../lib")

CMDEF_ADD_EXECUTABLE(
    TARGET example-project
    SOURCES main.cpp
    VERSION 1.0.0
)
TARGET_LINK_LIBRARIES(example-project PUBLIC CURL::libcurl ZLIB::ZLIB)