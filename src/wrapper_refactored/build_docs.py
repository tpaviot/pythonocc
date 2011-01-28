import re

from builder.swig_generator import include_matcher
from pyplusplus.decl_wrappers.class_wrapper import class_t
from pyplusplus.decl_wrappers.calldef_wrapper import calldef_t
from builder.swig_generator import ModularBuilder
import string
from pygccxml.declarations import matcher

def mark_refs(docs, decl):
    start_exp = '([^\w\`\:()]|^)'
    end_exp = '([^\w\`\:()]|\Z)'
    class_exp = '\w+_(?:[A-Z]\w*)(?:_[A-Z]\w*)*'
    func_exp = '\w+(?:\(\))'
    
    
    
    docs = re.sub("%s(%s)%s" % (start_exp, class_exp, end_exp), 
                  lambda m: "%s:class:`%s`%s" % (m.group(1), m.group(2), m.group(3)), docs)
    docs = re.sub("%s(%s)::(%s)%s" % (start_exp, class_exp, func_exp, end_exp), 
                  lambda m: "%s:meth:`%s.%s`%s" % (m.group(1), m.group(2),m.group(3), m.group(4)), docs)

    if isinstance(decl.parent, class_t):
        decl = decl.parent
        
    #all_method_names = decl.declarations.filter(real_type=ContentType.objects.get(name='method')).values_list('name')
    
    all_method_names = list(decl.calldefs().alias)
    all_method_names = set(map(lambda e: "(?:%s)"%e, all_method_names))
    exp = "%s(%s)%s" % (start_exp, "|".join(all_method_names), end_exp)

    docs = re.sub(exp, lambda m: "%s:meth:`%s`%s" % (m.group(1), m.group(2), m.group(3)), docs)
    return docs


newline_words = ["raise(?:d|s)*", "exceptions*", "notes*", "warnings*"]
endofpara_words = ["\.", "\)", ";", "}"]


def split_paragraphs(docs):
    for word in endofpara_words:
        docs = re.sub("(%s)\s*\n([\w])" % word, lambda m: "%s\n\n%s" % (m.group(1), m.group(2)), docs)
        
    for word in newline_words:
        word = "(?:%s|%s)%s" % (word[0].upper(), word[0].lower(), word[1:])
        #print word
        docs = re.sub("([. \t])(%s\s)" % word, lambda m: "%s\n\n%s" % (m.group(1), m.group(2)), docs)
    
    return [para.strip() for para in re.split("\n\n", docs)]
    


def split_paragraphs_old(docs):
    
    #split every line ending with a . dot
    docs = re.sub("\. *\n([\w])",lambda m: ".\n\n%s"%m.group(1), docs)
    #split every line ending with a . dot ( not sure about this one:
    docs = re.sub("\) *\n([A-Z])",lambda m: ")\n\n%s"%m.group(1), docs)
    docs = re.sub("; *\n([A-Z])",lambda m: ";\n\n%s"%m.group(1), docs)
    docs = re.sub("} *\n([A-Z])",lambda m: "}\n\n%s"%m.group(1), docs)
    return re.split("\n\n", docs)

def format_bullets(para):
    parts = para.split("\n-")
    formatted = [parts[0]+"\n"]
    for item in parts[1:]:
        s = "\n-"+item.replace("\n", "\n  ")
        formatted.append(s)
    return "".join(formatted)
    
def format_list(para):
    parts = para.split("\n.")
    #print para
    formatted = [parts[0]+"\n"]
    for n, item in enumerate(parts[1:], 1):
        #print item
        s = ("\n%s."%n)+item.replace("\n", "\n   ")
        formatted.append(s)
    return "".join(formatted)
    
def format_headings(paras):
    newparas = []
    for para in paras:
        lines = para.split("\n") 
        if len(lines) > 1:
            l = len(lines[0].strip())
            if l < 40 and l > 4 and not re.findall("[:.\)]\s\Z", lines[0]):
                lines[0] += "\n"+'-'*len(lines[0])
        newparas.append("\n".join(lines))
    return newparas

def format_argument_refs(docs, decl):
    
    
    docs = re.sub("<([\w,]+)>", lambda m: "``%s``" % m.group(1), docs)
    
    exp = "|".join([an for an in decl.args().name])
    if not exp:
        return docs
    docs = re.sub("(\s+)(%s)(\s+)"  % exp, lambda m: "%s``%s``%s" % (m.group(1), m.group(2), m.group(3)), docs)
    #TODO handle argument refs not enclosed in <>
    #docs = re.sub("")
    return docs

def format_directive(directive, para):
    lines = para.split("\n")
    firstletter = "%s|%s" % (directive[0].upper(), directive[0].lower())
    exp = "(\s*(?:%s)%ss*[:\s]*)(.*)" % (firstletter, directive[1:])
    m = re.match(exp, lines[0])
    if m:
        lines[0] = '.. %s::' % directive
        if m.group(2):
            lines.insert(1, m.group(2).capitalize())
        lines = [lines[0]] + ["   %s" % l for l in lines[1:]]
    return "\n".join(lines)

def format_returns(para):
    exp = "(^\s*(?:R|r)eturns*[\s:]*)((?:.|\n)*)"
    match = re.match(exp, para)
    if not match:
        return para
    return ":returns: " + match.group(2).capitalize().replace("\n", " ")

def format_raise(para):
    exp = "(\s*(?:R|r)aise(?:s|d)*[\s:]*)((?:.|\n)*)"
    match = re.match(exp, para)
    if not match:
        return para
    return ":exception: " + match.group(2).capitalize().replace("\n", " ")

