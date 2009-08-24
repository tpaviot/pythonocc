#!/usr/bin/env python

##Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)
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

#
# This module sets necessary paths for building pythonOCC
#
import sys
import os, os.path
import shutil
import platform
from distutils import sysconfig
import subprocess


#===============================================================================
# VARIABLES
#===============================================================================

VERSION = 'path_to_0.4'         # Define pythonOCC version

#===============================================================================
# UTILITIES
#===============================================================================

# Automatic detection of OpenCASCADE required headers and libs paths

def GetOCCPaths():
    """
    Returns the tuple (OCC_INC, OCC_LIB)
    """
    print "Finding OCC_INC..."
    # Looking for Standard_Transient.hxx file
    h = subprocess.Popen(['locate','Standard_Transient.hxx'],stdout=subprocess.PIPE).communicate()[0]
    #Takes the last one:
    possible_occ_inc = map(os.path.dirname,h.split('\n'))
    #We care that we don't take the OCC_SRC lib
    s = subprocess.Popen(['locate','Standard_Transient.cxx'],stdout=subprocess.PIPE).communicate()[0]
    possible_occ_src = map(os.path.dirname,s.split('\n'))
    # Remove possible occ_src from possible occ_inc
    for path in possible_occ_src:
        if path in possible_occ_inc:
            possible_occ_inc.remove(path)
    occ_inc = possible_occ_inc.pop() #Take the last one
    print occ_inc
    print "Finding OCC_LIB..."
    if not sys.platform == 'darwin':
        l = subprocess.Popen(['locate','libTKOpenGl.so'],stdout=subprocess.PIPE).communicate()[0]
    else:
        # on OSX the .dylib extension is used rather than .so or .dll
        l = subprocess.Popen(['locate','libTKOpenGl.dylib'],stdout=subprocess.PIPE).communicate()[0]
    possible_occ_lib = map(os.path.dirname,l.split('\n'))
    # Remove possible occ_src from possible occ_lib
    for path in possible_occ_src:
        if path in possible_occ_lib:
            possible_occ_lib.remove(path)
    occ_lib = possible_occ_lib.pop()
    return (occ_inc,occ_lib)

def which(executable, path_only=True):
    '''
    mimics the `which` command
    @param executable: the name of the executable your looking for
    @param path_only: will just return the path of the executable
    so, rather /usr/local/bin rather than /usr/local/bin/gccxml  
    '''
    l = subprocess.Popen(['which',executable],stdout=subprocess.PIPE).communicate()[0]
    if not path_only:
        return l
    else:
        return os.path.split(l.strip())[0]
    
#===============================================================================
# Define paths
#===============================================================================
try:
    OCC_ROOT = os.environ['CASROOT']
    OCC_INC = os.path.join(OCC_ROOT,'inc')
    if sys.platform=='win32':
        OCC_LIB = os.path.join(OCC_ROOT,'win32','lib')
    else:
        OCC_LIB = os.path.join(OCC_ROOT,'lib')
except:
    OCC_ROOT = None
    OCC_INC = '/your_path'
    OCC_LIB = '/your_lib'
    

if sys.platform=='win32':
    SWIG_FILES_PATH_MODULAR = os.path.join(os.getcwd(),'wrapper','SWIG','win32')
    # Try to find OCC paths from environment analysis
    SALOME_GEOM_LIB = os.path.join(os.getcwd(),'..','bin','SalomeGeometry','win32','lib')
    GCC_XML_PATH = os.path.join(os.getcwd(),'contrib','pygccxml','gccxml_bin','v09','win32','bin')
    PYGCCXML_DEFINES = ['WNT','__SWIG_GENERATION__','CSFDB','WIN32','_WINDOWS']
    DEFINE_MACROS = [('WNT', None),('WIN32',None),\
                     ('_WINDOWS',None),('CSFDB',None),\
                     ('__PYTHONOCC_MAXINT__',sys.maxint)]
    if sys.version_info[:3] >= (2,6,0):
        DEFINE_MACROS += [('HAVE_ACOSH',None),('HAVE_ASINH',None),('HAVE_ATANH',None)]
    ECA = ['/GL','/link']
    SWIG_OPTS = ['-O','-c++','-DWNT',\
                 '-w302,401,314,509,512','-Wall','-DCSFDB','-DWIN32','-D_WINDOWS','-outdir','%s'%os.path.join(os.getcwd(),'OCC')]
    ELA = []
    EXTRA_LIBS = []
    
