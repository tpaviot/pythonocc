# GEOM cmake build file

PROJECT(GEOM)

CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

SET(CMAKE_BUILD_TYPE "Release") # By default, build in release mode
SET(BUILD_SHARED_LIBS ON)
SET(LIBRARY_OUTPUT_PATH cmake-build)
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})
INCLUDE_DIRECTORIES(inc)

########################################
# OpenCASCADE include and lib location #
########################################
# Find OpenCASCADE library, set include and lib path
IF(WIN32)
    # Under Windows, check the CASROOT env variable
    FIND_PATH(OCC_INCLUDE_PATH Standard_Real.hxx 
              $ENV{CASROOT}\\inc)
    SET(OCC_LIB_PATH "$ENV{CASROOT}\\win32\\lib")
    # Find the Standard_Real.hxx header in this path
ELSE(WIN32) #Unix
    FIND_PATH(OCC_INCLUDE_PATH Standard_Real.hxx $ENV{CASROOT}/inc)
    SET(OCC_LIB_PATH "$ENV{CASROOT}/lib")
    #FIND_LIBRARY(OCC_LIB_PATH TKernel PATHS $ENV{CASROOT}/lib)
    MESSAGE(${OCC_LIB_PATH})
ENDIF(WIN32)

# Check that these paths are ok
MESSAGE("-- OpenCASCADE include directory: ${OCC_INCLUDE_PATH}")
MESSAGE("-- OpenCASCADE shared libraries directory: ${OCC_LIB_PATH}")

# Tells CMake where are the required headers
INCLUDE_DIRECTORIES(${OCC_INCLUDE_PATH})
LINK_DIRECTORIES(${OCC_LIB_PATH})


############################
# Check 32/64 bit platform #
############################
IF (${CMAKE_SIZEOF_VOID_P} MATCHES "8") # It is 64bit, 32 bit systems returns 4
    ADD_DEFINITIONS(-D_OCC64)
    MESSAGE("-- Build 64bit")
ELSE (${CMAKE_SIZEOF_VOID_P} MATCHES "8")
    MESSAGE("-- Build 32bit")
ENDIF(${CMAKE_SIZEOF_VOID_P} MATCHES "8")

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
    ADD_DEFINITIONS(-DWNT -DWIN32 -D_WINDOWS -DCSFDB)
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
                               src/BlockFix/BlockFix*.cpp
                               src/GEOM/GEOM_*.cpp
                               src/Archimede/Archimede_VolumeSection.cpp
                               src/ExchangeBREP/ExchangeBREP_Export.cpp src/ExchangeBREP/ExchangeBREP_Import.cpp
                               src/ExchangeCSFDB/ExchangeCSFDB_Export.cpp src/ExchangeCSFDB/ExchangeCSFDB_Import.cpp
                               src/ExchangeIGES/ExchangeIGES_Export.cpp src/ExchangeIGES/ExchangeIGES_Import.cpp
                               src/ExchangeSTEP/ExchangeSTEP_Export.cpp src/ExchangeSTEP/ExchangeSTEP_Import.cpp
                               src/ExchangeSTL/ExchangeSTL_Export.cpp
                               src/ExchangeVRML/ExchangeVRML_Export.cpp
                               src/ShHealOper/ShHealOper_*.cpp
                               src/Sketcher/Sketcher_Profile.cpp
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
                           TKIGES TKSTEP TKSTL TKVRML
                           TKPrim TKFillet TKOffset
                           )

#################################
# Install lib in /usr/local/lib #
#################################
IF (UNIX)
    INSTALL(TARGETS GEOM DESTINATION /usr/local/lib)
ENDIF(UNIX)
