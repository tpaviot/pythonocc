'''
Created on Apr 22, 2010

@author: henrik
'''
from pygccxml import declarations
from pygccxml.declarations.matchers import matcher_base_t
from pyplusplus import _logging_, messages
import re

def create_decl_string(self):
    return self.name
declarations.declaration_t.create_decl_string = create_decl_string




def doc(m):
    doc = []
    for l in reversed(file(m.location.file_name, 'r').readlines()[0:m.location.line-1]):
        if l.startswith("//"):
            doc.append(re.sub("\/\/\!*", "", l).strip())  
        else:
            break      
    return "\n".join(reversed(doc))
    

class decl_wrapper_t(object):
    id = None
    alias = None #check
    ignore = False #check 
    documentation = None #check
    main_template = None #check => _code generator

    def rename( self, new_name ):
        self.alias = new_name

    def exclude( self, compilation_errors=False ):
        self.ignore = True

    def include( self, already_exposed=False ):
        self.ignore = False
        self.already_exposed = already_exposed

    def render(self, indent=0):
        if self.main_template is None:
            print self.__class__
        return self.main_template.render(self, indent)

    def create_decl_string(self):
        return self.alias
    
    def parent_module(self):
        tmp = self
        while hasattr(tmp, 'parent'):
            tmp = tmp.parent
            if isinstance(tmp, namespace_t):
                return tmp
        return None
            
        

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


def _render_arg(self):
    ''' to make const defs same as old wrapper'''
    txt = str(self)
    if "const" in txt:
        return "const " + txt.replace("const ", "")
    return txt

declarations.cpptypes.reference_t
declarations.argument_t.render = _render_arg
declarations.argument_t.parent = None
declarations.argument_t.id = None
declarations.type_t.id = None
def _parent_module(self):
    tmp = self
    while hasattr(tmp, 'parent'):
        tmp = tmp.parent
        if isinstance(tmp, namespace_t):
            return tmp
    return None
declarations.argument_t.parent_module = _parent_module

class variable_t(declarations.variable_t, decl_wrapper_t):
    getter = None
    setter = None
    
class calldef_t(declarations.calldef_t, decl_wrapper_t):
    def __init__(self, *args, **kwargs):
        declarations.calldef_t.__init__(self, *args, **kwargs)
        #self.overloads = []
    
    #@property
    #def overloads(self):
    
    def _set_arguments(self, arguments):
        declarations.mdecl_wrapper_t(arguments).parent = self
        self._arguments = arguments
        
    def args(self, *conditions):
        matcher = dummy_m()
        for cond in conditions:
            if isinstance(cond, matcher_base_t):
                matcher = matcher and cond
            else:
                matcher = matcher and arg_type_m(cond)
        
        return declarations.mdecl_wrapper_t(filter(matcher, self.arguments))


class member_function_t(declarations.member_function_t, calldef_t):
    pass
class constructor_t(declarations.constructor_t, calldef_t):
    pass
class destructor_t(declarations.destructor_t, calldef_t):
    pass
class member_operator_t(declarations.member_operator_t, calldef_t):
    pass
class free_function_t(declarations.free_function_t, calldef_t):
    pass
class free_operator_t(declarations.free_operator_t, calldef_t):
    pass
class typedef_t(declarations.typedef_t, decl_wrapper_t):
    pass
class enum_value(decl_wrapper_t):
    pass
    

class enumeration_t(declarations.enumeration_t, decl_wrapper_t):
    def __init__(self, name='', values=None, **kwargs):
        declarations.enumeration_t.__init__(self, name, values)
        decl_wrapper_t.__init__(self, **kwargs)
        self.value_aliases = dict(((name, name) for name in self.values))
        
    def rename_value(self, name, new_name):
        self.value_aliases[name] = new_name
        
    def aliased_values(self):
        return [self.value_aliases[n] for n in self.values]  

class enumerated_value_t(decl_wrapper_t):
    def __init__(self):
        pass
    

class class_t(declarations.class_t, decl_wrapper_t):  
    is_handle = False
    no_destructor = False
    
    def add_template(self, template):
        if not hasattr(self, '_templates'):
            self._templates = []
        self._templates.append(template)
    
    #@property
    def templates(self):
        if not hasattr(self, '_templates'):
            self._templates = []
        return self._templates

    
    def _get_name_impl(self):
        return self._name
    
    def __init__(self, name='', class_type=None, is_abstract=False, **kwargs):
        declarations.class_t.__init__(self, name)
        if name.startswith("Handle_"):
            self.is_handle = True

class class_declaration_t(declarations.class_declaration_t, decl_wrapper_t):
    pass
class casting_operator_t(declarations.casting_operator_t, calldef_t):
    pass

class namespace_t(declarations.namespace_t, decl_wrapper_t):
    license_template = None
    
    def __init__(self, *args, **kwargs):
        declarations.namespace_t.__init__(self, *args, **kwargs)
        self.include_files = []


class decl_factory_t(declarations.decl_factory_t):
    """declarations factory class"""
    def __init__(self):
        declarations.decl_factory_t.__init__(self)

    def create_member_function( self, *arguments, **keywords ):
        return member_function_t(*arguments, **keywords)

    def create_constructor( self, *arguments, **keywords ):
        return constructor_t(*arguments, **keywords)

    def create_destructor( self, *arguments, **keywords ):
        return destructor_t(*arguments, **keywords)

    def create_member_operator( self, *arguments, **keywords ):
        return member_operator_t(*arguments, **keywords)

    def create_free_function( self, *arguments, **keywords ):
        return free_function_t(*arguments, **keywords)

    def create_free_operator( self, *arguments, **keywords ):
        return free_operator_t(*arguments, **keywords)

    def create_class( self, *arguments, **keywords ):
        return class_t(*arguments, **keywords)
    
    def create_class_declaration(self, *arguments, **keywords ):
        return class_declaration_t(*arguments, **keywords)
    
    def create_enumeration( self, *arguments, **keywords ):
        return enumeration_t(*arguments, **keywords)

    def create_namespace( self, *arguments, **keywords ):
        return namespace_t(*arguments, **keywords)

    def create_typedef( self, *arguments, **keywords ):
        return typedef_t(*arguments, **keywords)

    def create_variable( self, *arguments, **keywords ):
        return variable_t(*arguments, **keywords)
    
    def create_casting_operator( self, *arguments, **keywords ):
        return casting_operator_t(*arguments, **keywords)