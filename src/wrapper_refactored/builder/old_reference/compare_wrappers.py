'''
Created on Apr 16, 2010

@author: henrik
'''
import re



def store_assert(expr, msg, errors):
    if not expr:
        errors.append(msg)
        return 0
    else:
        return 1
        


def split_module(module):
    #module = re.sub("[.*^()]", lambda m: "\\"+m.group(0), module)
    #module = module.replace("\t", "    ")
    module, classes = re.findall("(\A(?:.|\n)+?(?:%include .+.i\n)+)((?:.|\n)+)", module)[0]
    classes = re.findall("(%nodefaultctor(?:.|\n)+?)(?=(?:%nodefaultctor)|\Z)", classes)
    
    return module, classes

def split_class(cls):
    return re.findall("((?:.|\n)+class .+){(?:.|\n)*public:((?:.|\n)+?)\n};((?:.|\n)*)", cls)[0]


def const_regex(statement):
    #exp = "^(const )*(\S+)( const)*"
    #statement = re.sub("virtual\ {4,}", "virtual ", statement)
    exp = "^(?:virtual )*(?:const (\S+))|(?:(\S+) const)"
    rep_exp = "((?:const (\S+))|(?:(\S+) const))"
    
    m = re.match(exp, statement.strip())
    if m and m.group(1) and (m.group(0) or m.group(3)):
        reg = rep_exp.replace("(\S+)", m.group(1) or m.group(3))
        statement =  statement.replace(m.group(0), reg)
    statement = statement.rstrip()
    statement = re.sub("\ *\*\ *", lambda m: r"\ *\*\ *", statement)
    statement = re.sub("\ *&\ *", lambda m: r"\ *&\ *", statement)
    
    #print statement
    return statement

def member_regexes(members):
    #members = re.sub("[.*^()]", lambda m: "\\"+m.group(0), members)

    #members = members.replace("*", "\*")
    #members = 
    members =  re.findall("(%.+;)[^\w]+([^(]+)\(([^),]+(?:,[^),]+)*)*\)(.*);", members)
    exps = []
    for feat, func, args, const in members:
        exp = ["((?:%feature\(.+\);)*[\n\t ]+"]
        exp.append(const_regex(func)+"\(")
        if args:
            arg_items = []
            for arg in args.split(","):
                arg_items.append(const_regex(arg))
            exp.append(",".join(arg_items))
        exp.append("\)"+const+";)")
        exp = "".join(exp)

        #print "".join(exp)
        exps.append(exp)
    return exps
    
#statement = re.sub("virtual\ {4,}", "virtual ", statement)

ref_swig = "".join(file("SWIG/linux_darwin/Geom.i", 'r').readlines()).replace("\t", "    ")
ref_swig = re.sub("virtual\ {4,}", "virtual ", ref_swig)
my_swig = "".join(file("test_swig/linux_darwin/Geom.i", 'r').readlines()).replace("\t", "    ")
my_swig = re.sub("virtual\ {4,}", "virtual ", my_swig)
my_mod, my_classes = split_module(my_swig)
ref_mod, ref_classes = split_module(ref_swig)
found = 0
notfound = 0
classes = {}
for cls in ref_classes:
    head, members, ext = split_class(cls)
    name = re.findall("class (\w+)", head)[0]
    my_cls = None
    for c in my_classes:
        if re.findall("\nclass %s "%name, c):
            my_cls = c
            break
    assert my_cls, name
    my_head, my_members, my_ext = split_class(cls)
    classes[name] = (my_cls, my_head, my_members, my_ext)
    for m in member_regexes(members):
        if "operator" in m:
            continue
        if not re.search(m, my_cls) :
            print "%s: could not find %s" % (name, m)
            notfound += 1
        else: 
            found += 1
    
    
    

exps = member_regexes(members)
print found, " / ", found+notfound