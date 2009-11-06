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
# distutils stuff, necessary to customize compiler settings and setup the pythonOCC package
import distutils
from distutils.core import setup, Extension
from distutils import sysconfig
from distutils.command.build_ext import build_ext as _build_ext

sys.path.append(os.path.join(os.getcwd(),'wrapper'))
import Modules
from environment import VERSION
import environment
from environment import OCC_INC,OCC_LIB, VERSION,\
ECA, ELA, PYGCCXML_DEFINES, SWIG_OPTS, DEFINE_MACROS, SWIG_FILES_PATH_MODULAR
#print "Building pythonOCC-%s for %s"%(VERSION,sys.platform)
# Try to import multiprocessing(python2.6 or higher) or processing(python2.5) packages
try:
    import multiprocessing as processing
    ncpus = processing.cpu_count()
    #print "Enabled multiprocess compilation for %i cpu(s)"%nprocs
    HAVE_MULTIPROCESSING = True
except:
    HAVE_MULTIPROCESSING = False

init_time = time.time()

if '--enable_geom' in sys.argv:
    WRAP_SALOME_GEOM = False #overload default behaviour
    sys.argv.remove('--enable_geom')
else:
    WRAP_SALOME_GEOM = True

# Check whether Salome GEOM package must be wrapped. True by default.
if '--enable_smesh' in sys.argv:
    WRAP_SALOME_SMESH = True #overload default behaviour
    sys.argv.remove('--enable_smesh')
else:
    WRAP_SALOME_SMESH = False

#Check whether build a 'all_in_one' distro (for Win32)
if '--all_in_one' in sys.argv and sys.platform=='win32':
    ALL_IN_ONE = True #overload default behaviour
    sys.argv.remove('-ALL_IN_ONE')
else:
    ALL_IN_ONE = False

#Check whether the -j nprocs option is passed
nprocs = 1 #by default, jut 1 proc
for elem in sys.argv:
    if elem[:2]=='-j':
        nprocs = int(elem.split('-j')[1])
        sys.argv.remove(elem)
        break

#Check whether the -j nprocs is passed
if ('-help' in sys.argv) or ('-h' in sys.argv):
    help_str="""pythonOCC setup - (c) Thomas Paviot, 2008-2009.
Usage: python setup.py build [options]
With [options]:
    --enable_geom: tells setup.py to wrap Salome_GEOM library.
    --enable_smesh: tells setup.py to wrap Salome_SMESH library.
    -ccompiler: compiler can be either 'gcc', 'mingw32' or 'msvc'
Examples:
    - under Windows: python setup.py build -cmsvc install
    - under Windows, without the GEOM module: python setup.py build -cmsvc -NO_GEOM install
    - under Linux: python setup.py build install
    """
    print help_str
    sys.exit(0)


if nprocs>1 and HAVE_MULTIPROCESSING:
    if ncpus == 1:#just one CPU, no need for multiprocess:
        MULTI_PROCESS_COMPILATION = False
    else:
        #nprocs = int(options.nprocs)
        MULTI_PROCESS_COMPILATION = True
elif nprocs>1 and not HAVE_MULTIPROCESSING:
    raise NameError('The multiprocessing module connt be found. You can''t compile in multiprocess mode.')
else:
    MULTI_PROCESS_COMPILATION = False