elif sys.platform=='linux2':
    SWIG_FILES_PATH_MODULAR = os.path.join(os.getcwd(),'wrapper','SWIG','linux_darwin')
    os.environ['CC'] = 'g++'
    os.environ['CPP'] = 'g++'
    if OCC_ROOT!=None:
        OCC_INC = os.path.join(OCC_ROOT,'inc')
        OCC_LIB = os.path.join(OCC_ROOT,'lib')
    else:
        OCC_INC = '/opt/OpenCASCADE6.3.0/inc'
        OCC_LIB = '/opt/OpenCASCADE6.3.0/lib' # Ubuntu 8.04 Hardy default installation path for libraries
    SALOME_GEOM_LIB = '/opt/SalomeGeometry/lib'
    SALOME_SMESH_LIB = '/opt/salomesmesh/lib'
    GCC_XML_PATH = '/usr/bin' # Ubuntu 8.04 Hardy installation path for gccxml
    PYGCCXML_DEFINES = ['HAVE_CONFIG_H','HAVE_LIMITS_H','CSFDB','OCC_CONVERT_SIGNALS','LIN','LININTEL','_GNU_SOURCE=1']
    DEFINE_MACROS = [('HAVE_CONFIG_H',None),('HAVE_LIMITS_H',None),\
                     ('CSFDB',None),('OCC_CONVERT_SIGNALS',None),\
                     ('LIN',None),('LININTEL',None),('_GNU_SOURCE','1'),\
                     ('__PYTHONOCC_MAXINT__',sys.maxint)]
    SWIG_OPTS = ['-python','-modern','-fcompact','-c++','-DHAVE_LIMITS_H','-DHAVE_CONFIG_H','-DCSFDB',\
                 '-w302,314,509,512','-DOCC_CONVERT_SIGNALS','-DLIN','-DLININTEL','-D_GNU_SOURCE=1',\
                 '-outdir','%s'%os.path.join(os.getcwd(),'OCC')]
    ECA = ['-O0','-march=%s'%platform.machine()]
    lib_python = sysconfig.get_config_var('BLDLIBRARY').split(' ')[1]
    ELA = ['-Wl,--no-undefined','-lm','-lstdc++',lib_python]
    EXTRA_LIBS = ['m','stc++',lib_python]
    
elif sys.platform=='darwin':
    
    # --- OSX
    SWIG_FILES_PATH_MODULAR = os.path.join(os.getcwd(),'wrapper','SWIG','linux_darwin')
    # Fill in this part with your own settings
#     os.environ['CC'] = 'g++'
#     os.environ['CPP'] = 'g++'
# #    OCC_INC = '/usr/local/inc'
# #    OCC_LIB = '/usr/local/lib'
#     OCC_LIB = '/usr/local/lib/OCC'
#     OCC_INC = '/Volumes/DATA/Src/OCC/OpenCASCADE6.3.0/ros/mac/inc'
#     SALOME_GEOM_INC = os.path.join(os.getcwd(),'..','ThirdPart','SalomeGeometry','inc')
#     SALOME_GEOM_LIB = os.path.join(os.getcwd(),'..','ThirdPart','SalomeGeometry','win32','lib')
#     GCC_XML_PATH = '/usr/bin' 
#     PYGCCXML_DEFINES = ['HAVE_CONFIG_H','HAVE_LIMITS_H','CSFDB','OCC_CONVERT_SIGNALS']
#     DEFINE_MACROS = [('HAVE_CONFIG_H',None),('HAVE_LIMITS_H',None),\
#                      ('CSFDB',None),('OCC_CONVERT_SIGNALS',None),\
#                      ('__PYTHONOCC_MAXINT__',sys.maxint)]



    SWIG_OPTS = ['-modern','-fcompact','-c++','-DHAVE_LIMITS_H','-DHAVE_CONFIG_H','-DCSFDB',\
                  '-w302,314,509,512','-DOCC_CONVERT_SIGNALS',\
                  '-outdir','%s'%os.path.join(os.getcwd(),'OCC')]

#     ECA = ['-O0','-march=%s'%platform.machine()]
    #lib_python = sysconfig.get_config_var('BLDLIBRARY').split(' ')
    
    # some how this variable is not being picked up
    # returns '', not this...
    # found more here: http://archives.free.net.ph/message/20081230.180055.3a24f2d2.ca.html
    lib_python = '-L. -lpython2.5' 
