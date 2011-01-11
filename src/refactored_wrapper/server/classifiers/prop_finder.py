'''
Created on May 12, 2010

@author: henrik
'''
from django.contrib.contenttypes.models import ContentType
from server.refactor.models import RefactorPattern




ignore_prefixes = ['my']

abbrevs = {'Surf':'Surface',
           'Pos':'Position'}



def find_getter_setter_pairs(klass):
    mquery = klass.declarations.filter(real_type=ContentType.objects.get(name='method'))
    methods = mquery.exclude(name__startswith='Set')
    #vars = klass.declarations.filter(real_type='variable')
    props = {}
    
    for m in methods:
        propname = m.name.replace('Get', '')
        print propname
        if len(m.arguments.all()) > 0:
            continue
        try:
            setter = mquery.get(name="Set%s"%propname)
            RefactorPattern.objects.propose_refactor('setter', setter, propname, approved=False)
            RefactorPattern.objects.propose_refactor('getter', m, propname, approved=False)
        except:
            pass
        
    return props
            
    
    
    
    
    
    
