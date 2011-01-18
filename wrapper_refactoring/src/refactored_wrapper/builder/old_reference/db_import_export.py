'''
Created on Apr 25, 2010

@author: henrik
'''
import builder.builder
import os
from db_import import Exporter
os.environ['DJANGO_SETTINGS_MODULE'] = 'server.settings'
modbuilder =  builder.builder.b
mb = modbuilder._mb


def export():
    from server.source.models import *
    
    exp = Exporter(builder.builder.b)
    for module in modbuilder.module_names:
        mod = mb.namespace(module)
        exp.export(mod)
        for decl in mod.decls():
            exp.export(decl)
        
        for arg in mod.calldefs().args():
            exp.export(arg)
    
    exp.dump_to_db()
    
    
def fetch_from_db(cls, decl):
    #print "Fetch", name
    query = {'name':decl.name}
    tmp = decl
    next_attr = 'parent__name'
    while hasattr(tmp, 'parent') and tmp.parent is not None:
        parent = tmp.parent
        query[next_attr] = parent.name
        tmp = parent
        next_attr = "parent__%s" % next_attr
        #print query
    return cls.objects.get(**query)



def fix_docs_temp_crap():
    for cls in mb.namespace("Geom").classes():
        print "Class %s" % cls.name
        for mfun in cls.mem_funs():
            print "    method %s" % mfun.name
            if not hasattr(mfun, 'documentation'):
                continue
            try:
                db_decl = fetch_from_db(Method, mfun)
            except:
                print "Error.", mfun.name
            
            print db_decl, mfun
            db_decl.documentation = mfun.documentation
            db_decl.save()