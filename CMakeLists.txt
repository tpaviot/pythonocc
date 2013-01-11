##Copyright (c) 2011-2012 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

# pythonOCC cmake build file
SET(PROJECT_NAME pythonOCC)
PROJECT(${PROJECT_NAME})

# set pythonOCC version
SET(${PROJECT_NAME}_VERSION_MAJOR 0)
SET(${PROJECT_NAME}_VERSION_MINOR 6)
#  Empty for official releases, set to -dev, -rc1, etc for development releases
SET(${PROJECT_NAME}_VERSION_DEVEL -alpha)

CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

SET(CMAKE_BUILD_TYPE "MinSizeRel" CACHE STRING "Build type")
MESSAGE(STATUS " ${CMAKE_CXX_FLAGS}") 
SET(BUILD_SHARED_LIBS ON)
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})

#############################
# Option_With_Default macro #
#############################
MACRO( OPTION_WITH_DEFAULT OPTION_NAME OPTION_STRING OPTION_DEFAULT )
IF( NOT DEFINED ${OPTION_NAME} )
	SET( ${OPTION_NAME} ${OPTION_DEFAULT} )
ENDIF( NOT DEFINED ${OPTION_NAME} )
	OPTION( ${OPTION_NAME} "${OPTION_STRING}" ${${OPTION_NAME}} )
ENDMACRO( OPTION_WITH_DEFAULT OPTION_NAME OPTION_STRING OPTION_DEFAULT )

###################
# General options #
###################
OPTION_WITH_DEFAULT(${PROJECT_NAME}_WRAP_GEOM "Wraps the GEOM library (enabling parametric modeling)" OFF)
OPTION_WITH_DEFAULT(${PROJECT_NAME}_WRAP_SMESH "Wraps the SMESH library (enabling advanced meshing features" OFF)

##########
# Python #
##########
FIND_PACKAGE(PythonLibs)
INCLUDE_DIRECTORIES(${PYTHON_INCLUDE_PATH})

##############################################################
# 32/64 bit detection
###############################################################
IF(${CMAKE_SIZEOF_VOID_P} MATCHES "8")
	# If in 64bit mode, we have to define the _OCC64 variable
	ADD_DEFINITIONS(-D_OCC64)
	SET(CMAKE_SWIG_FLAGS ${CMAKE_SWIG_FLAGS} -D_OCC64)
	SET(BIT 64)
ELSE(${CMAKE_SIZEOF_VOID_P} MATCHES "8")
	SET(BIT 32)
ENDIF(${CMAKE_SIZEOF_VOID_P} MATCHES "8")
MESSAGE(STATUS "Build ${BIT}bit")

