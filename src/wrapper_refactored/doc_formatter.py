'''
Created on Feb 1, 2011

@author: henrik
'''
import re
from pyquery import PyQuery

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