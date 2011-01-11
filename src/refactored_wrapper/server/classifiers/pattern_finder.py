'''
Created on May 6, 2010

@author: henrik
'''
from server.source.models import Method, Klass
import operator
from django.db.models.aggregates import Count



class PatternFinder:
    
    def __init__(self):
        self.common_threshold = 3
        self._ignore = [  'operator=',
            'operator new',
            'operator delete', 
            'operator->'
            'DynamicType'
            ]
        print "find classes"
        
        self.relevant_klasses = set(filter(lambda k: len(k.tags) < 1, Klass.objects.all()))
        print "find methods"
        self.method_counts = self._get_method_counts()
        self.klass_methods = self._find_relevant_classes()
        self.groups = self._group_klasses()

    def _get_method_counts(self):        
        return Method.objects.filter(is_constructor=False, is_destructor=False)\
                                .annotate(parent_classified=Count('parent__proposed_refactorings'))\
                                .filter(parent_classified=0)\
                                .values('name').annotate(name_count=Count('id'))\
                                .filter(name_count__gt=3)
                                
    def _method_map(self):
        klasses = 
    
    def _find_relevant_classes(self):
        print "filter methods", len(self.relevant_klasses)
        rel_filter = lambda m: self.method_counts.get(m.name, 0) > self.common_threshold
        klass_methods = [(k, filter(rel_filter, k.declarations.all())) for k in self.relevant_klasses]
        print klass_methods
        print "filter klasses", len(klass_methods)
        klass_methods = filter(lambda km: len(km[1]) > 0, klass_methods)
        klass_methods = filter(lambda km: "TCollection_" not in km[0].name, klass_methods)
        print "returning dict", len(klass_methods)
        return dict(klass_methods)
    
    def _group_klasses(self):
        counts = sorted(((k, len(self.klass_methods[k])) for k in self.klass_methods), key=lambda k: k[1])
        count_dict = {}
        for klass, count in counts:
            count_dict[count] = count_dict.get(count, []) +[klass]
    
    def find_similar(self, klass, others):
        similarities = []
        method_names = set([a[0] for a in Method.objects.filter(parent=klass).values_list('name')])
        for o in others:
            names = set([a[0] for a in Method.objects.filter(parent=o).values_list('name')])
            similarities.append(o, method_names.intersection(names))
        
        similarities.sort(key=operator.itemgetter(1))
        return similarities
            
        
        
        
              
    
    



