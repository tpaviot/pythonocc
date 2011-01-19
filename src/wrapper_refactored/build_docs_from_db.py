import re
from server.source.models import *

def mark_refs(docs, decl):
    start_exp = '([^\w\`\:()]|^)'
    end_exp = '([^\w\`\:()]|\Z)'
    class_exp = '\w+_(?:[A-Z]\w*)(?:_[A-Z]\w*)*'
    func_exp = '\w+(?:\(\))'
    docs = re.sub("%s(%s)%s" % (start_exp, class_exp, end_exp), 
                  lambda m: "%s:class:`%s`%s" % (m.group(1), m.group(2), m.group(3)), docs)
    docs = re.sub("%s(%s)::(%s)%s" % (start_exp, class_exp, func_exp, end_exp), 
                  lambda m: "%s:meth:`%s.%s`%s" % (m.group(1), m.group(2),m.group(3), m.group(4)), docs)

    if isinstance(decl, Method):
        decl = decl.parent
        
    all_method_names = decl.declarations.filter(real_type=ContentType.objects.get(name='method')).values_list('name')
    all_method_names = set(map(lambda e: "(?:%s)"%e[0], all_method_names))
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
    docs = re.sub("\. *\n([\w])",lambda m: ".\n\n%s"%m.group(1), docs)
    #hmmm not sure about this one:
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
    exp = "|".join([an[0] for an in decl.arguments.values_list('name')])
    
    docs = re.sub("<([\w,]+)>", lambda m: "``%s``" % m.group(1), docs)
    print exp
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
    docs = decl.documentation.replace("<br>", "")
    docs = docs.replace("\"", "*")
    
    docs = mark_refs(docs, decl)
    
    if isinstance(decl, Method):
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
    
    
    docs = "\n\n".join(paras)#[p.replace("\n", "\n   ") for p in  paras])
    #docs = format_notes_and_warnings(docs)
    return docs

def document_class(klass):
    docs = []
    
    cls = Klass.objects.get(name=klass)
    cdocs = process_docs(cls)
    head = ":class:`%s` --- %s" % (klass, cdocs.split("\n")[0])
    head = head + "\n" + "="*len(head)
    docs.append(head)
    docs.append(cdocs)
    docs.append(".. class:: %s\n"%klass)
    mdocs = []
    for c in cls.declarations.filter(real_type=ContentType.objects.get(name='method')):
        if c.documentation == cls.documentation:
            continue
        mdocs.append(document_method(c.cast()))
    mdocs = "   "+"\n\n   ".join(mdocs)
    docs.append(mdocs)
    docs = "\n".join(docs)
    f = file("./generated-docs/%s.rst" %klass, 'w')
    f.write(docs)
    f.close()
        
def document_method(method):
    mdocs = []
    args = ",".join([arg.name for arg in method.arguments.all()])
    mdocs.append(".. method:: %s(%s)\n"%(method.name, args))
    for arg in method.arguments.all():
        mdocs.append("   :param %s:" % arg.name)
        mdocs.append("   :type %s: :class:`%s`" % (arg.name, arg.type.name))
    rtype = method.return_type.name
    if rtype != 'void':
        mdocs.append("   :rtype: :class:`%s`" % rtype)
    
    if len(mdocs) > 1:
        mdocs.append("") #add extra line if list is populated
        
    mdocs.append("   "+process_docs(method).replace("\n", "\n   "))
    mdocs = "\n".join(mdocs)
    mdocs = mdocs.replace("\n", "\n   ")
    return mdocs
    














