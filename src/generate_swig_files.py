#!/usr/bin/env python

##Copyright 2008-2013 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU Lesser General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU Lesser General Public License for more details.
##
##You should have received a copy of the GNU Lesser General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

import sys
import os
import glob

sys.path.append(os.path.join(os.getcwd(), 'wrapper'))
import SWIG_generator
import Modules
import environment

try:
    #if sys.version_info[:3] >= (2,6,0):
    import multiprocessing as processing
    #else:
    #   import processing
    nprocs = processing.cpu_count()
    MULTI_PROCESS_GENERATION = True
except:
    MULTI_PROCESS_GENERATION = False
import time


def check_paths():
    #
    # Under WNT, modify Standard_Real.hxx so that it can be parsed by
    # GCCXML without issue
    #
    if sys.platform == 'win32':
        standard_real_header = os.path.join(environment.OCC_INC, "Standard_Real.hxx")
        if not os.path.isfile(standard_real_header):
            print "%s not found." % standard_real_header
            sys.exit(0)
    #
    # Create paths
    #
    if not os.path.isdir(environment.SWIG_FILES_PATH_MODULAR):
        os.mkdir(environment.SWIG_FILES_PATH_MODULAR)


def generate_SWIG_file_for_module(module):
    ''' For each module, create the siwg .i file to be processed
    '''
    if module in Modules.SALOME_GEOM_MODULES:
        SWIG_generator.ModularBuilder(module, environment.SALOME_GEOM_INC)
    elif module in Modules.SALOME_SMESH_MODULES:
        SWIG_generator.ModularBuilder(module, environment.SALOME_SMESH_INC)
    else:
        SWIG_generator.ModularBuilder(module)


def generate_swig_multiprocess(module_list):
    ''' Generate swig files with parallel support
    '''
    init_time = time.time()
    P = processing.Pool(nprocs)
    P.map(generate_SWIG_file_for_module, module_list)
    final_time = time.time()
    print final_time-init_time


def generate_swig_single_process(module_list):
    ''' Generate swig files in single process mode (multiprocessing not found)
    '''
    init_time = time.time()
    for module in module_list:
        generate_SWIG_file_for_module(module)
    final_time = time.time()
    print "%i exported classes" % SWIG_generator.nb_exported_classes
    print final_time-init_time

if __name__ == '__main__':
    check_paths()
    # Check if a module name is passed to the command line
    if len(sys.argv) > 1:
        module_name_to_wrap = sys.argv[1]
        if module_name_to_wrap == 'GEOM':
            print "Generating swig files for the GEOM library"
            modules_to_wrap = Modules.SALOME_GEOM_MODULES
        elif module_name_to_wrap == 'SMESH':
            print "Generating swig files for the SMESH library"
            modules_to_wrap = Modules.SALOME_SMESH_MODULES
        else:
            modules_to_wrap = None
        # Try to find the module with the name provided
            for module in Modules.get_all_modules():
                if module[0] == module_name_to_wrap:
                    modules_to_wrap = [module]
                    break
        #print modules_to_wrap
        if modules_to_wrap is None:
            raise NameError("Unknown module")
    else:
        if sys.platform == 'win32':
            modules_to_wrap = Modules.COMMON_MODULES + Modules.WIN_MODULES
        else:
            modules_to_wrap = Modules.COMMON_MODULES + Modules.UNIX_MODULES
    if MULTI_PROCESS_GENERATION:
        print "Generating pythonOCC SWIG files (MultiProcess mode)."
        generate_swig_multiprocess(modules_to_wrap)
    else:
        print "Generating pythonOCC SWIG files (Single process mode)."
        generate_swig_single_process(modules_to_wrap)
