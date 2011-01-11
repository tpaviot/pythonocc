import sys
import os
from pygccxml.declarations.class_declaration import hierarchy_info_t
from django.contrib.contenttypes import generic

sys.path.append(os.getcwd() + "/..")
from server.bulk_insert import BulkInsert
from builder.occ_declarations import calldef_t, enumeration_t, class_t, \
    namespace_t, decl_wrapper_t, destructor_t, constructor_t, typedef_t, \
    variable_t, class_declaration_t, member_function_t
from django.core.exceptions import ObjectDoesNotExist
from django.db import models

from pygccxml.declarations.cpptypes import type_t, declarated_t, fundamental_t,\
    free_function_type_t
from pygccxml.declarations.mdecl_wrapper import mdecl_wrapper_t

from model_utils.models import InheritanceCastModel
from django.contrib.contenttypes.models import ContentType

import tagging


class Declaration(InheritanceCastModel):
    step = 0
    interval = 10
    #id = models.CharField(max_length=200, primary_key=True)
    
    name = models.CharField(max_length=256)
    documentation = models.TextField(null=True)
    #position = models.IntegerField()
    is_complete = models.BooleanField()
    parent = models.ForeignKey("self", related_name="declarations", default=-1)
    discriminator = models.IntegerField()
    commited = models.BooleanField(default=0)
    objects = BulkInsert()
    class Meta:
        unique_together = (('parent', 'name', 'discriminator'),)

    def __unicode__(self):
        return "%s: %s" % (self.id, self.name)
    
    @classmethod
    def get_row(cls, decl, exporter, id, discriminator=0):
        if isinstance(decl, (fundamental_t, str, free_function_type_t)):
            name = str(decl)
            parent_id = -1
        else:
            name = decl.name
            parent_id=exporter.export(decl.parent) or -1
        row = [id, ContentType.objects.get_for_model(cls).id, name,
               decl.__dict__.get('documentation', ''), 0,
               parent_id, discriminator, 0]
                    
        return [(Declaration._meta.db_table, row)]
    
    @classmethod
    def get_column_names(cls, self):
        return ['id', 'real_type_id', 'name', 'documentation', 'is_complete', 'parent_id', 'discriminator', 'commited']

class Classification(models.Model):
    pass

class Classifier(models.Model):
    pass


      

class Module(Declaration):

    @classmethod
    def get_row(cls, decl, exporter, id):
        rows = super(Module, cls).get_row(decl, exporter, id)
        rows.append((Module._meta.db_table, [id]))
        return rows
    
    @classmethod
    def get_column_names(cls, self):
        return ['declaration_ptr_id']              

class Primitive(Declaration):
    @classmethod
    def get_row(cls, decl, exporter, id):
        
        rows = super(Primitive, cls).get_row(decl, exporter, id)
        rows.append((Primitive._meta.db_table, [id]))
        return rows
    
    @classmethod
    def get_column_names(cls, self):
        return ['declaration_ptr_id'] 
class Klass(Declaration):
    #is_handle = models.BooleanField()
    is_abstract = models.BooleanField()
    bases = models.ManyToManyField("self", related_name="derived", symmetrical=False)
    is_declaration = models.BooleanField()
    @classmethod
    def get_row(cls, decl, exporter, id):
        rows = super(Klass, cls).get_row(decl, exporter, id)
        is_abstract = 0
        if isinstance(decl, class_t):
            is_abstract = int(decl.is_abstract)
        row = [id, is_abstract, int(isinstance(decl, class_declaration_t))]
                  
        rows.append((Klass._meta.db_table, row))
        if isinstance(decl, class_declaration_t):
            return rows
        
        bases = [exporter.export(base) for base in decl.bases]
        for b in bases:
            rows.append(('source_klass_bases', [exporter.next_index_for('source_klass_bases'), id, b]))
        
        return rows
    
    @classmethod
    def get_column_names(cls, self):
        return ['declaration_ptr_id', 'is_abstract']

