'''
Created on May 12, 2010

@author: henrik
'''



#signatures:
#Init/Initialize
#Nb*
#Parameter/Value

#IsDone

#Perform

#Modules:
#GCPnts
#


def tag_algorithm_like():
    for kls in Klass.objects.filter(declarations__name='Perform'):
        RefactorPattern.objects.propose_refactor('algorithm', kls, approved=True)
    