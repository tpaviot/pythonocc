##Copyright 2010 Thomas Paviot (tpaviot@gmail.com)
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
PROJECT(pythonOCC)
# set pythonOCC version
SET(pythonOCC_VERSION_MAJOR 0)
SET(pythonOCC_VERSION_MINOR 5)

CMAKE_MINIMUM_REQUIRED(VERSION 2.6)
SET(BUILD_SHARED_LIBS ON)
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})

MESSAGE("Building pythonOCC 0.5")
##########
# Python #
##########

FIND_PACKAGE(PythonLibs)
INCLUDE_DIRECTORIES(${PYTHON_INCLUDE_PATH})

#############
# 32/64 bit detection. To achieve that point, python is used.
# From python, running:
# >>import sys
# >> sys.maxint
# will return:
# 9223372036854775807 on 64bit
# and
# 2147483647 on 32bit systems
#############
MESSAGE("Check whether the system is 32 or 64 bit." )
EXECUTE_PROCESS(COMMAND python -c "import sys;print sys.maxint" OUTPUT_VARIABLE maxint_str)
IF (maxint_str MATCHES "2147483647")
    MESSAGE("-- 32bit system detected")
    SET(MODE "32bit")
ELSE(maxint_str MATCHES "2147483647")
    MESSAGE("-- 64bit system detected")
    SET(MODE "64bit")
ENDIF(maxint_str MATCHES "2147483647")

########
# SWIG #
########

# Find SWIG
FIND_PACKAGE(SWIG)
INCLUDE(${SWIG_USE_FILE})

###############
# OpenCASCADE #
###############

# Find OpenCASCADE library, set include and lib path
SET(OCC_LIBRARIES "-L/Library/OpenCASCADE/6.3.0/lib -lTKernel")
SET(OCC_INCLUDE_PATH "/Library/OpenCASCADE/6.3.0/inc")

# Tells CMake where are the required headers
INCLUDE_DIRECTORIES(${PYTHON_INCLUDE_PATH})
INCLUDE_DIRECTORIES(${OCC_INCLUDE_PATH})


######################################################
# Configure Build settings according to the platform #
######################################################
IF(UNIX)
  IF(APPLE)
    ######### MacOSX ###########
    MESSAGE("-- MacOSX system detected")
    ADD_DEFINITIONS(-DHAVE_CONFIG_H -DHAVE_LIMITS_H -DCSFDB -DLIN -DOCC_CONVERT_SIGNALS -D__PYTHONOCC_MAXINT__=2147483647)
    SET(CMAKE_SWIG_FLAGS -O -DCSFDB -DHAVE_CONFIG_H -DHAVE_LIMITS_H -DOCC_CONVERT_SIGNALS)
    SET(SWIG_FILES_PATH ./src/wrapper/SWIG/linux_darwin)
  ELSE(APPLE)
    ######### Unix/Linux ###########
    MESSAGE("-- Unix/Linux system detected")
    ADD_DEFINITIONS(-DHAVE_CONFIG_H -DHAVE_LIMITS_H -DCSFDB -DLIN -DOCC_CONVERT_SIGNALS -D__PYTHONOCC_MAXINT__=2147483647)
    SET(CMAKE_SWIG_FLAGS -O -DCSFDB -DHAVE_CONFIG_H -DHAVE_LIMITS_H -DOCC_CONVERT_SIGNALS -DLIN -DLIN_INTEL -D_GNU_SOURCE=1)
    SET(SWIG_FILES_PATH ./src/wrapper/SWIG/linux_darwin)
  ENDIF(APPLE)
ELSE(UNIX)
  IF(WIN32)
    ######### Windows ###########
    MESSAGE("-- Windows system detected")
    ADD_DEFINITIONS(-DWNT -DWIN32 -D_WINDOWS -DCSFDB -D__PYTHONOCC_MAXINT__=2147483647)
    SET(CMAKE_SWIG_FLAGS -O -DCSFDB -DWIN32 -D_WINDOWS)
    SET(SWIG_FILES_PATH ./src/wrapper/SWIG/win32)
  ELSE(WIN32)
    MESSAGE("Unknown platform")
  ENDIF(WIN32)
ENDIF(UNIX)
# If in 64bit mode, we have to define the _OCC64 variable
IF (MODE MATCHES "64bit")
    ADD_DEFINITIONS(-D_OCC64)
    SET(CMAKE_SWIG_FLAGS ${CMAKE_SWIG_FLAGS} -D_OCC64)
ENDIF(MODE MATCHES "64bit")

################
# Modules list #
################
LIST(APPEND OCC_MODULES "Standard" "MMgt")

###################
# Wrapper Modules #
###################
FOREACH(OCC_MODULE ${OCC_MODULES})
    SET(FILE ${SWIG_FILES_PATH}/${OCC_MODULE}.i)
	SET_SOURCE_FILES_PROPERTIES(${FILE} PROPERTIES CPLUSPLUS ON)
    SWIG_ADD_MODULE(${OCC_MODULE} python ${FILE})
    SWIG_LINK_LIBRARIES(${OCC_MODULE} ${PYTHON_LIBRARIES} ${OCC_LIBRARIES})
ENDFOREACH(OCC_MODULE)