class Enumeration(Declaration):
    values = models.TextField()
   
    @classmethod
    def get_row(cls, decl, exporter, id):
        rows = super(Enumeration, cls).get_row(decl, exporter, id)
        rows.append((Enumeration._meta.db_table, 
                     [id, "".join([d[0] for d in decl.values])]
                    ))
        return rows
    
    @classmethod
    def get_column_names(cls, self):
        return ['declaration_ptr_id', 'values']
#class EnumValue(Declaration):
#    value = models.IntegerField()



def mod_base(type, first=True):
    #if first:
    #    print 'first', type.__class__, str(type)

    base = type
    if hasattr(type, 'base'):
        base = mod_base(type.base, False)
    if not first:
        return base

    #if first:
    #    print base.__class__, str(base)
    mods = "".join(str(type).split(str(base))).strip()
    #print "mods", mods
    if isinstance(base, declarated_t):
        base = base.declaration
    return base, mods

class Method(Declaration):
    return_type = models.ForeignKey(Declaration, null=True, related_name='referring_return_types')
    qualifiers = models.CharField(max_length=64, default='')
    
    #member attributes
    access_type = models.CharField(max_length=32)
    virtuality = models.BooleanField()
    has_const = models.BooleanField()
    has_static = models.BooleanField()
    is_constructor = models.BooleanField()
    is_destructor = models.BooleanField()
    
    
    @classmethod
    def get_row(cls, decl, exporter, id):
        key = lambda d: str(len(d.arguments))+str(d) #sort by number of arguments, then by alphabet
        definitions = sorted(list(decl.overloads) + [decl], key=key)
        
        rows = super(Method, cls).get_row(decl, exporter, id, definitions.index(decl))
        base, qualifiers = mod_base(decl.return_type)
        if isinstance(decl, constructor_t) or isinstance(decl, destructor_t):
            return_type_id = "\N"
        else:
            return_type_id = exporter.export(base)
        row = [id, return_type_id, qualifiers, '', 
               int(decl.__dict__.get('virtuality', 0)),
               int(decl.__dict__.get('has_const', 0)),
               int(decl.__dict__.get('has_static', 0)),
               int(isinstance(decl, constructor_t)),
               int(isinstance(decl, destructor_t))]
            
        rows.append((Method._meta.db_table, row))

        return rows
    @classmethod
    def get_column_names(cls, self):
        return ['declaration_ptr_id', 'return_type_id', 'qualifiers', 'access_type',
                'virtuality', 'has_const', 'has_static', 'is_constructor', 'is_destructor']
    
    
class Argument(models.Model):
    name = models.CharField(max_length=64)
    documentation = models.CharField(max_length=512)
    type = models.ForeignKey(Declaration, related_name='referring_arguments')
    qualifiers = models.CharField(max_length=64, default='')
    parent = models.ForeignKey(Method, related_name='arguments') 
    is_complete= models.BooleanField()
    default_value= models.CharField(max_length=64)
    position = models.IntegerField()
    commited = models.BooleanField(default=0)
    class Meta:
        unique_together = (('parent', 'name'),)

    @classmethod
    def get_row(cls, decl, exporter, id):
        
        base, qualifiers = mod_base(decl.type)
        row = [id,decl.name, "", exporter.export(base), qualifiers, 
               exporter.export(decl.parent), 0, '', decl.parent.arguments.index(decl), 0]
                    
        return [(Argument._meta.db_table, row)]
    
    @classmethod
    def get_column_names(cls, self):
        return ['id', 'name', 'documentation', 'type_id', 'qualifiers', 
                'parent_id', 'is_complete', 'default_value', 'position']
try:
    tagging.register(Argument)
except:
    pass
class Variable(Declaration):
    type = models.ForeignKey(Declaration, related_name = 'referring_variables')
    value = models.CharField(max_length=200)
    qualifiers = models.CharField(max_length=50, default='')

        
    @classmethod
    def get_row(cls, decl, exporter, id):
        rows = super(Variable, cls).get_row(decl, exporter, id)
        base, qualifiers = mod_base(decl.type)
        row =[id, exporter.export(base),str(decl.value), qualifiers]
        rows.append((Variable._meta.db_table, row))
        return rows
    
    
    @classmethod
    def get_column_names(cls, self):
        return ['declaration_ptr_id', 'type_id', 'value', 'qualifiers']
    
    
    

