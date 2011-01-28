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

def flatten(listOfLists):
    "Flatten one level of nesting"
    return chain.from_iterable(listOfLists)

def is_line_start(line):
    
    return re.match("\s*[-.]", line)

def is_line_end(line):
    if line == '':
        return True
    return line[-1] in ['.',':']



# 
# TAGGIN AND FORMATTING 
# 

# LISTS
#
 
def tag_lists(txt, exp):
    '''find all existings lists and tags the list <items> with html tags'''
    for match in exp.findall(txt):
        items = filter(lambda a: a != '', re.split("\n\s*[.-]", match))
        items = [items[0]] + ["<item>%s</item>" % item.strip() for item in items[1:]]
        assert match in txt
        txt = txt.replace(match, "".join(items))
    return txt



group_multi_exp = re.compile("(.+:?\s*\n*(?:\s*[.-].*(?:\n|\Z)){1,})")
def tag_multi_item_lists(txt):
    '''groups multi item lists (duh)'''
    return tag_lists(txt, group_multi_exp)

group_single_exp = re.compile("(.+:\s*\n(?:\s*[-].*(?:\n|\Z)))")
def tag_single_item_lists(txt):
    return tag_lists(txt, group_multi_exp)



def expand_list(txt):
    elem = PyQuery(txt)
    for child in elem.children("item"):
        child = PyQuery(child)
        inner = expand_list(child.html())
        inner = "\n- %s" % "\n  ".join(inner.split("\n"))
        txt = txt.replace(child.outerHtml(), inner)
    return txt

# RAISE 


raise_items_exp = re.compile("[Rr]aise[ds]")
raise_exp = re.compile("(?<=[\A\n.]) *((?:[Rr]aise[ds].+?s*(?=\n|\Z)\s*)+)")
'''match all consecutive lines starting with  Raised,raised,Raise,raises etc 
(preceeded only by start of line or . and spaces)'''

def tag_raise(txt):
    '''recognize format and tag raise expressions'''
    
    found = raise_exp.findall(txt) #assuming all raise statements are after each other
    if not found:
        return txt
    
    match = found[0]
    
    found = raise_items_exp.split(found[0])
    found = filter(lambda a: a != '', found)
    if len(found) == 1:
        #format as single line
        formatted =  [':raised: %s' % found[0].strip()]
    else:
        #format as list
        formatted =  [':raised:']
        formatted += ['<item>%s</item>' % raise_items_exp.sub("", line).strip() for line in found]
    txt = txt.replace(match, "<:raised:>%s<:/raised:>" % "".join(formatted))

    return txt

# EXCEPTIONS


one_line_exp = "((?:<(?!\/?item)>|[^<\n])" 

exceptions_exp = re.compile("(Exceptions)((?:[\s\n-]*\w+_\w+.*\s*(?:\n|\Z))+)")
exception_item_exp = re.compile("(\w+_\w+.*?)(?:\n|\Z|(?=\.\s*\w+_\w+))")
def tag_exceptions(txt):
    '''
    find
    
    Exceptions
    Module_SomeException if blablabla
    Module_SomeException if blablabla
    ...
    '''
    found = exceptions_exp.findall(txt)
    if not found:
        return txt
    assert len(found) == 1
    items = exception_item_exp.findall(found[0][1])
    #field = ":exceptions: "
    #prefix = "\n" + " " * len(field)
    items = "".join(["<item>%s</item>" % item.strip() for item in items])
    
    return txt.replace("".join(found[0]), "<:exceptions:>%s<:/exceptions:>" % items)

# RETURNS

newline_return = re.compile("([\A\n](?:\w+ ){0,1}[Rr]eturns )((?:<(?!\/?item)>|[^<\n])+)")
sameline_return = re.compile("(?<=[,.])( *[Rr]eturns )((?:<(?!\/?item)>|[^<\n])+)")
def tag_returns(txt):
    matches = newline_return.findall(txt)
    if not matches:
        matches = sameline_return.findall(txt)
        if not matches:
            return txt
    
    print "MATCHES", matches
    return txt.replace("".join(matches[0]), "\n<:returns:>%s<:/returns:> " % matches[0][1].strip())

def expand_returns(txt):
    return txt
    elem = PyQuery(txt)
    #print "Expwarn"
    for child in elem.children(":returns:"):
        child = PyQuery(child)
        lines = child.html().strip().split("\n")
        print "Lines::", lines
        inner = ":returns: "
        indent = " " * len(inner)
        inner += "\n" + "\n".join(["%s%s" % (indent, line) for line in lines])
        replace = "\n?"+child.outerHtml() # ensure it is preceeded by newline
        txt = re.sub(replace, inner, txt)
    return txt    


# WARNING

warning_exp = re.compile("([Ww]arnings? *[:!]?)((?:.|\n)*?)(?=(?=\n\s*\n)|(?=\s*:\w+:)|\Z)")
def tag_warnings(doc):
    for warn, text in warning_exp.findall(doc):
        orig = warn+text
        
        lines = text.strip().split("\n")
        assert orig in doc
        doc = doc.replace(orig, "<:warning:>%s<:/warning:>" % "".join(lines))
    return doc   

