# SGEOM cmake build file
if (WIN32) #Problem with Fortran with MSVC
    PROJECT(SMESH CXX)
    MESSAGE("-- Build Win32")
ELSE(WIN32)
    MESSAGE("-- Build Unix")
    PROJECT(SMESH Fortran CXX)
ENDIF(WIN32)

CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

SET(CMAKE_BUILD_TYPE "Release") # By default, build in release mode
SET(BUILD_SHARED_LIBS OFF) # library will be statically linked
SET(LIBRARY_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake-build)
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})
MESSAGE(${CMAKE_CURRENT_SOURCE_DIR})
INCLUDE_DIRECTORIES(inc)
# Include boost includes directory
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/../)

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
#MESSAGE("-- OpenCASCADE include directory: ${OCC_INCLUDE_PATH}")
#MESSAGE("-- OpenCASCADE shared libraries directory: ${OCC_LIB_PATH}")

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
INCLUDE_DIRECTORIES(src/SMDS)
INCLUDE_DIRECTORIES(src/Driver)
INCLUDE_DIRECTORIES(src/DriverSTL)
INCLUDE_DIRECTORIES(src/DriverDAT)
INCLUDE_DIRECTORIES(src/DriverUNV)
INCLUDE_DIRECTORIES(src/SMESHDS)
INCLUDE_DIRECTORIES(src/SMESH)
INCLUDE_DIRECTORIES(src/MEFISTO2)

#######################
# Define source files #
#######################
FILE(GLOB libSMESH_source_files src/SMDS/*.cpp
                                src/Driver/*.cpp
                                src/DriverSTL/*.cpp
                                src/DriverDAT/*.cpp
                                src/DriverUNV/*.cpp
                                src/SMESHDS/*.cpp
                                src/SMESH/*.cpp src/Controls/*.cpp
                                src/StdMeshers/*.cpp
)

IF(WIN32)
    FILE(GLOB MEFISTO2_source_files src/MEFISTO2/aptrte.cpp src/MEFISTO2/MEFISTO2F.def)
ELSE(WIN32)
    FILE(GLOB MEFISTO2_source_files src/MEFISTO2/*.cpp src/MEFISTO2/trte.f)
ENDIF(WIN32)

##################################
# Build a single dynamic library #
##################################
ADD_LIBRARY(SMESH SHARED ${libSMESH_source_files} ${MEFISTO2_source_files})
TARGET_LINK_LIBRARIES(SMESH TKernel TKMath TKG2d TKG3d TKMeshVS
                      TKPrim TKGeomBase TKGeomAlgo TKBRep TKTopAlgo TKShHealing
                      TKAdvTools)