#     ELA = ['-Wl,--no-undefined','-lm','-lstdc++',lib_python]

    os.environ['CC'] = 'g++'
    os.environ['CPP'] = 'g++'
    OCC_LIB = '/usr/local/lib/OCC'
    OCC_INC = '/Volumes/DATA/Src/OCC/OpenCASCADE6.3.0/ros/mac/inc'
    SALOME_GEOM_LIB = 'usr/local/lib/SalomeGeom'
    #GCC_XML_PATH = which('gccxml')
    GCC_XML_PATH = 'usr/bin'
    
    if GCC_XML_PATH == '':
        print 'gccxml was not found'
    
    PYGCCXML_DEFINES = ['HAVE_CONFIG_H','HAVE_LIMITS_H','CSFDB','OCC_CONVERT_SIGNALS']
    DEFINE_MACROS = [('HAVE_CONFIG_H',None),('HAVE_LIMITS_H',None),\
                     ('CSFDB',None),('OCC_CONVERT_SIGNALS',None),\
                     ('__PYTHONOCC_MAXINT__',sys.maxint)]
#    SWIG_OPTS = ['-python','-modern','-fcompact','-c++','-DHAVE_LIMITS_H','-DHAVE_CONFIG_H','-DCSFDB',\
#                 '-w302,314,509,512','-DOCC_CONVERT_SIGNALS',\
#                 '-outdir','%s'%os.path.join(os.getcwd(),'OCC')]
    ECA = ['-O0']
    ELA = ['-Wl', '--no-undefined','-lm','-lstdc++',]
    #EXTRA_LIBS = ['m','stc++',lib_python]
    
    '''
        os.environ['CC'] = 'g++'
        os.environ['CPP'] = 'g++'
        OCC_LIB = '/usr/local/lib/OCC'
        OCC_INC = '/Volumes/DATA/Src/OCC/OpenCASCADE6.3.0/ros/mac/inc'
        SALOME_GEOM_INC = '/Volumes/DATA/Src/OCC/pythonocc/pythonocc_SVN/ThirdPart/SalomeGeometry/inc' # '/Volumes/OSX/usr/local/lib/SalomeGeom/include'
        SALOME_GEOM_LIB = '/Volumes/OSX/usr/local/lib/SalomeGeom/lib'
        GCC_XML_PATH = '/usr/bin' 
        PYGCCXML_DEFINES = ['HAVE_CONFIG_H','HAVE_LIMITS_H','CSFDB','OCC_CONVERT_SIGNALS']
        DEFINE_MACROS = [('HAVE_CONFIG_H',None),('HAVE_LIMITS_H',None),\
                         ('CSFDB',None),('OCC_CONVERT_SIGNALS',None),\
                         ('__PYTHONOCC_MAXINT__',sys.maxint)]
        SWIG_OPTS = ['-modern','-fcompact','-c++','-DHAVE_LIMITS_H','-DHAVE_CONFIG_H','-DCSFDB',\
                     '-w302,314,509,512','-DOCC_CONVERT_SIGNALS',\
                     '-outdir','%s'%os.path.join(os.getcwd(),'OCC')]
        ECA = ['-O0']
        #lib_python = sysconfig.get_config_var('BLDLIBRARY').split(' ')[1]
        #ELA = ['-Wl,--no-undefined','-lm','-lstdc++',lib_python]
        ELA = ['-Wl', '--no-undefined','-lm','-lstdc++',]
    
    '''    
    

else:
    raise "Unsupported platform\nCurrently win32 / linux / osx are supported"

#===============================================================================
# Common paths
#===============================================================================
PYTHON_INC = sysconfig.get_python_inc()
PYTHON_LIB = sysconfig.get_python_lib()
VISUALIZATION_PATH = os.path.join(os.getcwd(),'Visualization')
MISC_PATH = os.path.join(os.getcwd(),'Misc')
CONFIG_H_PATH = OCC_ROOT
SALOME_GEOM_INC = os.path.join(os.getcwd(),'contrib','SalomeGeometry','inc_pythonocc')
SALOME_SMESH_INC = os.path.join(os.getcwd(),'contrib','salomesmesh_no_netgen','inc')

if __name__=='__main__':
    print GetOCCPaths()