import customize_build
#def customize_compiler(compiler):
#    '''Updates compiler settings for pythonOCC performances under Linux and MacOSX.
#    Objective is to reducd wrapper size (by removing the -g and -O2 default flags) and
#    tune the 32/64 bit architecture.
#    '''
#    if sys.platform == 'linux2':
#        #just remove the -g and -O2 flags that make the binding bigger
#        compiler_so = compiler.compiler_so
#        if '-g' in compiler_so:
#            compiler_so.remove('-g')
#        if '-O2' in compiler_so:
#            compiler_so.remove('-O2')
#    elif sys.platform =='darwin':
#        compiler_so = ['g++','-O0','-fPIC','-dynamic','-pipe']
#        # And modify linker_so
#        linker_so = [compiler.linker_so[0],'-F.', '--no_undefined','-bundle','-dynamic_lookup']
#        #g++-4.2 -Wl,-F. -bundle -undefined dynamic_lookup -arch i386 -arch ppc -arch x86_64 build/temp.macosx-10.6-universal-2.6/Users/thomas/Devel/pythonocc/src/wra
#        if environment.get_32_or_64_bits_platform()==64:
#            compiler_so.extend(['-arch','x86_64','-m64'])
#            linker_so.extend(['-arch','x86_64','-m64'])
#        else:
#            compiler_so.extend(['-arch','i386','-m32'])
#            linker_so.extend(['-arch','i386','-m32'])
#        linker_so.append('-L.')
#        linker_so.append('-lm')
#        linker_so.append('-lstdc++')
#        # Add the python library
#        python_version = sys.version
#        if python_version[0]=='2':
#            linker_so.append('-lpython2.%s'%python_version[2])
#        compiler.compiler_so = compiler_so
#        compiler.linker_so = linker_so
#    return compiler
#
##
## Function that builds an extension (setuptools). Necessary for multiprocess compilation
##
#def set_build_ext_instance():
#    global build_ext_instance
#    build_ext_instance = None
#
#def build_extension(ext):
#    sources = ext.sources
#    if sources is None or type(sources) not in (ListType, TupleType):
#        raise DistutilsSetupError, \
#              ("in 'ext_modules' option (extension '%s'), " +
#               "'sources' must be present and must be " +
#               "a list of source filenames") % ext.name
#    sources = list(sources)
#
#    fullname = build_ext_instance.get_ext_fullname(ext.name)
#    if build_ext_instance.inplace:
#        # ignore build-lib -- put the compiled extension into
#        # the source tree along with pure Python modules
#
#        modpath = string.split(fullname, '.')
#        package = string.join(modpath[0:-1], '.')
#        base = modpath[-1]
#
#        build_py = build_ext_instance.get_finalized_command('build_py')
#        package_dir = build_py.get_package_dir(package)
#        ext_filename = os.path.join(package_dir,
#                                    build_ext_instance.get_ext_filename(base))
#    else:
#        ext_filename = os.path.join(build_ext_instance.build_lib,
#                                    build_ext_instance.get_ext_filename(fullname))            
#    depends = sources + ext.depends
#    if not (build_ext_instance.force or newer_group(depends, ext_filename, 'newer')):
#        log.debug("skipping '%s' extension (up-to-date)", ext.name)
#        return
#    else:
#        log.info("building '%s' extension", ext.name)
#    sources = build_ext_instance.swig_sources(sources, ext)
#    extra_args = ext.extra_compile_args or []
#    macros = ext.define_macros[:]
#    for undef in ext.undef_macros:
#        macros.append((undef,))
#    # Here are modified the compiler settings
#    build_ext_instance.compiler = customize_compiler(build_ext_instance.compiler)
#    objects = build_ext_instance.compiler.compile(sources,
#                                    output_dir=build_ext_instance.build_temp,
#                                    macros=macros,
#                                    include_dirs=ext.include_dirs,
#                                    debug=build_ext_instance.debug,
#                                    extra_postargs=extra_args,
#                                    depends=ext.depends)
#    build_ext_instance._built_objects = objects[:]
#    if ext.extra_objects:
#        objects.extend(ext.extra_objects)
#    extra_args = ext.extra_link_args or []
#
#    language = ext.language or build_ext_instance.compiler.detect_language(sources)
#
#    build_ext_instance.compiler.link_shared_object(
#        objects, ext_filename,
#        libraries=build_ext_instance.get_libraries(ext),
#        library_dirs=ext.library_dirs,
#        runtime_library_dirs=ext.runtime_library_dirs,
#        extra_postargs=extra_args,
#        export_symbols=build_ext_instance.get_export_symbols(ext),
#        debug=build_ext_instance.debug,
#        build_temp=build_ext_instance.build_temp,
#        target_lang=language)
#
def get_build_ext_instance():
    return build_ext_instance

class build_ext(_build_ext):
    """Specialized Python source builder."""
    # implement whatever needs to be different...
    def __init__(self,*kargs):
        _build_ext.__init__(self,*kargs)
        self._extensions = []
        customize_build.build_ext_instance = self

    def build_extension(self,ext):
        ''' This method take the extensions, append them to a list, and pass it to a multiprocessing.Pool
        '''
        if MULTI_PROCESS_COMPILATION:
            self._extensions.append(ext)
            # Create Pool
            if len(self._extensions) == NB_EXT:
                pool = processing.Pool(nprocs)
                pool.map(customize_build.build_extension,self._extensions)
        else:
            customize_build.build_extension(ext)

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
GEOM_LIBS = ['Sketcher','ShHealOper','Partition','NMTTools',\
                        'NMTDS','GEOM','GEOMImpl',
                        'GEOMAlgo','Archimede']
