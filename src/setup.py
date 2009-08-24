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

import glob
import os,os.path
import sys
import shutil
import time

# add the ./src directory to the sys.path list
sys.path.append(os.path.join(os.getcwd(),'wrapper'))
import Modules
from environment import VERSION

init_time = time.time()
print "Building pythonOCC-%s for %s."%(VERSION,sys.platform)

# Check whether generate swig .i files
if '-generate_swig' in sys.argv:
    GENERATE_SWIG = True
    sys.argv.remove('-generate_swig')
else:
    GENERATE_SWIG = False
# Check whether generate docstrings
if ('-with_doc' in sys.argv) and GENERATE_SWIG:
    GENERATE_DOC = True
    sys.argv.remove('-with_doc')
    r = raw_input("""IMPORTANT: the generate_doc argument extracts documentation strings from OCC header files.
    You should not redistribute this package since it could break the OpenCascade and CeCILL licenses.
    Enter 'Y' or 'y' if you accept this disclaimer and want to continue, 'n' otherwise.""")
    if (r!='Y' and r!='y'):
        print "on y est"
        sys.exit(0)
else:
    GENERATE_DOC = False
# Check whether Salome GEOM package must be wrapped. True by default.
if '-NO_GEOM' in sys.argv:
    WRAP_SALOME_GEOM = False #overload default behaviour
    sys.argv.remove('-NO_GEOM')
else:
    WRAP_SALOME_GEOM = True

# Check whether Salome GEOM package must be wrapped. True by default.
if '-SMESH' in sys.argv:
    WRAP_SALOME_SMESH = True #overload default behaviour
    sys.argv.remove('-SMESH')
else:
    WRAP_SALOME_SMESH = False

#Check whether build a 'all_in_one' distro (for Win32)
if '-ALL_IN_ONE' in sys.argv:
    ALL_IN_ONE = True #overload default behaviour
    sys.argv.remove('-ALL_IN_ONE')
else:
    ALL_IN_ONE = False

if ('-help' in sys.argv) or ('-h' in sys.argv):
    help_str="""pythonOCC builder system - (c) Thomas Paviot, 2008-2009.
Usage: python setup.py build [options]
With [options]:
    -generate_swig: process swig files generation (if .i files already exist, you should skip this option)
    -NO_GEOM: tells setup.py to *not* wrapp Salome GEOM package.
    -ccompiler: compiler can be either 'gcc', 'mingw32' or 'msvc'
Examples:
    - under Windows: python setup.py build -cmsvc install
    - under Windows, without the GEOM module: python setup.py build -cmsvc -NO_GEOM install
    - under Linux: python setup.py build install
    """
    print help_str
    sys.exit(0)

import distutils
from distutils.core import setup, Extension
from distutils import sysconfig
import environment
from environment import OCC_INC,OCC_LIB, VERSION,\
ECA, ELA, PYGCCXML_DEFINES, SWIG_OPTS, DEFINE_MACROS, SWIG_FILES_PATH_MODULAR
#
# Prompt
#
import SWIG_generator
if GENERATE_SWIG and not SWIG_generator.HAVE_PYGCCXML:
    print "pygccxml/py++ 1.0 have to be installed. Please check http://www.language-binding.net/pyplusplus/pyplusplus.html"
    sys.exit(0)
