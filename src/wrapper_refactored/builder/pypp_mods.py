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
from pyplusplus.decl_wrappers.typedef_wrapper import typedef_t
from pygccxml.declarations.declaration import declaration_t
from pyplusplus.decl_wrappers.enumeration_wrapper import enumeration_t

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
    return mdecl_wrapper_t(filter(matcher, self.arguments))
calldef_t.args = args

calldef_t._return_type_alias = None
 
def get_return_type_alias(self):
    return self._return_type_alias or self.return_type
def set_return_type_alias(self, val):
    self._return_type_alias = val;

calldef_t._return_type_alias = None
calldef_t.return_type_alias = property(get_return_type_alias, set_return_type_alias)


decl_wrapper_t.main_template = None

decl_wrapper_t.render = lambda self, indent=0: self.main_template.render(self, indent)

def _render_arg(self):
    ''' to make const defs same as old wrapper'''
    defval = ""
    if self.default_value:
        defval = "=%s" % self.default_value
    typ = str(self.type_alias)
    txt = "%s %s%s" % (typ, self.name, defval)
    if "const" in txt:
        return "const " + txt.replace("const ", "")
    return txt


def is_param(self):
    if reference_t in self.bases:
        return True
    if isinstance(self, pointer_t):
        return True
    if str(self.type).startswith('std::list'):
        return True
    return False
    
argument_t.render = _render_arg
argument_t.is_param = is_param


def create_decl_string(self, with_defaults=True):
    #if re.match("[A-Z]self.name
    
    if self.parent.name == '::':
        return self.name
    return "%s::%s" % (self.parent.name, self.name) 

class_t.create_decl_string = create_decl_string#lambda self: self.name #???
typedef_t.create_decl_string = create_decl_string#lambda self: self.name #???
enumeration_t.create_decl_string = create_decl_string#lambda self: self.name #???

def get_type_alias(self):
    return self._type_alias or self.type

def set_type_alias(self, val):
    self._type_alias = val;

argument_t._type_alias = None
argument_t.type_alias = property(get_type_alias, set_type_alias)


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
    
                


   
