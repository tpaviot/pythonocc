# GEOM cmake build file

PROJECT(GEOM)

SET(GEOM_VERSION_MAJOR 6)
SET(GEOM_VERSION_MINOR 5)
SET(GEOM_VERSION_PATCH 0)
#SET(GEOM_VERSION_TWEAK 0)
CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

#######################################
# Set the same ABI SOVERSION than OCE #
#######################################
SET(GEOM_ABI_SOVERSION 4)
SET(GEOM_ABI_VERSION ${GEOM_ABI_SOVERSION}.0.0)

SET(CMAKE_BUILD_TYPE "Release") # By default, build in release mode
SET(BUILD_SHARED_LIBS ON)
SET(LIBRARY_OUTPUT_PATH cmake-build)
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})
INCLUDE_DIRECTORIES(inc)

################################################################
# OpenCASCADE Community Edition (OCE) include and lib location #
################################################################
SET( OCE_INCLUDE_PATH /usr/local/include/oce CACHE
  PATH "OCE headers location" )
SET( OCE_LIB_PATH /usr/local/lib CACHE
  PATH "OCE libraries location" )

# Tells CMake where are the required headers
INCLUDE_DIRECTORIES(${OCE_INCLUDE_PATH})
LINK_DIRECTORIES(${OCE_LIB_PATH})

############################
# Check 32/64 bit platform #
############################
IF (${CMAKE_SIZEOF_VOID_P} MATCHES "8") # It is 64bit, 32 bit systems returns 4
    ADD_DEFINITIONS(-D_OCC64)
    MESSAGE("-- Build 64bit")
ELSE (${CMAKE_SIZEOF_VOID_P} MATCHES "8")
    MESSAGE("-- Build 32bit")
ENDIF(${CMAKE_SIZEOF_VOID_P} MATCHES "8")

