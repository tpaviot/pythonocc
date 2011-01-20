'''
Created on Jan 19, 2011

@author: henrik
'''
from pyplusplus.decl_wrappers.calldef_wrapper import calldef_t
from pygccxml.declarations.matchers import matcher_base_t
from pygccxml.declarations.mdecl_wrapper import mdecl_wrapper_t
from pyplusplus.decl_wrappers.decl_wrapper import decl_wrapper_t
from pyplusplus.decl_wrappers.class_wrapper import class_t
from pyplusplus.decl_wrappers.namespace_wrapper import namespace_t
from pygccxml.declarations.calldef import argument_t

import pygccxml
import re
pygccxml.declarations.scopedef.scopedef_t.ALLOW_EMPTY_MDECL_WRAPPER = True



# Matchers
include_matcher = lambda c: not c.ignore and c.exportable
object_matcher = lambda c: not c.is_handle
handle_matcher = lambda c: c.is_handle

class dummy_m(matcher_base_t):
    def __call__(self, decl):
        return True

class arg_type_m(matcher_base_t):
    def __init__(self, type_or_types, strict=False):
        super(matcher_base_t, self).__init__()
        if isinstance(type_or_types, str): 
            self.types = [type_or_types]
        else:
            self.types = type_or_types
            
        self.strict = strict
    def __call__(self, decl):
        for t in self.types:
            if t in str(decl):
                return True
    
    def match_function_args(self, arg):
        pass

def args(self, *conditions):
    matcher = dummy_m()
    for cond in conditions:
        if isinstance(cond, matcher_base_t):
            matcher = matcher and cond
        else:
            matcher = matcher and arg_type_m(cond)
    
    return mdecl_wrapper_t(filter(matcher, self.arguments))

class module_matcher(matcher_base_t):
    def __init__(self, name):
        self.module_name = name
    def __call__(self, decl):
        if re.match("^(Handle_)*%s_"%self.module_name, decl.name):
            return True
        return decl.name == self.module_name

#def render(self, indent=0):
#    if self.main_template is None:
#        print self.__class__
#    return self.main_template.render(self, indent)

#monkey patches to pyplusplus

calldef_t.args = args

decl_wrapper_t.main_template = None
#decl_wrapper_t.templates = []
#decl_wrapper_t.add_template = lambda self, v: 1
decl_wrapper_t.render = lambda self, indent=0: self.main_template.render(self, indent)
argument_t.render = lambda self: str(self)

decl_wrapper_t.create_decl_string = lambda self: self.name


def add_template(self, template):
    if not hasattr(self, '_templates'):
        self._templates = []
    self._templates.append(template)

def templates(self):
    if not hasattr(self, '_templates'):
        self._templates = []
    return self._templates


class_t.add_template = add_template
class_t.templates = templates
class_t.no_destructor = False
class_t.is_handle = False



def prefix(self):
    if '_' in self.name:  
        
        split = self.name.split('_')
        if split[0] == "Handle":
            return split[1]
        return split[0]
    return self.name

decl_wrapper_t.prefix = prefix

namespace_t.license_template = None



def filtered_query(func, name):
    def f(*args, **kwargs):
        filtered = filter(lambda d: d.prefix() == name, func(*args, **kwargs))
        return mdecl_wrapper_t(filtered)
    return f

class occ_module_t(object):
    ''' simple object to represent a python module without affecting the whole namespace stuff'''
    def __init__(self, name, ns):
        self.name = name
        self.alias = name
        self.parent_ns = ns
        self.license = None
        delegated = [ns.decls, ns.classes, ns.variables, 
                     ns.calldefs, ns.operator, ns.member_function,
                     ns.constructor, ns.member_operator, 
                     ns.casting_operators, ns.enumerations, 
                     ns.namespaces, ns.free_functions, ns.free_operators]
        
        for dele in delegated:
            setattr(self, dele.__name__, filtered_query(dele, self.name))

class module_list(list):
    def __init__(self, module_names, ns):
        self.modules = [occ_module_t(name, ns) for name in module_names]
            
    def get(self, name):
        if isinstance(name, (list, tuple)):
            return mdecl_wrapper_t(filter(lambda n: n.name in name, self.modules))
        if hasattr(name, '__call__'):
            return mdecl_wrapper_t(filter(name, self.modules))
        return mdecl_wrapper_t(filter(lambda n: n.name == name, self.modules))
    
                


   