#
# Salome SMESH libs
#
SMESH_LIBS = ['Driver','DriverDAT','DriverSTL','DriverUNV',\
                        'MEFISTO2','SMDS','SMESH',
                        'SMESHDS','StdMeshers']

if __name__=='__main__': #hack to enable multiprocessing under Windows
    extension = []
    for module in Modules.MODULES:
        SWIG_source_file = os.path.join(os.getcwd(),environment.SWIG_FILES_PATH_MODULAR,"%s.i"%module[0])
        if not (os.path.isfile(SWIG_source_file)):
            raise NameError('Missins swig file:%s'%SWIG_source_file)
        module_extension = Extension("OCC._%s"%module[0],
                        sources = [SWIG_source_file],
                        include_dirs=[OCC_INC,SWIG_FILES_PATH_MODULAR], #for TopOpeBRep_tools.hxx
                        library_dirs=[OCC_LIB,environment.SALOME_GEOM_LIB,environment.SALOME_SMESH_LIB],
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
                        library_dirs=[OCC_LIB,environment.SALOME_GEOM_LIB,environment.SALOME_SMESH_LIB],
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
                        library_dirs=[OCC_LIB,environment.SALOME_GEOM_LIB,environment.SALOME_SMESH_LIB],
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
            if not (os.path.isfile(SWIG_source_file)):
                raise NameError('Missins swig file:%s'%SWIG_source_file)
            module_extension = Extension("OCC._%s"%module[0],
                        sources = [SWIG_source_file],
                        include_dirs=[OCC_INC,environment.SALOME_GEOM_INC,SWIG_FILES_PATH_MODULAR],
                        library_dirs=[OCC_LIB,environment.SALOME_GEOM_LIB,environment.SALOME_SMESH_LIB],
                        define_macros= DEFINE_MACROS,
                        swig_opts = SWIG_OPTS,
                        libraries = LIBS + GEOM_LIBS,
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
            #if GENERATE_SWIG or not (os.path.isfile(SWIG_source_file)):
            if not (os.path.isfile(SWIG_source_file)):
                raise NameError('Missins swig file:%s'%SWIG_source_file)
            INCLUDE_DIRS = [OCC_INC,environment.SALOME_SMESH_INC,SWIG_FILES_PATH_MODULAR] #for TopOpeBRep_tools.hxx
            if sys.platform=='win32':
                INCLUDE_DIRS.append(environment.BOOST_INC)
            module_extension = Extension("OCC._%s"%module[0],
                        sources = [SWIG_source_file],
                        include_dirs=INCLUDE_DIRS,
                        library_dirs=[OCC_LIB,environment.SALOME_GEOM_LIB,environment.SALOME_SMESH_LIB],
                        define_macros= DEFINE_MACROS,
                        swig_opts = SWIG_OPTS,
                        libraries = LIBS + SMESH_LIBS,
                        extra_compile_args = ECA,
                        extra_link_args = ELA,
                        )
            extension.append(module_extension)
    
    NB_EXT = len(extension)
    
    install_dir = os.path.join(sysconfig.get_python_lib(),'OCC')
    bg_image_install_dir = os.path.join(sysconfig.get_python_lib(),'OCC','Display')
    data = [(install_dir,\
            [os.path.join(os.getcwd(),'..','AUTHORS'),
             os.path.join(os.getcwd(),'..','LICENSE'),
             os.path.join(os.getcwd(),'wrapper','GarbageCollector.py')]),
            (bg_image_install_dir,\
            [os.path.join(os.getcwd(),'addons','Display','default_background.bmp')]),
            ]
        
    KARGS = {"ext_modules":extension}
    #
    # SETUP
    #
    if ALL_IN_ONE and sys.platform=='win32':
        package_name = "pythonOCC-all_in_one"
    else:
        package_name = "pythonOCC"
    
    #
    # Create __init__ script
    #
    Create__init__()

    setup(cmdclass={'build_ext': build_ext},
          name = package_name,
          license = "GNU General Public License v3",
          url = "http://www.pythonocc.org",
          author = "Thomas Paviot",
          author_email = "tpaviot@gmail.com",
          description = "A CAD/PLM development library for the python programming language",
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
          data_files = data,
          **KARGS
          )
    
    final_time = time.time()
    print 'Compilation processed in %fs'%(final_time-init_time)