#################
# Release build #
#################
IF (NOT MSVC)
  IF( NOT DEFINED ${PROJECT_NAME}_BUILD_TYPE )
    SET( ${PROJECT_NAME}_BUILD_TYPE "Release" CACHE STRING "Build type" ) # By default set release build
  ENDIF( NOT DEFINED ${PROJECT_NAME}_BUILD_TYPE )
  SET( CMAKE_BUILD_TYPE ${${PROJECT_NAME}_BUILD_TYPE} CACHE INTERNAL "Build type,
    immutable" FORCE )
ENDIF(NOT MSVC)

######################################################
# Configure Build settings according to the platform #
######################################################
IF(UNIX)
    # Same settings are used for both MacOSX and Unix/Linux
    ADD_DEFINITIONS(-DHAVE_CONFIG_H -DHAVE_LIMITS_H -DCSFDB -DLIN -DOCC_CONVERT_SIGNALS)
ELSE(UNIX)
  IF(WIN32)
    ######### Windows ###########
    MESSAGE("-- Windows system detected")
    ADD_DEFINITIONS(-DWNT -DWIN32 -D_WINDOWS -DNo_Exception -DCSFDB)
  ELSE(WIN32)
    MESSAGE("Unknown platform")
  ENDIF(WIN32)
ENDIF(UNIX)

#####################
# Add include paths #
#####################
INCLUDE_DIRECTORIES(src/NMTDS)
INCLUDE_DIRECTORIES(src/NMTTools)
INCLUDE_DIRECTORIES(src/GEOMAlgo/ src/BlockFix)
INCLUDE_DIRECTORIES(src/GEOM/)
INCLUDE_DIRECTORIES(src/Partition)

#######################
# Define source files #
#######################
FILE(GLOB libGEOM_source_files src/NMTDS/NMTDS_*.cpp
                               src/NMTTools/NMTTools_*.cpp
                               src/GEOMAlgo/GEOMAlgo_*.cpp
                               src/GEOMAlgo/BlockFix*.cpp
                               src/GEOM/GEOM_*.cpp
                               src/ARCHIMEDE/Archimede_VolumeSection.cpp
                               src/ExchangeBREP/ExchangeBREP_Export.cpp src/ExchangeBREP/ExchangeBREP_Import.cpp
                               src/ExchangeCSFDB/ExchangeCSFDB_Export.cpp src/ExchangeCSFDB/ExchangeCSFDB_Import.cpp
                               src/ExchangeIGES/ExchangeIGES_Export.cpp src/ExchangeIGES/ExchangeIGES_Import.cpp
                               src/ExchangeSTEP/ExchangeSTEP_Export.cpp src/ExchangeSTEP/ExchangeSTEP_Import.cpp
                               src/ExchangeSTL/ExchangeSTL_Export.cpp
                               src/ExchangeVRML/ExchangeVRML_Export.cpp
                               src/ShHealOper/ShHealOper_*.cpp
                               src/SKETCHER/Sketcher_Profile.cpp
                               src/GEOMImpl/GEOMImpl_*.cpp
                               src/Partition/Partition_*.cpp
                               )

##################################
# Build a single dynamic library #
##################################
ADD_LIBRARY(GEOM SHARED ${libGEOM_source_files})
TARGET_LINK_LIBRARIES(GEOM TKernel TKBRep TKBO TKMath
                           TKG3d TKG2d TKGeomAlgo TKGeomBase TKTopAlgo
                           TKService TKBool TKMesh TKShHealing
                           TKLCAF TKCAF TKCDF TKAdvTools TKXSBase
                           TKPShape PTKernel TKShapeSchema
                           TKIGES TKSTEPBase TKSTEP TKSTL TKVRML
                           TKPrim TKFillet TKOffset TKFeat
                           )
SET_TARGET_PROPERTIES(GEOM PROPERTIES
      SOVERSION ${${PROJECT_NAME}_ABI_SOVERSION}
      VERSION ${${PROJECT_NAME}_ABI_VERSION})

####################
# Install location #
####################
IF( NOT DEFINED ${PROJECT_NAME}_INSTALL_PREFIX )
  IF( WIN32 )
    SET(${PROJECT_NAME}_INSTALL_PREFIX
      "c:/${PROJECT_NAME}-${${PROJECT_NAME}_VERSION}")
  ELSE( WIN32 )
    SET(${PROJECT_NAME}_INSTALL_PREFIX
      "/usr/local")
  ENDIF( WIN32 )
ENDIF( NOT DEFINED ${PROJECT_NAME}_INSTALL_PREFIX )

SET( ${PROJECT_NAME}_INSTALL_PREFIX ${${PROJECT_NAME}_INSTALL_PREFIX} CACHE
  PATH "Install prefix prepended to target to create install location" )
SET( CMAKE_INSTALL_PREFIX "${${PROJECT_NAME}_INSTALL_PREFIX}" CACHE INTERNAL "Prefix
  prepended to install directories if target destination is not absolute,
  immutable" FORCE )

################
# Install GEOM #
################
IF (UNIX)
    # Install lib (by default to /usr/local/lib)
    INSTALL(TARGETS GEOM DESTINATION ${CMAKE_INSTALL_PREFIX}/lib)
    # Install headers (by default to /usr/local/include/geom)
    INSTALL(DIRECTORY inc/
            DESTINATION ${CMAKE_INSTALL_PREFIX}/include/geom
            FILES_MATCHING PATTERN "*.*"
            )
ENDIF(UNIX)

########################
# Packaging with CPack #
# $ make package       #
########################
SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "GEOM library")
SET(CPACK_PACKAGE_DESCRIPTION_FILE "${CMAKE_CURRENT_SOURCE_DIR}/README.LINUX")
SET(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/LICENCE.lgpl.txt")
SET(CPACK_SET_DESTDIR "ON")

# Define version
SET(CPACK_PACKAGE_VERSION_MAJOR ${GEOM_VERSION_MAJOR})
SET(CPACK_PACKAGE_VERSION_MINOR ${GEOM_VERSION_MINOR})
SET(CPACK_PACKAGE_VERSION_PATCH ${GEOM_VERSION_PATCH})
SET(CPACK_PACKAGE_NAME ${PROJECT_NAME} )
SET(CPACK_PACKAGE_CONTACT "pythonocc mailing list <pythonocc-users@gna.org>")
INCLUDE(InstallRequiredSystemLibraries)
 
INCLUDE(CPack)
