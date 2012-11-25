# Install script for directory: /Users/thomas/Devel/pythonocc/src/contrib/geom-6.3.1.8

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/Library/GEOM/6.3.1.8")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/Library/GEOM/6.3.1.8/lib/libGEOM.4.0.0.dylib;/Library/GEOM/6.3.1.8/lib/libGEOM.4.dylib;/Library/GEOM/6.3.1.8/lib/libGEOM.dylib")
FILE(INSTALL DESTINATION "/Library/GEOM/6.3.1.8/lib" TYPE SHARED_LIBRARY FILES
    "/Users/thomas/Devel/pythonocc/src/contrib/geom-6.3.1.8/cmake-build/cmake-build/libGEOM.4.0.0.dylib"
    "/Users/thomas/Devel/pythonocc/src/contrib/geom-6.3.1.8/cmake-build/cmake-build/libGEOM.4.dylib"
    "/Users/thomas/Devel/pythonocc/src/contrib/geom-6.3.1.8/cmake-build/cmake-build/libGEOM.dylib"
    )
  FOREACH(file
      "$ENV{DESTDIR}/Library/GEOM/6.3.1.8/lib/libGEOM.4.0.0.dylib"
      "$ENV{DESTDIR}/Library/GEOM/6.3.1.8/lib/libGEOM.4.dylib"
      "$ENV{DESTDIR}/Library/GEOM/6.3.1.8/lib/libGEOM.dylib"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
        -id "libGEOM.4.dylib"
        "${file}")
      IF(CMAKE_INSTALL_DO_STRIP)
        EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "${file}")
      ENDIF(CMAKE_INSTALL_DO_STRIP)
    ENDIF()
  ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/Library/GEOM/6.3.1.8/include/geom/")
FILE(INSTALL DESTINATION "/Library/GEOM/6.3.1.8/include/geom" TYPE DIRECTORY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-6.3.1.8/inc/" FILES_MATCHING REGEX "/[^/]*\\.[^/]*$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/Users/thomas/Devel/pythonocc/src/contrib/geom-6.3.1.8/cmake-build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/Users/thomas/Devel/pythonocc/src/contrib/geom-6.3.1.8/cmake-build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
