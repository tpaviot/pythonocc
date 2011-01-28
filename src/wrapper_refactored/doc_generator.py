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
import cgi
import string



def format_para(head, body):
    body = "%s" %  "\n".join([line.strip() for line in body.split("\n")])
    return expand_list(body)

def format_warning(head, body):
    lines = body.strip().split("\n")
    lines = "".join(["\n   %s" % line.strip() for line in lines])
    lines = expand_list(lines, indent=3)
    txt = ".. warning::%s" % lines  #ensure it is preceeded by newline
    return txt

def format_raises(head, body):
    return head+" " +"\n".join(["%s" % line.strip() for line in body.split("\n")])

def format_returns(head, body):
    return head+format_para(None, body.strip())

def format_exceptions(head, body):
    return ":exceptions:\n"+re.sub(" *\n *", "\n", body)

def group_list(doc):
    list_expression = r"\n(( *)[.-] )(((?:.+)(?:\n\2 +.+)*))"
    def replace_recursive(match):
        txt = match.group(3) #check for recursive lists
        #print "TXT", txt
        delimiter = match.group(1)
        #print "DELIM", delimiter
        grouped = group_list(txt)
        return "<item>%s</item>" % grouped
    doc = re.sub(list_expression, replace_recursive, doc).strip()
    return  doc

def expand_list(txt, indent=0):
    #enclose consecutive list items in newlines
    txt = re.sub("(?<=[^>\s])\s*(<item>(?:.|\n)+?</item>(?!<))", r"\n\1\n", txt)
    
    if txt.strip() == '':
        return txt
    elem = PyQuery(txt)
    prefix = "\n"+ (" " * indent)
    for child in elem.children("item"):
        child = PyQuery(child)
        inner = expand_list(child.html())
        inner = (prefix+"  ").join(re.split("\n *", inner))
        inner = "%s- %s" % (prefix, inner)#inner.split("\n"))
        txt = txt.replace(child.outerHtml(), inner)
    return txt


def format_docs(func):
    #print "Write method", func.name
    if not func.documentation:
        return ""
    lines = re.findall("\/\/! (.*?)\s*<br>", func.documentation)
       
    doc = "\n".join(lines)
    orig = doc
    #escape disturbing characters
    doc = doc.replace("&", "&amp;")
    doc = doc.replace("<", "&lt;")
    doc = doc.replace(">", "&gt;")

    #construct regexp that splits the docs into rough sections
    newline = "(?:\n|\A)\s*" 
    
    #expressions find start of the sections of the documentation
    paragraph = "\A|(?:\n\n)" #matches double newline
    warning = newline+"[Ww]arnings? *[:!]?" #
    
    returns = "\n *[Rr]eturns"
    raises = "[Rr]aise[ds]"
    exceptions = "Exceptions"
    
    exprs = [paragraph, warning, returns, raises, exceptions]
    expr_formatters = [format_para, format_warning, format_returns,format_raises, format_exceptions]
    
    #match any tekst (non greedy followed by one of the expressions above (non consuming (?=...))
    end = "|".join(["(?=%s)"%e for e in exprs])
    expression = "((?:.|\n)+?)(?=%s|\Z)" % end

    #iterate over found parts and apply formatting
    newparts = []
    for part in re.findall(expression, doc):
        #print "PT", part
        newpart = part
        for exp, formatter in zip(exprs, expr_formatters):
            match = re.match("(%s)((?:.|\n)+)" % exp, part)
            if match:
                head = match.group(1)
                #group lists into nested html-tags to avoid indentation hell
                body = group_list(match.group(2))
                newpart = formatter(head, body)
                continue
            
        newparts.append(newpart)


    doc = "\n\n".join(newparts)
    
    #unescape existing tags
    doc = doc.replace("&lt;", "<")
    doc = doc.replace("&gt;", ">")
    # this has to be last:
    doc = doc.replace("&amp;", "&")

    return doc
    #return "%s [ORIG]\n%s\n[\ORIG]" % (doc, orig)


def document_method(method):
    mdocs = []
    args = ",".join([arg for arg in method.argument_names])
    mdocs.append(".. method:: %s(%s)\n"%(method.name, args))
    method.documentation = format_docs(method)

    for arg_name, arg_type in zip(method.argument_names, method.argument_types):
        mdocs.append(":param %s:" % arg_name)
        arg_type = re.sub("(const)|\*|&", "", arg_type).strip()
        mdocs.append(":type %s: :class:`%s`" % (arg_name, str(arg_type)))
    rtype = str(method.return_type)
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

#modules = ['gp', 'Geom', 'Standard']
modules = ['Standard', 'gp', 'MMgt', 'TCollection', 'TColStd', 'GeomAbs', 'TColgp', 'Geom']
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


