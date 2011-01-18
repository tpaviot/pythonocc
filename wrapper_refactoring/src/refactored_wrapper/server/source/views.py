# Create your views here.
from django.http import HttpResponse
from models import Declaration, Module

from server.source.models import Klass, Method

import re
from server.libs.jinja2_init import render_to_response

def modules_index(request):
    return render_to_response('api/index.html', {'id': '', 'typ':'', 'name':'all modules', 'declarations':Module.objects.all()})

def api_query(request, queries):
    queries = queries.split("/")
    manager = Declaration.objects.get(name='::', parent=-1).declarations
    result = None
    
    for query in queries:
        print query 
        try:
            result = manager.get(name=query)
        except:
            return HttpResponse("Could not find "+ query)
        manager = result.declarations
        parent = result
    item = result.cast()#getattr(result, result.model_type.lower())
    if isinstance(item, Module):
        return render_to_response('api/module.html', {'decl':item,
                                                      'docs':process_docs(item)
                                                      })
    if isinstance(item, Klass):
        return render_to_response('api/klass.html', {'decl':item, 
                                                     'bases':", ".join([base.name for base in item.bases.all()]),
                                                     'docs':process_docs(item)
                                                     })
    if isinstance(item, Method):
        return render_to_response('api/method.html', {'decl':item, 
                                                      'arguments':", ".join([arg.name for arg in item.arguments.all()]),
                                                      'docs':process_docs(item)
                                                      })
    return HttpResponse("cant resolve class "+ str(item) + str(item.parent))
    



hist =     [
    (110, 0.0),
     (4, 4.0),
     (14, 8.0),
     (3, 12.0),
     (11, 17.0),
     (17, 21.0),
     (41, 25.0),
     (29, 29.0),
     (44, 33.0),
     (34, 37.0),
     (36, 42.0),
     (94, 46.0),
     (169, 50.0),
     (279, 54.0),
     (143, 58.0),
     (64, 62.0),
     (31, 66.0),
     (16, 71.0),
     (8, 75.0),
     (3, 79.0)]

def mark_refs(docs, decl):
    docs = re.sub("\w+_(?:[A-Z]\w*)(?:_[A-Z]\w*)*", lambda m: "ref:`%s`"%m.group(0), docs)
    decls = set(map(lambda e: e[0], decl.declarations.values_list('name')))
    for m in decls:
        if m[0] in decls:
            docs = docs.replace(m, "ref:`%s`" % m[0])
    return docs

def split_paragraphs(docs):
    docs = re.sub("\. *\n([A-Z])",lambda m: ".\n\n%s"%m.group(1), docs)
    return re.split("\n\n", docs)

def format_bullets(paras):
    newparas = [] 
    for i, para in enumerate(paras):
        parts = para.split("\n-")
        formatted = [parts[0]+"\n"]
        for item in parts[1:]:
            s = "\n-"+item.replace("\n", "\n  ")
            formatted.append(s)
        formatted = "".join(formatted)
        #print formatted
        newparas.append(formatted)
    #print "bla"
    return newparas
    
def format_list(paras):
    newparas = [] 
    for i, para in enumerate(paras):
        parts = para.split("\n.")
        print para
        formatted = [parts[0]+"\n"]
        for n, item in enumerate(parts[1:], 1):
            print item
            s = ("\n%s."%n)+item.replace("\n", "\n   ")
            formatted.append(s)
        formatted = "".join(formatted)
        #print formatted
        newparas.append(formatted)
    #print "bla"
    return newparas
    
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
          
def process_docs(decl):
    docs = decl.documentation.replace("<br>", "")
    docs = docs.replace("\"", "*")
    docs = mark_refs(docs, decl)
    paras = split_paragraphs(docs)
    paras = format_list(paras)
    paras = format_bullets(paras)
    paras = format_headings(paras)
    return "\n\n".join(paras)#[p.replace("\n", "\n   ") for p in  paras])

    

