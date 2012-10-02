# SGEOM cmake build file
PROJECT(SMESH Fortran CXX)

SET(SMESH_VERSION_MAJOR 6)
SET(SMESH_VERSION_MINOR 5)
SET(SMESH_VERSION_PATCH 0)
SET(SMESH_VERSION_TWEAK 0)

CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

SET(CMAKE_BUILD_TYPE "Debug") # By default, build in release mode
SET(BUILD_SHARED_LIBS ON)
SET(LIBRARY_OUTPUT_PATH cmake-build)
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})
INCLUDE_DIRECTORIES(inc)

##############################
# Boost headers are required #
##############################
INCLUDE_DIRECTORIES(../boost-1.49.0/) 

################
# Check Fortran#
################
IF(UNIX)
    INCLUDE(CMakeDetermineFortranCompiler)
ENDIF(UNIX)
# Under Apple MacOSX 10.6 64 bit, problems with macresearch gfortran
# -> should use f77 from http://hpc.sourceforge.net/
IF(APPLE)
  IF(CMAKE_Fortran_COMPILER MATCHES "/bin/f77")
    SET(F77 True)
  ELSE(CMAKE_Fortran_COMPILER MATCHES "/bin/f77")
    SET(F77 False)
  ENDIF(CMAKE_Fortran_COMPILER MATCHES "/bin/f77")
ENDIF(APPLE)

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
    FIND_PATH(OCC_INCLUDE_PATH Standard_Real.hxx $ENV{OCEROOT}/include/oce /usr/include/oce)
    IF(NOT OCC_LIB_PATH)
         SET(OCC_LIB_PATH "$ENV{OCEROOT}/lib")
    ENDIF(NOT OCC_LIB_PATH)
    #FIND_LIBRARY(OCC_LIB_PATH TKernel PATHS $ENV{CASROOT}/lib)
    MESSAGE(${OCC_LIB_PATH})
ENDIF(WIN32)

# Check that these paths are ok
MESSAGE("-- OpenCASCADE include directory: ${OCC_INCLUDE_PATH}")
MESSAGE("-- OpenCASCADE shared libraries directory: ${OCC_LIB_PATH}")

# Tells CMake where are the required headers
INCLUDE_DIRECTORIES(${OCC_INCLUDE_PATH})
LINK_DIRECTORIES(${OCC_LIB_PATH})

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
INCLUDE_DIRECTORIES(src/NETGENPlugin)  
INCLUDE_DIRECTORIES(src/netgen-4.9.13/install/include)  
INCLUDE_DIRECTORIES(src/netgen-4.9.13)  # for config.h
INCLUDE_DIRECTORIES(../VTK/install/include/vtk-5.9) 

LINK_DIRECTORIES( ${LINK_DIRECTORIES} src/netgen-4.9.13/install/lib/LINUX ) 
INCLUDE_DIRECTORIES(src/TetgenPlugin)  
INCLUDE_DIRECTORIES(src/tetgen1.4.3)   
LINK_DIRECTORIES( ${LINK_DIRECTORIES} src/tetgen1.4.3 ) 
LINK_DIRECTORIES( ${LINK_DIRECTORIES} ../boost-1.49.0/stage/lib ) 
LINK_DIRECTORIES(../VTK/install/lib/vtk-5.9) 
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
				src/NETGENPlugin/*.cpp   
				src/TetgenPlugin/*.cpp   	
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
                      TKAdvTools  TKCAF  TKLCAF TKXCAF TKXDEIGES TKXDESTEP      
		      vtkCommon vtkGraphics vtkImaging vtkFiltering 
		      vtkIO vtkRendering vtkHybrid vtksys
		      vtkverdict vtkWidgets
		      boost_thread
		      tet
		      TKXSBase TKOffset TKBool  TKMesh TKBO TKIGES TKSTL TKSTEP 
		      nglib) 

IF(F77)
  TARGET_LINK_LIBRARIES(SMESH f2c)
ENDIF(F77)
IF(WIN32)
  TARGET_LINK_LIBRARIES(SMESH MEFISTO2F)
ENDIF(WIN32)
#################################
# Install lib in /usr/local/lib #
#################################
IF(NOT SMESH_INSTALL_LIB_DIR)
  SET(SMESH_INSTALL_LIB_DIR ${CMAKE_INSTALL_PREFIX}/lib)
ENDIF(NOT SMESH_INSTALL_LIB_DIR)

IF (UNIX)
    INSTALL(TARGETS SMESH DESTINATION ${SMESH_INSTALL_LIB_DIR})
ENDIF(UNIX)
