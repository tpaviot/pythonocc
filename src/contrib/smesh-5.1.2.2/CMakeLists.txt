# SGEOM cmake build file
PROJECT(SMESH Fortran CXX)

SET(SMESH_VERSION_MAJOR 5)
SET(SMESH_VERSION_MINOR 1)
SET(SMESH_VERSION_PATCH 2)
SET(SMESH_VERSION_TWEAK 2)

CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

SET(CMAKE_BUILD_TYPE "Release") # By default, build in release mode
SET(BUILD_SHARED_LIBS ON)
SET(LIBRARY_OUTPUT_PATH cmake-build)
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})
INCLUDE_DIRECTORIES(inc)

##############################
# Boost headers are required #
##############################
INCLUDE_DIRECTORIES(../)

################
# Check Fortran#
################
INCLUDE(CMakeDetermineFortranCompiler)

################################
# OCE include and lib location #
################################
SET(OCE_INCLUDE_PATH /usr/local/include/oce CACHE PATH "OCE include path" )
SET(OCE_LIB_PATH /usr/local/lib CACHE PATH "OCE lib path" )

# Check that these paths are ok
MESSAGE("-- OpenCASCADE include directory: ${OCC_INCLUDE_PATH}")
MESSAGE("-- OpenCASCADE shared libraries directory: ${OCE_LIB_PATH}")

# Tells CMake where are the required headers
INCLUDE_DIRECTORIES(${OCC_INCLUDE_PATH})
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
# SMDS #
#########
FILE(GLOB SMDS_source_files src/SMDS/*.cpp)
INCLUDE_DIRECTORIES(src/SMDS)
ADD_LIBRARY(SMDS SHARED ${SMDS_source_files})
TARGET_LINK_LIBRARIES(SMDS TKernel)

##########
# Driver #
##########
FILE(GLOB Driver_source_files src/Driver/*.cpp)
INCLUDE_DIRECTORIES(src/Driver)
ADD_LIBRARY(Driver SHARED ${Driver_source_files})

#############
# DriverSTL #
#############
FILE(GLOB DriverSTL_source_files src/DriverSTL/*.cpp)
INCLUDE_DIRECTORIES(src/DriverSTL)
ADD_LIBRARY(DriverSTL SHARED ${DriverSTL_source_files})
TARGET_LINK_LIBRARIES(DriverSTL TKernel TKMath Driver SMDS)

#############
# DriverDAT #
#############
FILE(GLOB DriverDAT_source_files src/DriverDAT/*.cpp)
INCLUDE_DIRECTORIES(src/DriverDAT)
ADD_LIBRARY(DriverDAT SHARED ${DriverDAT_source_files})
TARGET_LINK_LIBRARIES(DriverDAT SMDS Driver)

#############
# DriverUNV #
#############
FILE(GLOB DriverUNV_source_files src/DriverUNV/*.cpp)
INCLUDE_DIRECTORIES(src/DriverUNV)
ADD_LIBRARY(DriverUNV SHARED ${DriverUNV_source_files})
TARGET_LINK_LIBRARIES(DriverUNV SMDS Driver)

###########
# SMESHDS #
###########
FILE(GLOB SMESHDS_source_files src/SMESHDS/*.cpp)
INCLUDE_DIRECTORIES(src/SMESHDS)
ADD_LIBRARY(SMESHDS SHARED ${SMESHDS_source_files})
TARGET_LINK_LIBRARIES(SMESHDS SMDS TKernel TKMath TKBRep)

#########
# SMESH #
#########
FILE(GLOB SMESH_source_files src/SMESH/*.cpp src/Controls/*.cpp)
INCLUDE_DIRECTORIES(src/SMESH)
ADD_LIBRARY(SMESH SHARED ${SMESH_source_files})
TARGET_LINK_LIBRARIES(SMESH SMDS SMESHDS TKernel TKMath TKG2d TKG3d TKMeshVS
                      TKPrim TKGeomBase TKGeomAlgo TKBRep TKTopAlgo TKShHealing
                      Driver DriverSTL DriverDAT DriverUNV)

##############
# StdMeshers #
##############
FILE(GLOB StdMeshers_source_files src/StdMeshers/*.cpp src/MEFISTO2/*.cpp src/MEFISTO2/trte.f)
INCLUDE_DIRECTORIES(src/StdMeshers)

ADD_LIBRARY(StdMeshers SHARED ${StdMeshers_source_files})
IF(APPLE)
TARGET_LINK_LIBRARIES(StdMeshers SMESH TKernel TKMath TKAdvTools f2c)
ELSE(APPLE)
TARGET_LINK_LIBRARIES(StdMeshers SMESH TKernel TKMath TKAdvTools)
ENDIF(APPLE)

###########
# INSTALL #
###########
IF(UNIX)
    # Libraries are installed by default in /usr/local/lib
    INSTALL(TARGETS SMDS Driver DriverSTL DriverDAT DriverUNV
            SMESHDS SMESH StdMeshers
            DESTINATION /usr/local/lib)
    # Headers are installed by default in /usr/local/include/smesh
    INSTALL(DIRECTORY inc/
            DESTINATION /usr/local/include/smesh
            FILES_MATCHING PATTERN "*.*")
ENDIF(UNIX)
########################
# Packaging with CPack #
########################
INCLUDE(InstallRequiredSystemLibraries)

# Define version
SET(CPACK_PACKAGE_VERSION_MAJOR ${SMESH_VERSION_MAJOR})
SET(CPACK_PACKAGE_VERSION_MINOR ${SMESH_VERSION_MINOR})
SET(CPACK_PACKAGE_VERSION_PATCH ${SMESH_VERSION_PATCH})
SET(CPACK_PACKAGE_VERSION_TWEAK ${SMESH_VERSION_TWEAK})

# Include license file
#SET(CPACK_RESOURCE_FILE_LICENSE ./LICENCE.lgpl.txt)

INCLUDE(CPack)
