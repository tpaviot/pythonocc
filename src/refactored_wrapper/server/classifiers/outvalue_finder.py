'''
Created on May 13, 2010

@author: henrik
'''
from server.source.models import Argument


Argument.objects.filter(type__name__in=['Standard_Integer', 'Standard_Real'])\
                .filter(qualifiers__contains='&', parent__return_type__name='void')