IF (NOT MSVC)
	IF( NOT DEFINED ${PROJECT_NAME}_BUILD_TYPE )
		SET( ${PROJECT_NAME}_BUILD_TYPE "MinSizeRel" CACHE STRING "Build type" ) # By default set release build
	ENDIF( NOT DEFINED ${PROJECT_NAME}_BUILD_TYPE )
	SET( CMAKE_BUILD_TYPE ${${PROJECT_NAME}_BUILD_TYPE} CACHE INTERNAL "Build type,
		immutable" FORCE )
ENDIF(NOT MSVC)

########
# SWIG #
########
FIND_PACKAGE(SWIG)
INCLUDE(${SWIG_USE_FILE})

################################
# OCE include and lib location #
################################
SET(OCE_INCLUDE_PATH /usr/local/include/oce CACHE PATH "OCE include path" )
SET(OCE_LIB_PATH /usr/local/lib CACHE PATH "OCE lib path" )

##############################################
# Installation directory                     #
# by default, installed to site-packages/OCC #
##############################################
EXECUTE_PROCESS(COMMAND python -c "from distutils.sysconfig import get_python_lib; import os;print get_python_lib()" OUTPUT_VARIABLE python_lib OUTPUT_STRIP_TRAILING_WHITESPACE )
SET(${PROJECT_NAME}_INSTALL_DIRECTORY ${python_lib}/OCC CACHE PATH "pythonOCC install directory" )

# List of OCE shared libraries to link with
SET(OCE_LIBRARIES PTKernel
                  TKAdvTools TKBin TKBinL TKBinTObj TKBinXCAF
                  TKBO TKBool TKBRep TKCAF TKCDF
                  TKernel
                  TKFeat TKFillet TKG2d TKG3d TKGeomAlgo TKGeomBase TKHLR
                  TKIGES TKLCAF TKMath TKMesh TKMeshVS TKNIS TKOffset
                  TKOpenGl TKPCAF TKPLCAF TKPrim TKPShape TKService TKShapeSchema
                  TKShHealing TKStdLSchema TKStdSchema TKSTEP TKSTEP209 TKSTEPAttr
                  TKSTEPBase TKSTL TKTObj TKTopAlgo
                  TKV2d TKV3d TKVRML TKXCAF TKXCAFSchema
                  TKXDEIGES TKXDESTEP TKXMesh TKXml TKXmlL TKXmlTObj
                  TKXmlXCAF TKXSBase TKVoxel)

# Tells CMake where are the required headers
INCLUDE_DIRECTORIES(${PYTHON_INCLUDE_PATH})
INCLUDE_DIRECTORIES(${OCE_INCLUDE_PATH})
LINK_DIRECTORIES(${OCE_LIB_PATH})

##############
# salomegeom #
##############
IF(${PROJECT_NAME}_WRAP_GEOM)
	SET(GEOM_INCLUDE_PATH /usr/local/include/geom CACHE PATH "geom include path" )
	SET(GEOM_LIB_PATH /usr/local/lib CACHE PATH "geom library path" )
	INCLUDE_DIRECTORIES(${GEOM_INCLUDE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/src/contrib/geom-6.3.1.8/inc_pythonocc)
	SET(GEOM_LIBRARIES GEOM)
	LINK_DIRECTORIES(${GEOM_LIB_PATH})
ENDIF(${PROJECT_NAME}_WRAP_GEOM)

##############
# salomesmesh #
##############
IF(${PROJECT_NAME}_WRAP_SMESH)
	SET(SMESH_INCLUDE_PATH /usr/local/include/smesh CACHE PATH "smesh include path" )
	SET(SMESH_LIB_PATH /usr/local/lib CACHE PATH "smesh library path" )
	INCLUDE_DIRECTORIES(${SMESH_INCLUDE_PATH})
	# include boost
	INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/src/contrib/boost-1.52.0)
	SET(SMESH_LIBRARIES SMESH)
	LINK_DIRECTORIES(${SMESH_LIB_PATH})
ENDIF(${PROJECT_NAME}_WRAP_SMESH)

######################################################
# Configure Build settings according to the platform #
######################################################
IF(UNIX)
  IF(APPLE)
    ######### MacOSX ###########
	INCLUDE_DIRECTORIES(/usr/X11R6/include)
    ADD_DEFINITIONS(-DHAVE_CONFIG_H -DCSFDB -DOCC_CONVERT_SIGNALS)
    SET(CMAKE_SWIG_FLAGS -O -w302,401,314,509,512
		-DCSFDB -DHAVE_CONFIG_H -DOCC_CONVERT_SIGNALS)
    SET(SWIG_FILES_PATH src/wrapper/SWIG_files/linux_darwin)
    SET(PLATFORM Darwin)
  ELSE(APPLE)
    ######### Unix/Linux ###########
    ADD_DEFINITIONS(-DHAVE_CONFIG_H -DCSFDB -DOCC_CONVERT_SIGNALS)
    SET(CMAKE_SWIG_FLAGS -O -w302,401,314,509,512 -DCSFDB -DHAVE_CONFIG_H -DOCC_CONVERT_SIGNALS)
    SET(SWIG_FILES_PATH src/wrapper/SWIG_files/linux_darwin)
    SET(PLATFORM Unix)
  ENDIF(APPLE)
ELSE(UNIX)
  IF(WIN32)
    ######### Windows ###########
    ADD_DEFINITIONS(-DWNT -DWIN32 -D_WINDOWS -DCSFDB -DHAVE_CONFIG_H)
	# specific windows defines for python version >=2.6.0
	EXECUTE_PROCESS(COMMAND python -c "import sys;print (2,6)>=sys.version_info[:2]" OUTPUT_VARIABLE PYTHON_26_OR_HIGHER OUTPUT_STRIP_TRAILING_WHITESPACE)
	IF(${PYTHON_26_OR_HIGHER} MATCHES "True")
	  ADD_DEFINITIONS(-DHAVE_ACOSH -DHAVE_ASINH -DHAVE_ATANH)
	ENDIF(${PYTHON_26_OR_HIGHER} MATCHES "True")
    SET(CMAKE_SWIG_FLAGS -O -w302,401,314,509,512 -DCSFDB -DWIN32 -D_WINDOWS)
    SET(SWIG_FILES_PATH src/wrapper/SWIG_files/win32)
    SET(PLATFORM win)
  ELSE(WIN32)
    MESSAGE(STATUS "Unknown platform")
  ENDIF(WIN32)
ENDIF(UNIX)
MESSAGE(STATUS "Platform:" ${PLATFORM})

################################################
# Define output path for generated libraries:  #
# platform/compiler-build_type-bits            #
# for instance:                                #
#     ./win32/bin/vc7.1-release-64             #
#     ./win32/bin/vc9-debug-32                 #
#     ./Unix/i386-debug-64                     #
################################################
IF(WIN32)
  IF(MSVC) # The compiler used is MSVC
    MESSAGE(STATUS "Found MSVC compiler: ${MSVC} ${MSVC_VERSION}")
    SET(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin/)
  ELSEIF (BORLAND) # The compiler used is BORLAND
    SET(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/win${BIT}/bin/${CMAKE_BUILD_TYPE})
  ELSE()
    SET(LIBRARY_OUTPUT_PATH win${BIT}/bin/${CMAKE_BUILD_TYPE})
  ENDIF()
  SET(EXECUTABLE_OUTPUT_PATH ${LIBRARY_OUTPUT_PATH})
ELSE(WIN32)
  SET(LIBRARY_OUTPUT_PATH ${PLATFORM}/${CMAKE_SYSTEM_PROCESSOR}-${CMAKE_BUILD_TYPE}-${BIT})
ENDIF(WIN32)
SET(CMAKE_SWIG_OUTDIR ${LIBRARY_OUTPUT_PATH})
MESSAGE(STATUS "output_path: ${LIBRARY_OUTPUT_PATH}")

############################
# OpenCASCADE Modules list #
############################
IF(WIN32)
  INCLUDE(${CMAKE_CURRENT_SOURCE_DIR}/cmake/OCE_Modules_Win.cmake)
ELSE(WIN32)
  INCLUDE(${CMAKE_CURRENT_SOURCE_DIR}/cmake/OCE_Modules_Unix.cmake)
ENDIF(WIN32)
# add an option to choose modules to compile
FOREACH(OCE_MODULE ${OCE_MODULES})
	OPTION_WITH_DEFAULT(OCEMODULES_WRAP_${OCE_MODULE} "Compile ${OCE_MODULE}" TRUE)
ENDFOREACH(OCE_MODULE ${OCE_MODULES})

###############################
# salomegeometry Modules list #
###############################
IF(${PROJECT_NAME}_WRAP_GEOM)
	INCLUDE(${CMAKE_CURRENT_SOURCE_DIR}/cmake/GEOM_Modules.cmake)
	FOREACH(GEOM_MODULE ${GEOM_MODULES})
		OPTION_WITH_DEFAULT(GEOMMODULES_WRAP_${GEOM_MODULE} "Compile ${GEOM_MODULE}" TRUE)
	ENDFOREACH(GEOM_MODULE ${GEOM_MODULES})
ENDIF(${PROJECT_NAME}_WRAP_GEOM)

############################
# salomesmesh Modules list #
############################
IF(${PROJECT_NAME}_WRAP_SMESH)
	INCLUDE(${CMAKE_CURRENT_SOURCE_DIR}/cmake/SMESH_Modules.cmake)
	FOREACH(SMESH_MODULE ${SMESH_MODULES})
		OPTION_WITH_DEFAULT(SMESHMODULES_WRAP_${SMESH_MODULE} "Compile ${SMESH_MODULE}" TRUE)
	ENDFOREACH(SMESH_MODULE ${SMESH_MODULES})
ENDIF(${PROJECT_NAME}_WRAP_SMESH)

###################
# Wrapper Modules #
###################

# OpenCASCADE Community Edition
FILE(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/${SWIG_FILES_PATH})
FOREACH(OCE_MODULE ${OCE_MODULES})
	IF(OCEMODULES_WRAP_${OCE_MODULE})
    	SET(FILE ${SWIG_FILES_PATH}/${OCE_MODULE}.i)
		SET_SOURCE_FILES_PROPERTIES(${FILE} PROPERTIES CPLUSPLUS ON)
    	SWIG_ADD_MODULE(${OCE_MODULE} python ${FILE})
    	SWIG_LINK_LIBRARIES(${OCE_MODULE} ${PYTHON_LIBRARIES} ${OCE_LIBRARIES})
	ENDIF(OCEMODULES_WRAP_${OCE_MODULE})
ENDFOREACH(OCE_MODULE)

# GEOM
IF(${PROJECT_NAME}_WRAP_GEOM)
	FOREACH(GEOM_MODULE ${GEOM_MODULES})
		IF(GEOMMODULES_WRAP_${GEOM_MODULE})
	    	SET(FILE ${SWIG_FILES_PATH}/${GEOM_MODULE}.i)
			SET_SOURCE_FILES_PROPERTIES(${FILE} PROPERTIES CPLUSPLUS ON)
	    	SWIG_ADD_MODULE(${GEOM_MODULE} python ${FILE})
	    	SWIG_LINK_LIBRARIES(${GEOM_MODULE} ${PYTHON_LIBRARIES} ${OCE_LIBRARIES} ${GEOM_LIBRARIES})
		ENDIF(GEOMMODULES_WRAP_${GEOM_MODULE})
	ENDFOREACH(GEOM_MODULE)
ENDIF(${PROJECT_NAME}_WRAP_GEOM)

# SMESH
IF(${PROJECT_NAME}_WRAP_SMESH)
	FOREACH(SMESH_MODULE ${SMESH_MODULES})
	  IF(SMESHMODULES_WRAP_${SMESH_MODULE})
	    SET(FILE ${SWIG_FILES_PATH}/${SMESH_MODULE}.i)
		SET_SOURCE_FILES_PROPERTIES(${FILE} PROPERTIES CPLUSPLUS ON)
	    SWIG_ADD_MODULE(${SMESH_MODULE} python ${FILE})
	    SWIG_LINK_LIBRARIES(${SMESH_MODULE} ${PYTHON_LIBRARIES} ${OCE_LIBRARIES} ${SMESH_LIBRARIES})
      ENDIF(SMESHMODULES_WRAP_${SMESH_MODULE})
    ENDFOREACH(SMESH_MODULE)
ENDIF(${PROJECT_NAME}_WRAP_SMESH)

# Build third part modules
# TODO : the following line is strange but necessary
EXECUTE_PROCESS(COMMAND ${CMAKE_COMMAND} -E make_directory src/wrapper/Visualization)
SET_SOURCE_FILES_PROPERTIES(src/wrapper/Visualization/Visualization.i PROPERTIES CPLUSPLUS ON)
INCLUDE_DIRECTORIES(src/wrapper/Visualization)
SET(VISUALIZATION_SOURCE_FILES
	src/wrapper/Visualization/Visualization.i
	src/wrapper/Visualization/Display3d.cpp
	src/wrapper/Visualization/Tesselator.cpp
	)
SWIG_ADD_MODULE(Visualization python ${VISUALIZATION_SOURCE_FILES})
IF(APPLE)
# on OSX, always add /System/Library/Frameworks/Cocoa.framework, even
# if GLX is enabled
SWIG_LINK_LIBRARIES(Visualization ${PYTHON_LIBRARIES} ${OCE_LIBRARIES} /System/Library/Frameworks/Cocoa.framework)
ELSE(APPLE)
SWIG_LINK_LIBRARIES(Visualization ${PYTHON_LIBRARIES} ${OCE_LIBRARIES})
ENDIF(APPLE)

################
# Installation #
################
IF(WIN32)
	SET(EXTENSION "pyd")
	SET(BUILD_DIR ${LIBRARY_OUTPUT_PATH})
ELSE(WIN32)
	SET(EXTENSION "so")
	SET(BUILD_DIR ${CMAKE_BINARY_DIR}/${LIBRARY_OUTPUT_PATH})
ENDIF(WIN32)

# install pythonOCC modules
FOREACH(OCE_MODULE ${OCE_MODULES})
	IF(OCEMODULES_WRAP_${OCE_MODULE})
		INSTALL(FILES ${BUILD_DIR}/${OCE_MODULE}.py DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY} )
		INSTALL(FILES ${BUILD_DIR}/_${OCE_MODULE}.${EXTENSION} DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY} )
	ENDIF(OCEMODULES_WRAP_${OCE_MODULE})
