'''
Created on Jan 22, 2011

@author: henrik


Quick storage of docstrings and shallow class info for doc generator
just intended for debugging...
'''

from builder.pypp_mods import include_matcher
import re
class flat_cls:
    '''temporary pickle-able storage for doc generator'''
    def __init__(self, decl, members, doc):
        self.name = decl.alias
        self.members = members
        self.documentation = doc

class flat_method:
    '''temporary pickle-able storage for doc generator'''
    def __init__(self, decl, doc):
        self.name = decl.alias
        self.return_type = str(decl.return_type)
        #self.argument_names = [arg.name for arg in decl.arguments]
        #self.argument_types = [str(arg.type) for arg in decl.arguments]
        self.arguments = [flat_arg(arg) for arg in decl.arguments]
        self.documentation = doc
class flat_arg:
    def __init__(self, decl):
        self.name = decl.name
        self.argout = decl.argout
        self.type = str(decl.type)        
    

def flatten_cls(cls):
    '''make a pickleable representation'''
    methods = [] 
    for c in filter(include_matcher, cls.public_members):
        methods.append(flat_method(c, c.documentation))
    return flat_cls(cls, methods, cls.documentation)


def find_docs(cls):
    '''parse docstrings from headers'''
    file = open(cls.location.file_name, 'r')
    txt = file.read()
    txt = re.sub("const|&|\*", "", txt)
    parsed = re.findall("((?:\/\/![^\n]+\n)+).*?(\w+)\((.*)\)", txt)
    documented = {}
    for doc, method, args in parsed:
        signature = tuple([method] + [a.strip().split(" ")[0] for a in args.split(",")])
        #doc = doc.replace("//! ", "")
        print "sign", signature
        documented[signature] = doc      
    return documented

def decl_signature(func):
    '''get method signature (name, arg1, arg2, ...) TODO: add return type if necessary'''
    args = [re.sub("const|&|\*", "", str(arg.type)).strip() for arg in func.arguments]        
    return tuple([func.name] + args)    


def signature_matcher(signature):
    return lambda b: decl_signature(b) == signature


def prepare_module(module):
    flat_classes = {}
    for cls in module.classes(include_matcher):
        print "doc:", cls.name
        docs = find_docs(cls)

        members = filter(lambda b: include_matcher(b), cls.public_members)
        for member in members:
            sign = decl_signature(member)
            if sign in docs:
                member.documentation = docs[sign]

        flat_classes[cls.name] = flatten_cls(cls)
    return flat_classes