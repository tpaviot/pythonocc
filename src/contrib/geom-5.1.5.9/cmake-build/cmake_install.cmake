# Install script for directory: /Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
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
   "/usr/local/lib/GEOM-5.1.5.9/libArchimede.dylib")
FILE(INSTALL DESTINATION "/usr/local/lib/GEOM-5.1.5.9" TYPE SHARED_LIBRARY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libArchimede.dylib")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libArchimede.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libArchimede.dylib")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "libArchimede.dylib"
      "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libArchimede.dylib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libArchimede.dylib")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/GEOM-5.1.5.9/libExchangeBREP.dylib")
FILE(INSTALL DESTINATION "/usr/local/lib/GEOM-5.1.5.9" TYPE SHARED_LIBRARY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libExchangeBREP.dylib")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeBREP.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeBREP.dylib")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "libExchangeBREP.dylib"
      "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeBREP.dylib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeBREP.dylib")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/GEOM-5.1.5.9/libExchangeCSFDB.dylib")
FILE(INSTALL DESTINATION "/usr/local/lib/GEOM-5.1.5.9" TYPE SHARED_LIBRARY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libExchangeCSFDB.dylib")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeCSFDB.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeCSFDB.dylib")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "libExchangeCSFDB.dylib"
      "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeCSFDB.dylib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeCSFDB.dylib")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/GEOM-5.1.5.9/libExchangeIGES.dylib")
FILE(INSTALL DESTINATION "/usr/local/lib/GEOM-5.1.5.9" TYPE SHARED_LIBRARY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libExchangeIGES.dylib")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeIGES.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeIGES.dylib")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "libExchangeIGES.dylib"
      "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeIGES.dylib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeIGES.dylib")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/GEOM-5.1.5.9/libExchangeSTEP.dylib")
FILE(INSTALL DESTINATION "/usr/local/lib/GEOM-5.1.5.9" TYPE SHARED_LIBRARY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libExchangeSTEP.dylib")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeSTEP.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeSTEP.dylib")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "libExchangeSTEP.dylib"
      "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeSTEP.dylib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeSTEP.dylib")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/GEOM-5.1.5.9/libExchangeSTL.dylib")
FILE(INSTALL DESTINATION "/usr/local/lib/GEOM-5.1.5.9" TYPE SHARED_LIBRARY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libExchangeSTL.dylib")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeSTL.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeSTL.dylib")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "libExchangeSTL.dylib"
      "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeSTL.dylib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeSTL.dylib")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/GEOM-5.1.5.9/libExchangeVRML.dylib")
FILE(INSTALL DESTINATION "/usr/local/lib/GEOM-5.1.5.9" TYPE SHARED_LIBRARY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libExchangeVRML.dylib")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeVRML.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeVRML.dylib")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "libExchangeVRML.dylib"
      "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeVRML.dylib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeVRML.dylib")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/GEOM-5.1.5.9/libExchangeOBJ.dylib")
FILE(INSTALL DESTINATION "/usr/local/lib/GEOM-5.1.5.9" TYPE SHARED_LIBRARY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libExchangeOBJ.dylib")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeOBJ.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeOBJ.dylib")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "libExchangeOBJ.dylib"
      "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeOBJ.dylib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchangeOBJ.dylib")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/GEOM-5.1.5.9/libExchange3DS.dylib")
FILE(INSTALL DESTINATION "/usr/local/lib/GEOM-5.1.5.9" TYPE SHARED_LIBRARY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libExchange3DS.dylib")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchange3DS.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchange3DS.dylib")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "libExchange3DS.dylib"
      "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchange3DS.dylib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libExchange3DS.dylib")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/GEOM-5.1.5.9/libGEOMAlgo.dylib")
FILE(INSTALL DESTINATION "/usr/local/lib/GEOM-5.1.5.9" TYPE SHARED_LIBRARY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libGEOMAlgo.dylib")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libGEOMAlgo.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libGEOMAlgo.dylib")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "libGEOMAlgo.dylib"
      -change "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libNMTDS.dylib" "libNMTDS.dylib"
      -change "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libNMTTools.dylib" "libNMTTools.dylib"
      "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libGEOMAlgo.dylib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libGEOMAlgo.dylib")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/GEOM-5.1.5.9/libGEOMImpl.dylib")