ENDFOREACH(OCE_MODULE)

# install GEOM wrapper modules
IF(${PROJECT_NAME}_WRAP_GEOM)
	FOREACH(GEOM_MODULE ${GEOM_MODULES})
		IF(GEOMMODULES_WRAP_${GEOM_MODULE})
			INSTALL(FILES ${BUILD_DIR}/${GEOM_MODULE}.py DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY} )
			INSTALL(FILES ${BUILD_DIR}/_${GEOM_MODULE}.${EXTENSION} DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY} )
		ENDIF(GEOMMODULES_WRAP_${GEOM_MODULE})
	ENDFOREACH(GEOM_MODULE)
ENDIF(${PROJECT_NAME}_WRAP_GEOM)

# install SMESH wrapper modules
IF(${PROJECT_NAME}_WRAP_SMESH)
	FOREACH(SMESH_MODULE ${SMESH_MODULES})
		IF(SMESHMODULES_WRAP_${SMESH_MODULE})
			INSTALL(FILES ${BUILD_DIR}/${SMESH_MODULE}.py DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY} )
			INSTALL(FILES ${BUILD_DIR}/_${SMESH_MODULE}.${EXTENSION} DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY} )
		ENDIF(SMESHMODULES_WRAP_${SMESH_MODULE})
	ENDFOREACH(SMESH_MODULE)
