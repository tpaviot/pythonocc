'''
Created on May 6, 2010

@author: henrik
'''
import re
from tagging.models import Tag
from source.models import *
from server.refactor.models import RefactorPattern
from server.source.models import Klass
list_types = ['Array1', 'Array2','VArray','CArray1','Array', 'List', 'DoubleList', 'Sequence', 'Seq', 'Set', 'SetList']
dict_types = ['DataMap', 'PackedMap', 'Map', 'IDMap','IMap', 'IndexedMap', 'IndexedDataMap', 'StdMap']
stack_types = ['Queue', 'Stack']
set_types = ['Set']

support_types = ['SetList', 'Iterator', 'Node', 'Field', 'TNode']


types = list_types + dict_types + stack_types
exps = []
supp_exps = []
for typ in types:
    base = '^[^\s]+_(H*%s)Of([^\s]+)'
    exps.append(re.compile(base % typ))
    for supp in support_types:
        supp_exps.append(re.compile('^[^\s]+_H*%s(%s)Of([^\s]+)' % (typ, supp)))
        supp_exps.append(re.compile(base % 'Field'))

for dict_typ in dict_types:
    supp_exps.append(re.compile('^[^\s]+_(%s)([^\s]+)(Hasher)' % dict_typ))


def get_coll_tag(klass):
    if "handle:" in "".join([t.pattern.name for t in klass.proposed_refactorings.all()]):
        return None, None
    for e in exps:
        m = e.match(klass.name)
        if m:
            return ("collection", "%s:%s" % (m.group(1), m.group(2)))
    for e in supp_exps:
        m = e.match(klass.name)
        if m:
            try:
                return ("internal", "%s:%s" % (m.group(3), "%sOf%s" (m.group(1), m.group(2))))
            except:
                return ("internal", "%s:%s" % (m.group(1), m.group(2)))
    return None, None


def get_handle_tag(klass):
    m = re.match("^Handle_([^\s]+)", klass.name)
    if m:
        return ("handle", m.group(1))
    return None, None

def tag_algorithm_like():
    for kls in Klass.objects.filter(declarations__name='Perform'):
        RefactorPattern.objects.propose_refactor('algorithm', kls, approved=True)
    
   
def tag_klasses(klasses, taggers=[get_coll_tag]):
    for k in klasses:
        for tagger in taggers:
            print k, tagger
            tag, args = tagger(k)
            if tag:
                print k, tag
                RefactorPattern.objects.propose_refactor(tag, k, args, approved=True)
    
    