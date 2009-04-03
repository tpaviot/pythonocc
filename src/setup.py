#!/usr/bin/env python

##Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)
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
import Modules
#from Modules import MODULES

init_time = time.time()
print "Building pythonOCC"
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
if ('-help' in sys.argv) or ('-h' in sys.argv):
    help_str="""pythonOCC builder system - (c) Thomas Paviot, 2008-2009.
usage: python setup.py build [options]
With [options]:
    -generate_swig: process swig files generation (if .i files already exist, you should skip this option)
    -modular: build modular
    -with_doc: add docstrings to pythonOCC classes
    -ccompiler: compiler can be either 'gcc', 'mingw32' or 'msvc'
    """
    print help_str
    sys.exit(0)

try:
    import psyco
    psyco.full()
except:
    print "psyco not found. This module can speed up pythonOCC compilation time by about 10%."
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
##
## OCC header file TopOpeBRepDS_tools.hxx maybe missing, causing a gccxml error.
##
#if not os.path.isfile(os.path.join(OCC_INC,'TopOpeBRepDS_tools.hxx')):
#    try:
#        f = open(os.path.join(OCC_INC,'TopOpeBRepDS_tools.hxx'),'w')
#        f.close()
#        print "TopOpeBRepDS_tools.hxx created in %s"%OCC_INC
#    except:
#        print "You don't have write acces to %s directory. Please use 'sudo python setup.py build'."%OCC_INC
#        sys.exit(0)
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
    # First set important OpenCascade env var
    # These settings are taken from OCC message forum:
    # http://www.opencascade.org/org/forum/thread_12800/
    # I did a test case in my OCAF application, and i could not see any problem, even with your first case.My environment variables concerning the memory manager are:
    #
    #MMGT_OPT=1 //use the optimised memory manager
    #MMGT_CLEAR=1 //this is important , at least in my case.Many problems could rise if i did not set this variable.Sets all bits of new allocated memory to NULL.
    #MMGT_REENTRANT=0 //My application is not multi threaded , so i do not need this.
    #init_fp.write('import os\n')
    #init_fp.write('#\n#Define OpenCascade behaviour settings\n#\n')
    #init_fp.write("os.environ['MMGT_CLEAR']='1'\n")
    #init_fp.write("os.environ['MMGT_OPT']='1'\n")
    #init_fp.write("os.environ['MMGT_REENTRANT']='0'\n")
    #init_fp.write("os.environ['CSF_EXCEPTION_PROMPT']='1'\n")
    #
    # Include Version number
    #
    init_fp.write("VERSION='%s'\n"%VERSION)
    #
    #
    #
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
             'TKXmlXCAF', 'TKXSBase', 'TKXSDRAW', 'wokcmd', 'wokdeliverysteps', 'wokdfltsteps',\
             'wokobjssteps', 'wokorbixsteps', 'woksteps', 'woktoolscmd', 'wokutilscmd', 'XCAFPlugin',\
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
if environment.WRAP_SALOME_GEOM:
    LIBS.extend(['Sketcher','ShHealOper','Partition','NMTTools',\
                        'NMTDS','GEOM','GEOMImpl',
                        'GEOMAlgo','Archimede'])
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
                    sources = [os.path.join(os.getcwd(),'Visualization','Visualization.i'),
                               os.path.join(os.getcwd(),'Visualization','Display3d.cpp'),
                               os.path.join(os.getcwd(),'Visualization','Display2d.cpp'),
                               os.path.join(os.getcwd(),'Visualization','NISDisplay3d.cpp'),
                               ],
                    include_dirs=[OCC_INC,os.path.join(os.getcwd(),'Visualization')],
                    library_dirs=[OCC_LIB,environment.SALOME_GEOM_LIB],
                    define_macros= DEFINE_MACROS,
                    swig_opts = SWIG_OPTS,
                    libraries = LIBS,
                    extra_compile_args = ECA,
                    extra_link_args = ELA,
                    ))
# Add Misc
extension.append(Extension("OCC._Misc",
                    sources = [os.path.join(os.getcwd(),'Misc','Misc.i')],
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
if environment.WRAP_SALOME_GEOM:
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

install_dir = os.path.join(sysconfig.get_python_lib(),'OCC')
data = (install_dir,\
        [os.path.join(os.getcwd(),'AUTHORS'),
         os.path.join(os.getcwd(),'..','gpl.txt')])
    
KARGS = {"ext_modules":extension}
#
# SETUP
#
setup(name = "pythonOCC",
      license = "GPL V3",
      url = "http://www.pythonocc.org",
      author = "Thomas Paviot",
      author_email = "thomas.paviot@free.fr",
      description = "OpenCascade 6.3.0 Python bindings",
      version=VERSION,
      long_description = """PythonOCC is a Python wrapper module for the
OpenCascade library. It contains python functions and classes
that will allow you to fully utilitize the OpenCascade library.
This version is built against OpenCascade 6.3.0""",
      package_dir = {'OCC.Display':os.path.join(os.getcwd(),'Display'),
                     'OCC.Utils':os.path.join(os.getcwd(),'..','Utils'),
                     'OCC.Toolkits':os.path.join(os.getcwd(),'..','Toolkits'),
                     'OCC.Toolkits.FoundationClasses':os.path.join(os.getcwd(),'..','Toolkits','FoundationClasses'),
                     'OCC.Toolkits.ModelingData':os.path.join(os.getcwd(),'..','Toolkits','ModelingData'),},
      packages = ['OCC','OCC.Display','OCC.Utils','OCC.Toolkits',\
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