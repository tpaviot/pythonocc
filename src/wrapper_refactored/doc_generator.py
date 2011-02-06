'''
Created on Jan 21, 2011

@author: henrik




'''
from builder.pypp_mods import include_matcher
import re
from builder.swig_generator import ModularBuilder
import yaml
from doc_persistance import flatten_cls, prepare_module
from itertools import chain
from pyquery.pyquery import PyQuery

import string
from doc_formatter import format_docs




def document_method(method):
    mdocs = []
    arguments = filter(lambda m: not m.argout, method.arguments)
    args = ",".join([arg.name for arg in arguments])
    mdocs.append(".. method:: %s(%s)\n"%(method.name, args))
    method.documentation = format_docs(method)

    for arg in arguments:
        mdocs.append(":param %s:" % arg.name)
        arg_type = re.sub("(const)|\*|&", "", arg.type).strip()
        mdocs.append(":type %s: :class:`%s`" % (arg.name, str(arg_type)))
    
    rtype = str(method.return_type)
    argouts = filter(lambda m: m.argout, method.arguments)
    if len(argouts) > 0:
        argoutstr = ["%s(%s)" % (arg.name, arg.type) for arg in argouts]
        rtype = "(%s)" % ",".join(argoutstr)
        
    
    
    if rtype != 'void':
        rtype = re.sub("(const)|\*|&", "", rtype).strip()
        mdocs.append(":rtype: :class:`%s`" % rtype)
    
    if len(mdocs) > 1:
        mdocs.append("") #add extra line if list is populated
    #mdocs.extend(format_method_doc(method).split("\n"))
    mdocs.extend(method.documentation.split("\n"))    
    mdocs = "\n      ".join(mdocs)
    return mdocs


def document_class(cls):
    docs = []
    head = ":class:`%s`" % cls.name
    head = head + "\n" + "="*len(head)
    docs.append("\n\n"+head)
    docs.append(".. class:: %s\n"%cls.name)
    mdocs = []
    for member in cls.members:
        mdocs.append(document_method(member))
    mdocs = "   "+"\n\n   ".join(mdocs)
    docs.append(mdocs)
    docs = "\n   ".join(docs)
    return docs


def write_module_docs(module_name, classes, docroot):
    mod_path = path.join(docroot, module_name)
    if not path.exists(mod_path):
        os.mkdir(mod_path)
    
    #store names for index
    class_names = []
    files = []
    # write ReST
    for cls_name in classes:
        cls = classes[cls_name]
        cls_doc = document_class(cls)
        filename = path.join(docroot, module, cls_name)+'.rst'
        class_file = open(filename, 'w')
        class_file.write(cls_doc)
        class_file.close()
        class_names.append(cls.name)
        files.append(filename)
        
    #write module index
    module_index_file = open(path.join(docroot, module)+"_index.rst", 'w')
    module_index_file.write(create_module_index(module, class_names))
    module_index_file.close()

    print create_module_index(module, class_names)
    return files


def make_underline(line, char):
    return line+"\n"+ char * len(line)
    

def create_module_index(module_name, names):
    template = string.Template('''
${module_heading}

Contents:

.. toctree::
   :maxdepth: 2
    
${referenced_docs}

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
''')
    
    return template.substitute(module_heading=make_underline(module_name, '='),
                               referenced_docs = "\n".join(["   %s/%s" % (module_name, name) for name in names]))
    
    
def create_root_index(modules):
    template = string.Template('''
PythonOCC
=========

Contents:

.. toctree::
   :maxdepth: 2
    
${referenced_docs}

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
''')
    
    return template.substitute(
        referenced_docs = "\n".join(["   %s" % mod for mod in modules]))



import os
from os import path
docroot = "./docs/rest"

modules = ['Standard', 'gp']
#modules = ['Standard', 'gp', 'MMgt', 'TCollection', 'TColStd', 'GeomAbs', 'TColgp', 'Geom']
builder = None


for module in modules:
    
    #load pickled classes if present
    filename = "docs/tmp/%s.pickle" % module
    classes = None
    try:
        file = open(filename, 'r')
    except:
        if not builder:
            builder = ModularBuilder(modules, rebuild_db=True)
        classes = prepare_module(builder.modules.get(module))
        file = open(filename, 'w')
        yaml.dump(classes, file)
        file.close()
    if classes is None:    
        classes = yaml.load(file)
        
    write_module_docs(module, classes, docroot)
    


# write root index
index = open(path.join(docroot, "index.rst"), 'w')
index.write(create_root_index(modules))
index.close()


