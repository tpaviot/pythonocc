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

import sys
from distutils.command.build_ext import build_ext as _build_ext
from types import *
import os
from distutils.dep_util import newer_group
from distutils import log
import environment

def customize_compiler(compiler):
    '''Updates compiler settings for pythonOCC performances under Linux and MacOSX.
    Objective is to reducd wrapper size (by removing the -g and -O2 default flags) and
    tune the 32/64 bit architecture.
    '''
    if sys.platform == 'linux2':
        #just remove the -g and -O2 flags that make the binding bigger
        compiler_so = compiler.compiler_so
        if '-g' in compiler_so:
            compiler_so.remove('-g')
        if '-O2' in compiler_so:
            compiler_so.remove('-O2')
    elif sys.platform == 'win32':
        compile_options = compiler.compile_options
        if '/Ox' in compile_options:
            compile_options.remove('/Ox')
            compile_options.append('/O1') #produces smaller files
        compiler.compile_options = compile_options
    elif sys.platform =='darwin':
        compiler_so = ['g++','-O0','-fPIC','-dynamic','-pipe']
        # And modify linker_so
        linker_so = [compiler.linker_so[0],'-F.', '--no_undefined','-bundle','-dynamic_lookup']
        #g++-4.2 -Wl,-F. -bundle -undefined dynamic_lookup -arch i386 -arch ppc -arch x86_64 build/temp.macosx-10.6-universal-2.6/Users/thomas/Devel/pythonocc/src/wra
        if environment.get_32_or_64_bits_platform()==64:
            compiler_so.extend(['-arch','x86_64','-m64'])
            linker_so.extend(['-arch','x86_64','-m64'])
        else:
            compiler_so.extend(['-arch','i386','-m32'])
            linker_so.extend(['-arch','i386','-m32'])
        linker_so.append('-L.')
        linker_so.append('-lm')
        linker_so.append('-lstdc++')
        # Add the python library
        python_version = sys.version
        if python_version[0]=='2':
            linker_so.append('-lpython2.%s'%python_version[2])
        compiler.compiler_so = compiler_so
        compiler.linker_so = linker_so
    return compiler

#
# Function that builds an extension (setuptools). Necessary for multiprocess compilation
#
def set_build_ext_instance():
    global build_ext_instance
    build_ext_instance = None
    
def build_extension(ext):
    sources = ext.sources
    if sources is None or type(sources) not in (ListType, TupleType):
        raise DistutilsSetupError, \
              ("in 'ext_modules' option (extension '%s'), " +
               "'sources' must be present and must be " +
               "a list of source filenames") % ext.name
    sources = list(sources)

    fullname = build_ext_instance.get_ext_fullname(ext.name)
    if build_ext_instance.inplace:
        # ignore build-lib -- put the compiled extension into
        # the source tree along with pure Python modules

        modpath = string.split(fullname, '.')
        package = string.join(modpath[0:-1], '.')
        base = modpath[-1]

        build_py = build_ext_instance.get_finalized_command('build_py')
        package_dir = build_py.get_package_dir(package)
        ext_filename = os.path.join(package_dir,
                                    build_ext_instance.get_ext_filename(base))
    else:
        ext_filename = os.path.join(build_ext_instance.build_lib,
                                    build_ext_instance.get_ext_filename(fullname))            
    depends = sources + ext.depends
    if not (build_ext_instance.force or newer_group(depends, ext_filename, 'newer')):
        log.debug("skipping '%s' extension (up-to-date)", ext.name)
        return
    else:
        log.info("building '%s' extension", ext.name)
    sources = build_ext_instance.swig_sources(sources, ext)
    extra_args = ext.extra_compile_args or []
    macros = ext.define_macros[:]
    for undef in ext.undef_macros:
        macros.append((undef,))
    # Here are modified the compiler settings
    build_ext_instance.compiler = customize_compiler(build_ext_instance.compiler)
    objects = build_ext_instance.compiler.compile(sources,
                                    output_dir=build_ext_instance.build_temp,
                                    macros=macros,
                                    include_dirs=ext.include_dirs,
                                    debug=build_ext_instance.debug,
                                    extra_postargs=extra_args,
                                    depends=ext.depends)
    build_ext_instance._built_objects = objects[:]
    if ext.extra_objects:
        objects.extend(ext.extra_objects)
    extra_args = ext.extra_link_args or []

    language = ext.language or build_ext_instance.compiler.detect_language(sources)

    build_ext_instance.compiler.link_shared_object(
        objects, ext_filename,
        libraries=build_ext_instance.get_libraries(ext),
        library_dirs=ext.library_dirs,
        runtime_library_dirs=ext.runtime_library_dirs,
        extra_postargs=extra_args,
        export_symbols=build_ext_instance.get_export_symbols(ext),
        debug=build_ext_instance.debug,
        build_temp=build_ext_instance.build_temp,
        target_lang=language)

class build_ext(_build_ext):
    """Specialized Python source builder."""
    # implement whatever needs to be different...
    def __init__(self,*kargs):
        _build_ext.__init__(self,*kargs)
        self._extensions = []
        global build_ext_instance
        build_ext_instance = self
        self.user_options.append(('output=', 'O', 'output file'))
    
    def build_extension(self,ext):
        ''' This method take the extensions, append them to a list, and pass it to a multiprocessing.Pool
        '''
 #       global build_ext_instance
 #       build_ext_instance = self
        if MULTI_PROCESS_COMPILATION:
            self._extensions.append(ext)
            le = len(self._extensions)
            
            # Create Pool
            if len(self._extensions) == NB_EXT:
                pool = processing.Pool(nprocs)
                pool.map(build_extension,self._extensions)
        else:
            build_extension(ext)
