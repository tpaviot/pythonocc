'''
Created on Jan 19, 2011

@author: henrik
'''
from pygccxml.declarations import mdecl_wrapper
from pygccxml.declarations.mdecl_wrapper import mdecl_wrapper_t
from pyplusplus.decl_wrappers.namespace_wrapper import namespace_t

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
    
                
