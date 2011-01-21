'''
Created on Jan 19, 2011

@author: henrik
'''
from pyplusplus.decl_wrappers.calldef_wrapper import calldef_t, constructor_t
from pygccxml.declarations.matchers import matcher_base_t
from pygccxml.declarations.mdecl_wrapper import mdecl_wrapper_t
from pyplusplus.decl_wrappers.decl_wrapper import decl_wrapper_t
from pyplusplus.decl_wrappers.class_wrapper import class_t
from pyplusplus.decl_wrappers.namespace_wrapper import namespace_t
from pygccxml.declarations.calldef import argument_t

import pygccxml
import re
from pygccxml.declarations.cpptypes import type_t, reference_t, pointer_t

pygccxml.declarations.scopedef.scopedef_t.ALLOW_EMPTY_MDECL_WRAPPER = True



# Matchers


class include_matcher_t(matcher_base_t):
    def __call__(self, decl):
        return not decl.ignore and decl.exportable or isinstance(decl, constructor_t)

class object_matcher_t(matcher_base_t):
    def __call__(self, decl):
        return not decl.is_handle

class handle_matcher_t(matcher_base_t):
    def __call__(self, decl):
        return decl.is_handle


object_matcher = object_matcher_t()
handle_matcher = handle_matcher_t()
include_matcher = include_matcher_t()


class dummy_m(matcher_base_t):
    def __call__(self, decl):
        return True

#class arg_type_m(matcher_base_t):
#    def __init__(self, type_or_types, strict=False):
#        super(matcher_base_t, self).__init__()
#        if isinstance(type_or_types, str): 
#            self.types = [type_or_types]
#        else:
#            self.types = type_or_types
#            
#        self.strict = strict
#    def __call__(self, decl):
#        for t in self.types:
#            if t in str(decl):
#                return True
#    
#    def match_function_args(self, arg):
#        pass

class module_matcher(matcher_base_t):
    def __init__(self, name):
        self.module_name = name
    def __call__(self, decl):
        if re.match("^(Handle_)*%s_"%self.module_name, decl.name):
            return True
        return decl.name == self.module_name
    
class arg_str_matcher(matcher_base_t):
    def __init__(self, string_or_strings):
        self.str = string_or_strings
    def __call__(self, arg):
        if isinstance(self.str, str):
            return re.match(self.str, str(arg))
        else:
            for s in self.str:
                if re.match(s, str(arg)):
                    return True
        return False

def args(self, matcher=lambda v: True):
#    matcher = dummy_m()
#    
#    
#    for cond in conditions:
#        if isinstance(cond, matcher_base_t):
#            matcher = matcher & cond
#        else:
#            matcher = matcher & arg_type_m(cond)
    
    return mdecl_wrapper_t(filter(matcher, self.arguments))
calldef_t.args = args

decl_wrapper_t.main_template = None
#decl_wrapper_t.templates = []
#decl_wrapper_t.add_template = lambda self, v: 1
decl_wrapper_t.render = lambda self, indent=0: self.main_template.render(self, indent)
#argument_t.render = lambda self: str(self)
def _render_arg(self):
    ''' to make const defs same as old wrapper'''
    txt = str(self)
    if "const" in txt:
        return "const " + txt.replace("const ", "")
    return txt
argument_t.render = _render_arg

def is_param(self):
    if reference_t in self.bases:
        return True
    if isinstance(self, pointer_t):
        return True
    if str(self.type).startswith('std::list'):
        return True
    return False
    

argument_t.is_param = is_param


decl_wrapper_t.create_decl_string = lambda self: self.name #???




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


#make querying args a bit easier
def type_bases(self):
    bases = [self]
    while hasattr(bases[-1], "base"):
        bases.append(bases[-1].base)
    return [b.__class__ for b in bases]

def type_decl(self):
    base = self
    while hasattr(base, "base"):
        base = base.base
    if hasattr(base, "declaration"):
        return base.declaration
    return None

type_t.bases = type_bases
type_t.base_names = lambda b: [str(bb) for bb in b]
type_t.base_declaration = type_decl


#Module object, 

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
        print "init_list", module_names
        print "mods", [occ_module_t(name, ns) for name in module_names]
        list.__init__(self, [occ_module_t(name, ns) for name in module_names])
        print "self", self
            
    def get(self, name):
        if isinstance(name, (list, tuple)):
            return mdecl_wrapper_t(filter(lambda n: n.name in name, self))
        if hasattr(name, '__call__'):
            return mdecl_wrapper_t(filter(name, self))
        return mdecl_wrapper_t(filter(lambda n: n.name == name, self))
    
                


   
