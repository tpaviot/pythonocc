'''
Created on May 1, 2010

@author: henrik
'''

import networkx as nx
import configuration
import re, os
import environment

def get_headers_for_module(module):
    exp = re.compile("^((?:Handle_)*%s(?:_\w+)*\.hxx)" % module)
    heads = map(lambda h: exp.findall(h), os.listdir(environment.OCC_INC))
    heads = filter(lambda h: bool(h), heads)
    heads =  map(lambda h: os.path.join(environment.OCC_INC, h[0]), heads)
    heads.sort()
    return heads

def parse_module_refs(headers):
    deps = set([])
    
    for head in headers:
        try:
            f = file(head, 'r')
            d = re.findall("#include \<(?:Handle_)*([A-Za-z0-9]+?)(?:_\w+)*\.hxx\>", f.read())
            f.close()
            for mod in d:
                deps.add(mod)
        except IOError:
            pass
    return deps
    
graph = nx.DiGraph()

for module in configuration.modules.keys():
    headers = get_headers_for_module(module)
    refs = parse_module_refs(headers)
    print "Set", module, refs
    for r in refs:
        if r == module:
            continue
        graph.add_edge(module, r)
        
nx.write_dot(graph, 'module_dependencies.dot')
    