if GENERATE_SWIG:#a small things to do before building
    #
    # Under WNT, modify Standard_Real.hxx so that it can be parsed by GCCXML without issue
    #
    if sys.platform == 'win32':
        standard_real_header = os.path.join(OCC_INC,"Standard_Real.hxx")
        if not os.path.isfile(standard_real_header):
            print "%s not found."%standard_file_header
            sys.exit(0)
        else:
            fp = open(standard_real_header,"r")
            file_content = fp.read()
            fp.close()
            if not '__SWIG_GENERATION__' in file_content:#need rewriting
                key = raw_input("Original Standard_Real.hxx header file needs to be modified. Original file will be available with the name Standard_Real_Original.hxx.\nEnter 'y' or 'Y' if you whish to continue.'n' otherwise:")# first mode Standard_Real.hxx to Standard_Real_Original.hxx
                if key.lower()=='y':
                    shutil.copy(standard_real_header, os.path.join(OCC_INC,"Standard_Real_Original.hxx"))
                    #replacing string
                    file_content = file_content.replace("#if defined(WNT)","#if defined(WNT) && !defined(__SWIG_GENERATION__)")
                    fp = open(standard_real_header,"w")
                    fp.write(file_content)
                    fp.close()
                else:
                    sys.exit(0)
            else:
                print "Found modified Standard_Real.hxx header file."
    #
    # Remove all files from OCC folder
    #
    files_to_remove = glob.glob(os.path.join(os.getcwd(),'OCC','*'))
    for file_to_remove in files_to_remove:
        os.remove(file_to_remove) 
    #
    # Create paths
    #
    if not os.path.isdir(SWIG_FILES_PATH_MODULAR):
        os.mkdir(SWIG_FILES_PATH_MODULAR)

#
# Create 'OCC' folder if it does not exist
#
if not (os.path.isdir(os.path.join(os.getcwd(),'OCC'))):
        os.mkdir(os.path.join(os.getcwd(),'OCC'))
                               
#
# Package Name
#
PACKAGE = 'OCC'

def Create__init__():
    """
    Create the __init__.py file for OCC package.
    just create domething like: __all__ = ['gp,'gce']
    """
    print "Creating __init__.py script."
    init_directory = os.path.join(os.getcwd(),'OCC')
    if not os.path.isdir(init_directory):
        os.mkdir(init_directory)
    init_fp = open(os.path.join(init_directory,'__init__.py'),'w')
    #
    # if it is 'all_in_one' build, then the __init__.py script sets the env CSF_GraphicShr:
    #
    if ALL_IN_ONE and sys.platform=='win32':
        init_fp.write('import os\n')
        init_fp.write('import sys\n')
        init_fp.write("os.environ['CSF_GraphicShr'] = os.path.join(__path__[0],'TKOpenGl.dll')\n")
    #
    # Include Version number
    #
    init_fp.write("VERSION='%s'\n"%VERSION)
    init_fp.write('__all__=[')
    for module_tuple in Modules.MODULES:
        module_name = module_tuple[0]
        init_fp.write("'%s',\n"%module_name)
    init_fp.write("'Visualization',\n'Misc'\n")
    init_fp.write(']\n')
    init_fp.close()
    print "__init__.py script created."      
#
# OpenCascade libs
#
libraries = ['BinLPlugin', 'BinPlugin', 'BinXCAFPlugin', 'FWOSPlugin', 'mscmd', 'PTKernel',\
             'StdLPlugin', 'StdPlugin', 'TKAdvTools', 'TKBin', 'TKBinL', 'TKBinTObj', 'TKBinXCAF',\
             'TKBO', 'TKBool', 'TKBRep', 'TKCAF', 'TKCDF', 'TKCDLFront', 'TKCPPClient', 'TKCPPExt',\
             'TKCPPIntExt', 'TKCPPJini', 'TKCSFDBSchema', 'TKDCAF', 'TKDraw', 'TKernel',\
             'TKFeat', 'TKFillet', 'TKG2d', 'TKG3d', 'TKGeomAlgo', 'TKGeomBase', 'TKHLR', 'TKIDLFront',\
             'TKIGES', 'TKjcas','TKLCAF', 'TKMath', 'TKMesh', 'TKMeshVS', 'TKNIS', 'TKOffset',\
             'TKOpenGl', 'TKPCAF', 'TKPLCAF', 'TKPrim', 'TKPShape', 'TKService', 'TKShapeSchema',\
             'TKShHealing', 'TKStdLSchema', 'TKStdSchema', 'TKSTEP', 'TKSTEP209', 'TKSTEPAttr',\
             'TKSTEPBase', 'TKSTL', 'TKTCPPExt', 'TKTObj', 'TKTObjDRAW', 'TKTopAlgo', 'TKTopTest',\
             'TKV2d', 'TKV3d', 'TKViewerTest', 'TKVRML', 'TKWOK', 'TKWOKTcl', 'TKXCAF', 'TKXCAFSchema',\
             'TKXDEDRAW', 'TKXDEIGES', 'TKXDESTEP', 'TKXMesh', 'TKXml', 'TKXmlL', 'TKXmlTObj',\
             'TKXmlXCAF', 'TKXSBase', 'TKXSDRAW', 'XCAFPlugin',\
             'XmlLPlugin', 'XmlPlugin', 'XmlXCAFPlugin']
