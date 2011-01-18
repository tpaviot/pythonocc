# SGEOM cmake build file
PROJECT(GEOM)

SET(GEOM_VERSION_MAJOR 5)
SET(GEOM_VERSION_MINOR 1)
SET(GEOM_VERSION_PATCH 2)
SET(GEOM_VERSION_TWEAK 7)

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

#########
# NMTDS #
#########
FILE(GLOB NMTDS_source_files src/NMTDS/NMTDS_*.cpp)
INCLUDE_DIRECTORIES(src/NMTDS)
ADD_LIBRARY(NMTDS SHARED ${NMTDS_source_files})
TARGET_LINK_LIBRARIES(NMTDS TKernel TKBRep TKBO TKMath)

###########
# NMTools #
###########
FILE(GLOB NMTTools_source_files src/NMTTools/NMTTools_*.cpp)
INCLUDE_DIRECTORIES(src/NMTTools)
ADD_LIBRARY(NMTTools SHARED ${NMTTools_source_files})
TARGET_LINK_LIBRARIES(NMTTools TKG3d TKG2d TKBO TKMath TKGeomAlgo TKGeomBase TKTopAlgo NMTDS)

############
# GEOMAlgo #
############
FILE(GLOB GEOMAlgo_source_files src/GEOMAlgo/GEOMAlgo_*.cpp)
FILE(GLOB BlockFix_source_files src/BlockFix/BlockFix*.cpp)
INCLUDE_DIRECTORIES(src/GEOMAlgo/ src/BlockFix)
ADD_LIBRARY(GEOMAlgo SHARED ${GEOMAlgo_source_files} ${BlockFix_source_files})
TARGET_LINK_LIBRARIES(GEOMAlgo TKernel TKService TKG2d TKG3d TKBRep TKBO TKBool TKMath NMTDS NMTTools TKMesh TKShHealing)

########
# GEOM #
########
FILE(GLOB GEOM_source_files src/GEOM/GEOM_*.cpp)
INCLUDE_DIRECTORIES(src/GEOM/)
ADD_LIBRARY(GEOM SHARED ${GEOM_source_files})
TARGET_LINK_LIBRARIES(GEOM TKLCAF TKCAF TKCDF TKAdvTools TKXSBase GEOMAlgo)

#############
# Archimede #
#############
ADD_LIBRARY(Archimede SHARED src/Archimede/Archimede_VolumeSection.cpp)
TARGET_LINK_LIBRARIES(Archimede TKMath TKG3d TKGeomBase TKernel TKBRep TKMesh TKGeomAlgo)

############
# Exchange #
############
ADD_LIBRARY(ExchangeBREP  SHARED src/ExchangeBREP/ExchangeBREP_Export.cpp src/ExchangeBREP/ExchangeBREP_Import.cpp)
TARGET_LINK_LIBRARIES(ExchangeBREP TKernel TKBRep TKMath)
ADD_LIBRARY(ExchangeCSFDB SHARED src/ExchangeCSFDB/ExchangeCSFDB_Export.cpp src/ExchangeCSFDB/ExchangeCSFDB_Import.cpp)
TARGET_LINK_LIBRARIES(ExchangeCSFDB TKernel TKBRep TKMath TKPShape PTKernel TKShapeSchema)
ADD_LIBRARY(ExchangeIGES  SHARED src/ExchangeIGES/ExchangeIGES_Export.cpp src/ExchangeIGES/ExchangeIGES_Import.cpp)
TARGET_LINK_LIBRARIES(ExchangeIGES TKernel TKBRep TKMath TKIGES TKXSBase)
ADD_LIBRARY(ExchangeSTEP  SHARED src/ExchangeSTEP/ExchangeSTEP_Export.cpp src/ExchangeSTEP/ExchangeSTEP_Import.cpp)
TARGET_LINK_LIBRARIES(ExchangeSTEP TKernel TKBRep TKMath TKSTEP TKXSBase)
ADD_LIBRARY(ExchangeSTL   SHARED src/ExchangeSTL/ExchangeSTL_Export.cpp)
TARGET_LINK_LIBRARIES(ExchangeSTL TKernel TKSTL)
ADD_LIBRARY(ExchangeVRML  SHARED src/ExchangeVRML/ExchangeVRML_Export.cpp)
TARGET_LINK_LIBRARIES(ExchangeVRML TKernel TKVRML)

##############
# ShHealOper #
##############
FILE(GLOB ShHealOper_source_files src/ShHealOper/ShHealOper_*.cpp)
ADD_LIBRARY(ShHealOper SHARED ${ShHealOper_source_files})
TARGET_LINK_LIBRARIES(ShHealOper TKernel TKMath TKBRep TKShHealing TKG3d TKG2d TKGeomAlgo TKTopAlgo TKGeomBase TKBool TKLCAF)

############
# Sketcher #
############
ADD_LIBRARY(Sketcher SHARED src/Sketcher/Sketcher_Profile.cpp)
TARGET_LINK_LIBRARIES(Sketcher TKernel TKMath TKBRep TKTopAlgo TKGeomAlgo TKG2d)

############
# GEOMImpl #
############
FILE(GLOB GEOMImpl_source_files src/GEOMImpl/GEOMImpl_*.cpp) 
ADD_LIBRARY(GEOMImpl SHARED ${GEOMImpl_source_files})
TARGET_LINK_LIBRARIES(GEOMImpl GEOMAlgo GEOM GEOMImpl Archimede ShHealOper Sketcher TKPrim TKFillet TKOffset)

#############
# Partition #
#############
FILE(GLOB Partition_source_files src/Partition/Partition_*.cpp)
INCLUDE_DIRECTORIES(src/Partition)
ADD_LIBRARY(Partition SHARED ${Partition_source_files})
TARGET_LINK_LIBRARIES(Partition TKernel TKG3d TKG2d TKBO TKBool TKOffset
                      TKMath TKBRep TKGeomAlgo TKGeomBase TKTopAlgo)

###########
# INSTALL #
###########

# Path name install: for instance, GEOM-5.1.2.7
SET(INSTALL_PATH_NAME geom-${GEOM_VERSION_MAJOR}.${GEOM_VERSION_MINOR}.${GEOM_VERSION_PATCH}.${GEOM_VERSION_TWEAK})

IF(UNIX)
    # Libraries are installed by default in /usr/local/lib/
    INSTALL(TARGETS Archimede  ExchangeBREP ExchangeCSFDB ExchangeIGES ExchangeSTEP ExchangeSTL
                ExchangeVRML GEOMAlgo GEOMImpl GEOM NMTDS NMTTools Partition ShHealOper Sketcher
                DESTINATION /usr/local/lib)
    # Headers are installed by default in /usr/local/include/geom-5.1.2.7
    INSTALL(DIRECTORY inc/
            DESTINATION /usr/local/include/${INSTALL_PATH_NAME}
            FILES_MATCHING PATTERN "*.*")
ENDIF(UNIX)