ENDIF(${PROJECT_NAME}_WRAP_SMESH)

# install third part modules
INSTALL(FILES ${BUILD_DIR}/Visualization.py DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY} )
INSTALL(FILES ${BUILD_DIR}/_Visualization.${EXTENSION} DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY} )
# install GC
INSTALL(FILES ${CMAKE_CURRENT_SOURCE_DIR}/src/wrapper/GarbageCollector.py DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY} )
# install addons
INSTALL(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/src/addons/Display DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY} )
INSTALL(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/src/addons/Utils DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY} )
INSTALL(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/src/addons/MSH DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY} )
INSTALL(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/src/addons/PAF DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY} )
INSTALL(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/src/addons/KBE DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY} )
INSTALL(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/src/addons/DYN DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY} )
# install background image
INSTALL(FILES ${CMAKE_CURRENT_SOURCE_DIR}/src/addons/Display/default_background.bmp DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY}/Display )
# install AUTHORS and LICENSE files
INSTALL(FILES ${CMAKE_CURRENT_SOURCE_DIR}/AUTHORS DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY} )
INSTALL(FILES ${CMAKE_CURRENT_SOURCE_DIR}/LICENSE DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY} )
# install __init__.py file
INSTALL(FILES ${CMAKE_CURRENT_SOURCE_DIR}/cmake/__init__.py DESTINATION ${${PROJECT_NAME}_INSTALL_DIRECTORY} )

#######################
# pythonOCC Packaging #
# $ make package      #
#######################
IF(UNIX)
  INCLUDE(InstallRequiredSystemLibraries)
ENDIF(UNIX)
SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "pythonOCC")
SET(CPACK_PACKAGE_VENDOR "Thomas Paviot")
SET(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE.txt")
SET(CPACK_SET_DESTDIR "ON")
SET(CPACK_PACKAGE_VERSION_MAJOR ${${PROJECT_NAME}_VERSION_MAJOR})
SET(CPACK_PACKAGE_VERSION_MINOR ${${PROJECT_NAME}_VERSION_MINOR})
SET(CPACK_PACKAGE_VERSION_PATCH 0)
SET(CPACK_PACKAGE_NAME ${PROJECT_NAME})
SET(CPACK_PACKAGE_CONTACT "pythonOCC users <pythonocc-users@gna.org")
INCLUDE(CPack)