def expand_warning(txt):
    elem = PyQuery(txt)
    #print "Expwarn"
    for child in elem.children(":warning:"):
        child = PyQuery(child)
        lines = child.html().strip().split("\n")
       
        #print "WARNLINES", lines
        lines = "\n".join(["   %s" % line for line in lines])
        inner = "\n.. warning::\n%s" % lines  #ensure it is preceeded by newline
        replace = "\n?"+child.outerHtml() # ensure it is preceeded by newline
        txt = re.sub(replace, inner, txt)
    return txt



def tag_note(txt):
    return txt
    

  







def apply_format(doc, orig, new):
    '''split doc in three parts at: before, to_be_replaced, after,
       and return a list of before, replaced, after''' 
    
    parts = [(1,pt) for pt in doc.partition(orig)]
    parts[1] = (0, new)
    return parts

def format_parts(func):
    def apply_pt(flag, pt):
        if  flag == 1:
            return func(pt)
        return pt
    def apply(doc_parts, *args, **kwargs):
        return [apply(flag, pt) for flag, pt in func]
    
    return apply
    






def format_method_doc(func):
    #print "Write method", func.name
    if not func.documentation:
        return ""
    lines = re.findall("\/\/! {0,2}(.*?)\s*<br>", func.documentation)
    #lines = filter(lambda e: e != '', lines)
    #print lines
    groups = []
    current = []
    for line, next_line in zip(lines, lines[1:]+[None]):
        current.append(line)
        if is_line_end(line) or next_line is None or is_line_start(next_line):
            group = " ".join(current)
            #ensure every directive is preceeded by a newline
            #group = start_directive_regexp.sub(r"\n\1",group)
            groups.append(group)
            current = []
            
    doc = "\n".join(groups)
    
    
    orignal = str(doc)
    
    # Escape existing <tags>
    doc = doc.replace("&", "&amp;")
    doc = doc.replace("<", "&lt;")
    doc = doc.replace(">", "&gt;")
    
    # Tag found entities    
    doc = tag_multi_item_lists(doc)
    #doc = group_single_item_lists(doc)
    
    doc_parts = tag_raise(doc)
    doc_parts = [tag_exceptions(doc_pt) for doc_pt in doc_parts]
    doc = tag_returns(doc)
    doc = tag_warnings(doc)
    
    
    #cleanup
    #remove double spaces (must be done before expanding tags)
    doc = re.sub("(?<=\w) {2,}", " ", doc)
    doc = re.sub("(?<=\n) +(?=[^-])", "", doc)
    tagged = str(doc)
    
#    
#    #substitute tags to ReST
#    doc = expand_list(doc)
#    doc = expand_warning(doc)
#    doc = expand_returns(doc)
#    
#    #unescape existing tags
#    doc = doc.replace("&lt;", "<")
#    doc = doc.replace("&gt;", ">")
#    # this has to be last:
#    doc = doc.replace("&amp;", "&")
#    #doc = unescape(doc)
#    #remove double spaces intbetween words
    return doc
    
    
    doc = ("..:%s\n   "%func.name)+doc.replace("\n", "\n   ")
    if False:
        #return "[FORMATTED]\n%s\n\n[TAGGED]\n%s\n\n[ORIGINAL]\n%s\n\n[RAW]%s" %(doc, tagged, orignal, func.documentation)
        return "[TAGGED]\n%s\n\n[ORIGINAL]\n%s" %(doc, tagged, orignal, func.documentation)
        
    return doc


def write_method(method):



    mdocs = []
    args = ",".join([arg for arg in method.argument_names])
    mdocs.append(".. method:: %s(%s)\n"%(method.name, args))
    return mdocs[0] + "\n" + format_method_doc(method)
    for arg_name, arg_type in zip(method.argument_names, method.argument_types):
        mdocs.append("   :param %s:" % arg_name)
        arg_type = re.sub("(const)|\*|&", "", arg_type).strip()
        mdocs.append("   :type %s: :class:`%s`" % (arg_name, str(arg_type)))
    rtype = str(method.return_type)
    if rtype != 'void':
        rtype = re.sub("(const)|\*|&", "", rtype).strip()
        mdocs.append("   :rtype: :class:`%s`" % rtype)
    
    if len(mdocs) > 1:
        mdocs.append("") #add extra line if list is populated
    #mdocs.extend(format_method_doc(method).split("\n"))
        
    mdocs = "\n   ".join(mdocs)
    return mdocs


def write_class(cls_name):
    cls = classes[cls_name]
    file = open("./docs/txt/%s.txt"%cls_name, "w")
    for member in cls.members:
        txt = write_method(member)
        if not txt:
            continue
        
        file.write(txt+"\n\n")
    file.close()






import os
from os import path
docroot = "./docs/rest"

modules = ['gp', 'Geom']
builder = None


for module in modules:
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
    
    
    #write_class('Geom_BSplineCurve')
    for cls in classes:
        write_class(cls)


