'''
Created on Apr 25, 2010

@author: henrik
'''
from server.source.models import Module, Method, Klass
from django.contrib import admin

admin.site.register(Module)
admin.site.register(Klass)

#class ClassAdmin(admin.ModelAdmin):
#    fields = ['name', 'parent', 'bases', 'declarations']

#admin.site.register(Class, ClassAdmin)


admin.site.register(Method)