# Find the lib in OCC_LIB path and add it to the LIBS list
LIBS = []
for library in libraries:
    found = glob.glob(os.path.join(OCC_LIB,'*%s*'%library))
    if len(found)>0:
        LIBS.append(library)
#
# Salome Geom libs
#
if WRAP_SALOME_GEOM:
    LIBS.extend(['Sketcher','ShHealOper','Partition','NMTTools',\
                        'NMTDS','GEOM','GEOMImpl',
                        'GEOMAlgo','Archimede'])
#
# Salome SMESH libs
#
if WRAP_SALOME_SMESH:
    LIBS.extend(['Driver','DriverDAT','DriverSTL','DriverUNV',\
                        'MEFISTO2','SMDS','SMESH',
                        'SMESHDS','StdMeshers'])
#
# OpenCascade wrapper extensions
#
extension = []
for module in Modules.MODULES:
    SWIG_source_file = os.path.join(os.getcwd(),environment.SWIG_FILES_PATH_MODULAR,"%s.i"%module[0])
    if GENERATE_SWIG or not (os.path.isfile(SWIG_source_file)):
        builder = SWIG_generator.ModularBuilder(module, GENERATE_DOC)
    module_extension = Extension("OCC._%s"%module[0],
                    sources = [SWIG_source_file],
                    include_dirs=[OCC_INC,SWIG_FILES_PATH_MODULAR], #for TopOpeBRep_tools.hxx
                    library_dirs=[OCC_LIB,environment.SALOME_GEOM_LIB],
                    define_macros= DEFINE_MACROS,
                    swig_opts = SWIG_OPTS,
                    libraries = LIBS,
                    extra_compile_args = ECA,
                    extra_link_args = ELA,
                    )
    extension.append(module_extension)
# Add Visualization
extension.append(Extension("OCC._Visualization",
                    sources = [os.path.join(os.getcwd(),'wrapper','Visualization','Visualization.i'),
                               os.path.join(os.getcwd(),'wrapper','Visualization','Display3d.cpp'),
                               os.path.join(os.getcwd(),'wrapper','Visualization','Display2d.cpp'),
                               os.path.join(os.getcwd(),'wrapper','Visualization','NISDisplay3d.cpp'),
                               ],
                    include_dirs=[OCC_INC,os.path.join(os.getcwd(),'wrapper','Visualization')],
                    library_dirs=[OCC_LIB,environment.SALOME_GEOM_LIB],
                    define_macros= DEFINE_MACROS,
                    swig_opts = SWIG_OPTS,
                    libraries = LIBS,
                    extra_compile_args = ECA,
                    extra_link_args = ELA,
                    ))
# Add Misc
extension.append(Extension("OCC._Misc",
                    sources = [os.path.join(os.getcwd(),'wrapper','Misc','Misc.i')],
                    include_dirs=[OCC_INC],
                    library_dirs=[OCC_LIB,environment.SALOME_GEOM_LIB],
                    define_macros= DEFINE_MACROS,
                    swig_opts = SWIG_OPTS,
                    libraries = LIBS,
                    extra_compile_args = ECA,
                    extra_link_args = ELA,
                    ))