FILE(INSTALL DESTINATION "/usr/local/lib/GEOM-5.1.5.9" TYPE SHARED_LIBRARY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libGEOMImpl.dylib")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libGEOMImpl.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libGEOMImpl.dylib")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "libGEOMImpl.dylib"
      -change "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libArchimede.dylib" "libArchimede.dylib"
      -change "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libGEOM.dylib" "libGEOM.dylib"
      -change "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libGEOMAlgo.dylib" "libGEOMAlgo.dylib"
      -change "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libNMTDS.dylib" "libNMTDS.dylib"
      -change "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libNMTTools.dylib" "libNMTTools.dylib"
      -change "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libShHealOper.dylib" "libShHealOper.dylib"
      -change "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libSketcher.dylib" "libSketcher.dylib"
      "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libGEOMImpl.dylib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libGEOMImpl.dylib")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/GEOM-5.1.5.9/libGEOM.dylib")
FILE(INSTALL DESTINATION "/usr/local/lib/GEOM-5.1.5.9" TYPE SHARED_LIBRARY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libGEOM.dylib")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libGEOM.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libGEOM.dylib")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "libGEOM.dylib"
      -change "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libGEOMAlgo.dylib" "libGEOMAlgo.dylib"
      -change "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libNMTDS.dylib" "libNMTDS.dylib"
      -change "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libNMTTools.dylib" "libNMTTools.dylib"
      "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libGEOM.dylib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libGEOM.dylib")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/GEOM-5.1.5.9/libNMTDS.dylib")
FILE(INSTALL DESTINATION "/usr/local/lib/GEOM-5.1.5.9" TYPE SHARED_LIBRARY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libNMTDS.dylib")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libNMTDS.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libNMTDS.dylib")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "libNMTDS.dylib"
      "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libNMTDS.dylib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libNMTDS.dylib")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/GEOM-5.1.5.9/libNMTTools.dylib")
FILE(INSTALL DESTINATION "/usr/local/lib/GEOM-5.1.5.9" TYPE SHARED_LIBRARY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libNMTTools.dylib")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libNMTTools.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libNMTTools.dylib")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "libNMTTools.dylib"
      -change "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libNMTDS.dylib" "libNMTDS.dylib"
      "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libNMTTools.dylib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libNMTTools.dylib")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/GEOM-5.1.5.9/libPartition.dylib")
FILE(INSTALL DESTINATION "/usr/local/lib/GEOM-5.1.5.9" TYPE SHARED_LIBRARY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libPartition.dylib")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libPartition.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libPartition.dylib")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "libPartition.dylib"
      "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libPartition.dylib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libPartition.dylib")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/GEOM-5.1.5.9/libShHealOper.dylib")
FILE(INSTALL DESTINATION "/usr/local/lib/GEOM-5.1.5.9" TYPE SHARED_LIBRARY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libShHealOper.dylib")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libShHealOper.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libShHealOper.dylib")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "libShHealOper.dylib"
      "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libShHealOper.dylib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libShHealOper.dylib")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/GEOM-5.1.5.9/libSketcher.dylib")
FILE(INSTALL DESTINATION "/usr/local/lib/GEOM-5.1.5.9" TYPE SHARED_LIBRARY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/cmake-build/libSketcher.dylib")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libSketcher.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libSketcher.dylib")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "libSketcher.dylib"
      "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libSketcher.dylib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/GEOM-5.1.5.9/libSketcher.dylib")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/GEOM-5.1.5.9/")
FILE(INSTALL DESTINATION "/usr/local/include/GEOM-5.1.5.9" TYPE DIRECTORY FILES "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/inc/" FILES_MATCHING REGEX "/[^/]*\\.h[^/]*$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/Users/thomas/Devel/pythonocc/src/contrib/geom-5.1.2.7/cmake-build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
