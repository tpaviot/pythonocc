'''
Created on Apr 22, 2010

@author: henrik

provides some custimization of pygcc module_builder
'''
# Copyright 2004-2008 Roman Yakovenko.
# Distributed under the Boost Software License, Version 1.0. (See
# accompanying file LICENSE_1_0.txt or copy at
# http://www.boost.org/LICENSE_1_0.txt)

import os
import sys
import time
import types
import warnings


from pygccxml import parser
from pygccxml import utils as pygccxml_utils
from pygccxml import declarations as decls_package
import occ_declarations
from pyplusplus.module_builder import module_builder
from occ_declarations import namespace_t, class_t
import re


class builder_t(module_builder.module_builder_t):
    """
    This class provides users with simple and intuitive interface to `Py++`
    and/or pygccxml functionality. If this is your first attempt to use `Py++`
    consider to read tutorials. You can find them on `web site <http://www.language-binding.net>`_.
    """

    def __init__(self
                  , files
                  , gccxml_path=''
                  , include_paths=None
                  , define_symbols=None
                  , cache=None
                  , optimize_queries=True
                  , ignore_gccxml_output=False
                  , encoding='ascii'
                  , gccxml_config=None):

        module_builder.module_builder_t.__init__(self, global_ns=None, encoding=encoding)

        if not gccxml_config:
            gccxml_config = parser.config_t(gccxml_path=gccxml_path
                                             , include_paths=include_paths
                                             , define_symbols=define_symbols
                                             , ignore_gccxml_output=ignore_gccxml_output
                                             )

        #may be in future I will add those directories to user_defined_directories to self.__code_creator.
        self.__parsed_files = map(pygccxml_utils.normalize_path
                                   , parser.project_reader_t.get_os_file_names(files))
        tmp = map(lambda file_: os.path.split(file_)[0], self.__parsed_files)
        self.__parsed_dirs = filter(None, tmp)

        self.global_ns = self.__parse_declarations(files
                                                    , gccxml_config
                                                    , cache
                                                    )

        self.run_query_optimizer()
            
    def __parse_declarations(self, files, gccxml_config, cache):
        if None is gccxml_config:
            gccxml_config = parser.config_t()
        compilation_mode = parser.COMPILATION_MODE.FILE_BY_FILE
        
        start_time = time.clock()
        self.logger.debug('parsing files - started')
        reader = parser.project_reader_t(gccxml_config, cache, occ_declarations.decl_factory_t())
        decls = reader.read_files(files, compilation_mode)

        self.logger.debug('parsing files - done( %f seconds )' % (time.clock() - start_time))
        self.logger.debug('settings declarations defaults - started')

        global_ns = decls_package.matcher.get_single(
                decls_package.namespace_matcher_t(name='::')
                , decls)

        start_time = time.clock()
        self.__apply_decls_defaults(global_ns, decls)
        self.logger.debug('settings declarations defaults - done( %f seconds )'
                           % (time.clock() - start_time))
        return global_ns

    def __filter_by_location(self, decl):     
        if not decl.location:
            return
        fpath = pygccxml_utils.normalize_path(decl.location.file_name)
        
        if pygccxml_utils.contains_parent_dir(fpath, self.__parsed_dirs):
            return
        if fpath in self.__parsed_files:
            return
        found = False
        for pfile in self.__parsed_files:
            if fpath.endswith(pfile):
                found = True
                break
        if not found:
            
            return True
            
    #def __filter_by_name(self, decl):

    def __apply_decls_defaults(self, global_ns, decls):
        return
        flatten_decls = decls_package.make_flatten(decls)
        #self.__filter_by_location( flatten_decls )
        
        #self.__filter_by_location( global_ns.decls() )
        modules = []
        print "defs"
        removed = set([])
        for decl in global_ns.classes():
            
            if not self.__filter_by_location(decl):
                decl.exclude()
                #print "remove", decl.name
                #global_ns.remove_declaration(decl)
                continue
            modules = {}
            print "decl", decl
            if not isinstance(decl, class_t):
                continue
            try:
                module_name = re.search("([A-Z]\w+)[_\Z]", decl.name).group(1)
                print "module name"
            except:
                #print "remove", decl.name
                decl.exclude()
                #global_ns.remove_declaration(decl)
                continue
            print decl
            
            if not module_name in modules:
                ns = namespace_t(module_name)
                modules[module_name] = ns
            else:
                ns = modules[module_name]
            ns.adopt_declaration(decl)
            removed.add(decl)


                
 

        
        #remove duplicate methods and rely on overloads instead
        
                
        