#
# Salome Geom extensions
#
if WRAP_SALOME_GEOM:
    for module in Modules.SALOME_GEOM_MODULES:
        SWIG_source_file = os.path.join(os.getcwd(),environment.SWIG_FILES_PATH_MODULAR,"%s.i"%module[0])
        if GENERATE_SWIG or not (os.path.isfile(SWIG_source_file)):
            print SWIG_source_file
            builder = SWIG_generator.ModularBuilder(module, GENERATE_DOC, environment.SALOME_GEOM_INC)
        module_extension = Extension("OCC._%s"%module[0],
                    sources = [SWIG_source_file],
                    include_dirs=[OCC_INC,environment.SALOME_GEOM_INC,SWIG_FILES_PATH_MODULAR], #for TopOpeBRep_tools.hxx
                    library_dirs=[OCC_LIB,environment.SALOME_GEOM_LIB],
                    define_macros= DEFINE_MACROS,
                    swig_opts = SWIG_OPTS,
                    libraries = LIBS,
                    extra_compile_args = ECA,
                    extra_link_args = ELA,
                    )
        extension.append(module_extension)

#
# Salome SMESH extensions
#
if WRAP_SALOME_SMESH:
    for module in Modules.SALOME_SMESH_MODULES:
        SWIG_source_file = os.path.join(os.getcwd(),environment.SWIG_FILES_PATH_MODULAR,"%s.i"%module[0])
        if GENERATE_SWIG or not (os.path.isfile(SWIG_source_file)):
            print SWIG_source_file
            builder = SWIG_generator.ModularBuilder(module, GENERATE_DOC, environment.SALOME_SMESH_INC)
        module_extension = Extension("OCC._%s"%module[0],
                    sources = [SWIG_source_file],
                    include_dirs=[OCC_INC,environment.SALOME_SMESH_INC,SWIG_FILES_PATH_MODULAR], #for TopOpeBRep_tools.hxx
                    library_dirs=[OCC_LIB,environment.SALOME_GEOM_LIB,environment.SALOME_SMESH_LIB],
                    define_macros= DEFINE_MACROS,
                    swig_opts = SWIG_OPTS,
                    libraries = LIBS,
                    extra_compile_args = ECA,
                    extra_link_args = ELA,
                    )
        extension.append(module_extension)

install_dir = os.path.join(sysconfig.get_python_lib(),'OCC')
data = (install_dir,\
        [os.path.join(os.getcwd(),'..','AUTHORS'),
         os.path.join(os.getcwd(),'..','LICENSE')])
    
KARGS = {"ext_modules":extension}
#
# SETUP
#
if ALL_IN_ONE and sys.platform=='win32':
    package_name = "pythonOCC-all_in_one"
else:
    package_name = "pythonOCC"

setup(name = package_name,
      license = "GPL V3",
      url = "http://www.pythonocc.org",
      author = "Thomas Paviot",
      author_email = "tpaviot@gmail.com",
      description = "A framework for agile CAD development",
      version=VERSION,
      long_description = """PythonOCC is a Python wrapper module for the
OpenCascade library. It contains python functions and classes
that will allow you to fully utilitize the OpenCascade library.
This version is built against OpenCascade 6.3.0""",
      package_dir = {'OCC.Display':os.path.join(os.getcwd(),'addons','Display'),
                     'OCC.Utils':os.path.join(os.getcwd(),'addons','Utils'),
                     'OCC.Utils.DataExchange':os.path.join(os.getcwd(),'addons','Utils','DataExchange'),
                     'OCC.Toolkits':os.path.join(os.getcwd(),'wrapper','Toolkits'),
                     'OCC.Toolkits.FoundationClasses':os.path.join(os.getcwd(),'wrapper','Toolkits','FoundationClasses'),
                     'OCC.Toolkits.ModelingData':os.path.join(os.getcwd(),'wrapper','Toolkits','ModelingData'),
                     'OCC.PAF':os.path.join(os.getcwd(),'addons','PAF'),
                     'OCC.KBE':os.path.join(os.getcwd(),'addons','KBE')},
      packages = ['OCC','OCC.Display','OCC.Utils','OCC.Utils.DataExchange','OCC.PAF','OCC.Toolkits',\
                  'OCC.KBE',\
                  'OCC.Toolkits.FoundationClasses',\
                  'OCC.Toolkits.ModelingData'],
      data_files = [data],
      **KARGS
      )
#
# At the end of the build process, create __init__ script
#
Create__init__()
if GENERATE_SWIG:
    print "%i exported classes"%SWIG_generator.nb_exported_classes
final_time = time.time()
print final_time-init_time