def process_docs(decl):
    ''' process docstrings '''
    docs = decl.documentation.replace("//!", "")
    docs = re.sub("<br>\n", "\n<br>", docs)
    docs = re.sub("<br>", "[br]", docs)
    docs = docs.replace("\"", "*")
    
    #ensure empasis doesnt span multiple lines ('*' remove enclosed newlines 
    docs = re.sub('(\*\w[^*]+?)\n([^*]+\w\*)','\1\2', docs) 
    
    docs = mark_refs(docs, decl)
    
    if isinstance(decl, calldef_t):
        docs = format_argument_refs(docs, decl)
    paras = split_paragraphs(docs)
    
    newparas = []
    for para in paras:
        newpara = format_list(para)
        newpara = format_bullets(newpara)
        newpara = format_directive('warning', newpara)
        newpara = format_directive('note', newpara)
        newpara = format_returns(newpara)
        newpara = format_raise(newpara)
        print newpara
        newparas.append(newpara)
    paras = newparas#"\n".join(newparas)
    
    for para in paras:
       pass 
    
    #indent
    docs = "".join(paras)#[p.replace("\n", "\n   ") for p in  paras])
    
    docs = re.sub("\n{0,1}\[br\]", "", docs)
    
    #docs = format_notes_and_warnings(docs)
    return docs

def document_class(cls):
    docs = []
    
    #cls = Klass.objects.get(name=klass)
    cdocs = process_docs(cls)
    head = ":class:`%s` --- %s" % (cls.alias, cdocs.split("\n")[0])
    head = head + "\n" + "="*len(head)
    docs.append(head)
    docs.append(cdocs)
    docs.append(".. class:: %s\n"%cls.alias)
    mdocs = []
    for c in filter(include_matcher, cls.public_members):
    #for c in cls.declarations.filter(real_type=ContentType.objects.get(name='method')):
        if c.documentation == cls.documentation:
            continue
        mdocs.append(document_method(c))
    mdocs = "   "+"\n\n   ".join(mdocs)
    docs.append(mdocs)
    docs = "\n".join(docs)
    return docs
        
def document_method(method):
    mdocs = []
    args = ",".join([arg.name for arg in method.args()])
    mdocs.append(".. method:: %s(%s)\n"%(method.alias, args))
    for arg in method.args():
        mdocs.append("   :param %s:" % arg.name)
        mdocs.append("   :type %s: :class:`%s`" % (arg.name, str(arg.type)))
    rtype = str(method.return_type)
    if rtype != 'void':
        mdocs.append("   :rtype: :class:`%s`" % rtype)
    
    if len(mdocs) > 1:
        mdocs.append("") #add extra line if list is populated
        
    mdocs.append("   "+process_docs(method).replace("\n", "\n   "))
    mdocs = "\n".join(mdocs)
    mdocs = mdocs.replace("\n", "\n   ")
    return mdocs



def make_underline(line, char):
    return line+"\n"+ char * len(line)
    

def create_module_index(module, names):
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
    
    return template.substitute(module_heading=make_underline(module.name, '='),
                               referenced_docs = "\n".join(["   %s/%s" % (module.name, name) for name in names]))
    
    
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
        referenced_docs = "\n".join(["   %s" % mod.name for mod in modules]))
     



def find_docs(cls):
    file = open(cls.location.file_name, 'r')
    txt = file.read()
    txt = re.sub("const|&|\*", "", txt)
    parsed = re.findall("((?:\/\/![^\n]+\n)+).*?(\w+)\((.*)\)", txt)
    documented = {}
    for doc, method, args in parsed:
        signature = tuple([method] + [a.strip().split(" ")[0] for a in args.split(",")])
        #doc = doc.replace("//! ", "")
        print "sign", signature
        try:
            cls.calldef(signature_matcher(signature)).documentation = doc
        except matcher.declaration_not_found_t:
            print "not found"
            continue 
            
    return documented


def decl_signature(func):
    args = [re.sub("const|&|\*", "", str(arg.type)).strip() for arg in func.args()]        
    return tuple([func.name] + args)    


def signature_matcher(signature):
    return lambda b: decl_signature(b) == signature





module = 'Geom'
b = ModularBuilder([module], rebuild_db=True)
mb = b._mb



import os
from os import path
docroot = "./docs/rest"


class flat_cls:
    def __init__(self, name, members, doc):
        self.name = name
        self.members = members
        self.doc = doc

class flat_method:
    def __init__(self, name, ret, args, doc):
        self.name = name
        self.ret = ret
        self.args = args
        self.doc = doc
    

def flatten_cls(cls):
    methods = [] 
    for c in filter(include_matcher, cls.public_members):
        methods.append(flat_method(c.name, str(c.return_type), [str(arg) for arg in c.args], c.documentation))
    cls = flat_cls(cls.name, methods, cls.documentation)
    
    


for module in b.modules:
    mod_path = path.join(docroot, module.name)
    if not path.exists(mod_path):
        os.mkdir(mod_path)
    
        
    class_names = []
    for cls in module.classes(include_matcher):
        print "doc:", cls.name
        find_docs(cls)
        class_file = open(path.join(docroot, module.name, cls.name)+'.rst', 'w')
        class_file.write(document_class(cls))
        class_names.append(cls.name)
        class_file.close()
        
        
    
    module_index_file = open(path.join(docroot, module.name)+"_index.rst", 'w')
    module_index_file.write(create_module_index(module, class_names))
    module_index_file.close()

    print create_module_index(module, class_names)


index = open(path.join(docroot, "index.rst"), 'w')
index.write(create_root_index(b.modules))
index.close()








