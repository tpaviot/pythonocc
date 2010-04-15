# SGEOM cmake build file
if (WIN32) #Problem with Fortran with MSVC
    PROJECT(SMESH CXX)
ELSE(WIN32)
    PROJECT(SMESH Fortran CXX)
ENDIF(WIN32)

SET(SMESH_VERSION_MAJOR 5)
SET(SMESH_VERSION_MINOR 3)
SET(SMESH_VERSION_PATCH 0)
SET(SMESH_VERSION_TWEAK 0)

CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

SET(CMAKE_BUILD_TYPE "Release") # By default, build in release mode
SET(BUILD_SHARED_LIBS ON)
SET(LIBRARY_OUTPUT_PATH cmake-build)
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})
INCLUDE_DIRECTORIES(inc)

#############
# FindBoost #
#############
FIND_PACKAGE(Boost REQUIRED)
MESSAGE("-- Boost found: ${Boost_FOUND}")
INCLUDE_DIRECTORIES(${Boost_INCLUDE_DIR})
#MESSAGE("Popo: ${Boost_INCLUDE_DIR}")

################
# Check Fortran#
################
IF(UNIX)
    INCLUDE(CMakeDetermineFortranCompiler)
ENDIF(UNIX)

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
    #MESSAGE(${OCC_LIB_PATH})
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

############
# MEFISTO2 #
############
IF(WIN32)
    FILE(GLOB MEFISTO2_source_files src/MEFISTO2/aptrte.cpp src/MEFISTO2/MEFISTO2F.def)
ELSE(WIN32)
    FILE(GLOB src/MEFISTO2/*.cpp src/MEFISTO2/trte.f)
ENDIF(WIN32)
INCLUDE_DIRECTORIES(src/MEFISTO2)

ADD_LIBRARY(MEFISTO2 SHARED ${MEFISTO2_source_files})
IF(WIN32)
TARGET_LINK_LIBRARIES(MEFISTO2 MEFISTO2F)
ELSE(WIN32)
TARGET_LINK_LIBRARIES(MEFISTO2 f2c)
ENDIF(WIN32)

##############
# StdMeshers #
##############
FILE(GLOB StdMeshers_source_files src/StdMeshers/*.cpp)

INCLUDE_DIRECTORIES(src/StdMeshers)

ADD_LIBRARY(StdMeshers SHARED ${StdMeshers_source_files})
TARGET_LINK_LIBRARIES(StdMeshers SMESH TKernel TKMath TKAdvTools MEFISTO2)

###########
# INSTALL #
###########

# Path name install: for instance, SMESH-5.1.2.7
SET(INSTALL_PATH_NAME SMESH-${SMESH_VERSION_MAJOR}.${SMESH_VERSION_MINOR}.${SMESH_VERSION_PATCH}.${SMESH_VERSION_TWEAK})

IF(UNIX)
    # Libraries are installed by default in /usr/local/lib/SMESH-5.1.2.7
    INSTALL(TARGETS SMDS Driver DriverSTL DriverDAT DriverUNV
            SMESHDS SMESH StdMeshers
            DESTINATION /usr/local/lib/${INSTALL_PATH_NAME})
    # Headers are installed by default in /usr/local/include/SMESH-5.1.2.7
    INSTALL(DIRECTORY inc/
            DESTINATION /usr/local/include/${INSTALL_PATH_NAME}
            FILES_MATCHING PATTERN "*.h*")
ENDIF(UNIX)
