'''
Created on Apr 20, 2010

@author: henrik
'''
from pygccxml.declarations.matchers import matcher_base_t
import difflib
from wrapper.gccxml_extend import include_matcher
import re


prefix_setter = ['Set']
prefix_coll = ['Insert', 'Prepend', 'Append', 'Nb']
contained_misc = ['Transform']
ignore_prefixes = ['Set', 'Insert','Prepend', 'Append' 'Transform']
class out_value_matcher_t(matcher_base_t):
    def __call__(self, arg):
        if str(arg.parent.return_type) == 'void':
            return False
        if arg.parent.name.startswith("Set"):
            return False
        return "&" in str(arg.type)
            
            
        
        
        


def split_camelcase(s):
    return  filter(lambda s: s != '',re.split("([A-Z][a-z]+)", s))


typical_prefixes = ['my', 'the', 'a']

def rate_property(func, var, setter=False):
    
    
    func = split_camelcase(func.name)
    var =  split_camelcase(var.name)


def match_get_candidate(decl):
    tokens = split_camelcase(decl.name)
    if tokens[0] in prefix_setter + prefix_coll:
        return False
    #must return one value
    if len(decl.arguments) == 0 and str(decl.return_type) != 'void':
        return True
    if len(decl.arguments) == 1 and str(decl.return_type) != 'void':
        return "&" in str(decl.arguents[0].type)
    return False
    
def match_set_candidate(decl):

    tokens = split_camelcase(decl.name)
    if not tokens[0] in prefix_setter:
        return False
    if tokens[0] in prefix_coll:
        return False

    if len(decl.arguments) == 1 and str(decl.return_type) != 'void':
        return True
    return False



def match_prop_variable(decl):
    if 'cache' in decl.name:
        return False
    return True

def find_getters(candidates, variables):
    
    mapping = {}
    for v in variables:
        mapping[v] = difflib.get_close_matches(v, candidates, 3, 0.4)
    return mapping

def find_setters(candidates, variables):
    candidates = candidates.replace("Set", "")
    
    mapping = {}
    
    for v in variables:
        filt = lambda c: str(c.arguments[0].type) 
        
        mapping[v] = difflib.get_close_matches(v, candidates, 3, 0.4)
    return mapping

tree = {}
for n in mb.namespaces():
    tree[n] = {}
    for cls in n.classes(include_matcher):
        tree[n][cls] = {}
        candidates = cls.mem_funs(match_get_candidate)
        candidates = cls.mem_funs(match_set_candidate)
        variables = cls.variables(match_prop_variable)
        tree[n][cls]
        

    
    
    
    

def find_props2(cls):
    init_d = {'get':[], 'set':[]} 
    var_prop = dict(((var, {'get':[], 'set':[]}) for var in cls.variables()))
    prop_var = dict(((f, []) for f in cls.mem_funs()))
    variables = cls.variables().to_list()
    functions = cls.mem_funs().to_list()
    for var in variables:
        for func in functions:
            
            score = func, rate_property(func, var)
            var_prop[var]['get'].append((func,score))
            prop_var[func].append((var,score))
            
            score = func, rate_property(func, var, True)
            var_prop[var]['set'].append((func,score))
            prop_var[func].append((var,score))
        
        var_prop[var]['get'].sort()
        var_prop[var]['set'].sort()
    
    for func in functions:
        prop_var[func].sort()
    
    while True:
        pass
        
    