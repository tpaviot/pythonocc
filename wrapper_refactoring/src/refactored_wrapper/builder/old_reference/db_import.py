'''
Created on May 1, 2010

@author: henrik
'''
from builder.occ_declarations import calldef_t, enumeration_t, class_t, \
    class_declaration_t, namespace_t, typedef_t, variable_t
from django.core.exceptions import ObjectDoesNotExist
from django.db import connection
from pygccxml.declarations.calldef import argument_t
from pygccxml.declarations.class_declaration import hierarchy_info_t
from pygccxml.declarations.cpptypes import type_t, fundamental_t, \
    free_function_type_t
from pygccxml.declarations.mdecl_wrapper import mdecl_wrapper_t
from server.source.models import Method, Enumeration, Argument, Klass, Module, \
    Primitive, Variable, Declaration
import os

def last_index(table):
    #Declaration.objects.all().order_by('id').reverse()[0].id
    cursor = connection.cursor()
    cursor.execute("SELECT id from %s order by id DESC LIMIT 1;" % table)
    res= cursor.fetchall()
    if not res:
        return 0
    return res[0][0]


def get_model_klass(decl):
    class_map = (
             (calldef_t, Method),
             (enumeration_t, Enumeration),
             (argument_t, Argument),
             (class_t, Klass),
             (class_declaration_t, Klass),
             (namespace_t, Module),
             (type_t, Primitive),
             (typedef_t, Primitive),
             (variable_t, Variable), 
             (str, Primitive)
            )

    for c, table in class_map:
        if isinstance(decl, c):
            return table
    
    print "DECLARATION NOT FOUND", decl, str(decl)



def fetch_decl(decl):

    parent = None
    if hasattr(decl, 'parent') and decl.parent is not None:
        parent = fetch_decl(decl.parent)
    #print decl.name, parent
    model_cls = get_model_klass(decl)
    if not isinstance(decl, (fundamental_t, str, free_function_type_t)):
        name = decl.name
    else:
        name = str(decl)

    instance = model_cls.objects.get(name=name, parent=parent)

    return instance

class Exporter(object):
    def __init__(self, builder):
        self.table_rows = {
                'source_declaration':[],
                'source_primitive':[],
                'source_variable':[],
                'source_enumeration':[],
                'source_klass_bases':[],
                'source_argument':[],
                'source_module':[],
                'source_method':[],
                'source_klass':[]
                }
        self.rows = []
        self.indices = {Declaration:0, #last_index(Declaration._meta.db_table), 
                        Argument:0,#last_index(Argument._meta.db_table), 
                        'source_klass_bases':0}#last_index('source_klass_bases')}
        self.index_map = {}
        self.builder = builder
    
    def fetch_from_db(self, cls, decl):
        if isinstance(decl, (fundamental_t, str, free_function_type_t)):
            name = str(decl)
            if "LDOMParser" in name:
                print "LDOMParser as string!!"
        #elif cls == Primitive:
        #    name = str(decl)
        else:
            name = decl.name
            if "LDOMParser" in decl.name:
                print "parser! %s, class %s, parent %s" % (decl.name, decl.__class__, decl.parent_module())
                
            if decl.parent is not None:
                if decl.parent_module().name not in self.builder.cached_modules + ['::', 'std']:
                    if "LDOMParser" in decl.name:
                        print "not in db? name %s, class %s, parent %s" % (decl.name, decl.__class__, decl.parent_module())
                    raise cls.DoesNotExist("name %s, class %s, parent %s" % (decl.name, decl.__class__, decl.parent))
        
        #print "Fetch", name
        query = {'name':name}
        tmp = decl
        next_attr = 'parent__name'
        while hasattr(tmp, 'parent') and tmp.parent is not None:
            parent = tmp.parent
            query[next_attr] = parent.name
            tmp = parent
            next_attr = "parent__%s" % next_attr
            #print query
            
        print "query", query
        id = cls.objects.get(**query).id
        self.index_map[decl] = id
        return id
    
    def export(self, decl):
        if decl is None:
            return None
        if isinstance(decl, hierarchy_info_t):
            decl = decl.related_class
        if decl in self.index_map:
            return self.index_map[decl]

        cls = get_model_klass(decl)
        #print decl, cls
        try:
            return self.fetch_from_db(cls, decl)
        except ObjectDoesNotExist:
            pass
        
        
        id = self.next_index_for(cls)
        self.index_map[decl] = id
        for table, row in cls.get_row(decl, self, id):
            self.table_rows[table].append(row)

        #print id
        return id

    def next_index_for(self, cls):
        if isinstance(cls, str):
            self.indices[cls] += 1
            return self.indices[cls]
        for model in self.indices:
            if issubclass(cls, model):
                self.indices[model] += 1
                return self.indices[model]
    
    
    
    def clear_occ(self):
        cursor = connection.cursor()
            
        for table in self.table_rows.keys():
            cursor.execute("DELETE FROM %s;" % table)
    
    def commit(self):
        cursor = connection.cursor()
        cursor.execute("UPDATE source_declaration SET commited=1 WHERE commited=0;")
        cursor.execute("UPDATE source_argument SET commited=1 WHERE commited=0;")
        
          
    def rollback(self):
        cursor = connection.cursor()
        tables = ['source_primitive','source_variable','source_enumeration','source_module','source_method','source_klass']
        sql_template = "DELETE sub FROM %s AS sub INNER JOIN source_declaration AS decl ON %s WHERE decl.commited=0"
        for table in tables:
            sql = sql_template % (table, 'sub.declaration_ptr_id=decl.id')
            print sql
            cursor.execute(sql)
        sql = sql_template  % ('source_klass_bases', 'sub.from_klass_id=decl.id')
        print sql
        cursor.execute(sql)
        sql = sql_template % ('source_klass_bases', 'sub.to_klass_id=decl.id')
        print sql
        cursor.execute(sql )
        print "def"
        cursor.execute("DELETE FROM source_declaration WHERE commited=0;")
        cursor.execute("DELETE FROM source_argument WHERE commited=0;") 
            
    def dump_to_db(self):
        for t in self.table_rows:
            if not self.table_rows[t]:
                continue
            print t
            fname= os.getcwd() + "/%s_sqltmp.data" % t
            f = file(fname, 'w')
            fdelim = "&#&"
            ldelim = "&#\n#&"
            f.write( ldelim.join(fdelim.join([str(c) for c in row])+fdelim for row in self.table_rows[t]) + ldelim)
            f.close()
            sql = "LOAD DATA INFILE '%s' INTO TABLE %s FIELDS TERMINATED BY '%s' LINES TERMINATED BY '%s';"
            sql = sql % (fname, t, fdelim, ldelim)
            cursor = connection.cursor()
            #cursor.execute("DELETE FROM %s;" % t)
            cursor.execute(sql)
            
        for module in self.builder.module_names:
            #if module.name == '::' or module.name == 'std':
            #    continue
            module = self.builder._mb.namespace(module)
            print module.name
            gcc = module.decls(recursive=False)
            dbmodule = Module.objects.get(name=module.name)
            assert len(dbmodule.declarations.all()) == len(gcc)
            
            dbmodule.is_complete = True
            dbmodule.save()
            
        
            
        def validate(module, decl):
            assert len(Module.objects.get(name=module).declarations.all()) == len(decl.decls())
            
            
            
        
            
            
