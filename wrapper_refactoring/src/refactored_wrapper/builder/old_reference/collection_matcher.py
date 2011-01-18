'''
Created on Apr 21, 2010

@author: henrik
'''
import re
from refactored_wrapper.builder.templates import BaseTemplate
from refactored_wrapper.builder.builder import mb
#from refactored_wrapper.templates import BaseTemplate

list_types = ['Array1', 'Array2', 'List', 'Sequence', 'Set', 'SetList']
dict_types = ['DataMap', 'PackedMap', 'Map', 'IndexedMap', 'IndexedDataMap', 'StdMap']
stack_types = ['Queue', 'Stack']
set_types = ['Set']

support_types = ['SetList', 'Iterator', 'Node']

types = list_types + dict_types + stack_types
mems = {}
for t in types:
    exp = "_%sOf" % t
    #print exp
    mems[t] = set(mb.classes(lambda n: exp in n.name).mem_funs().name.to_list())
    
import yaml
yaml.dump(mems, file("coll_members", 'w'))




class CollectionModuleTemplate(BaseTemplate):
    """
    ${base_module}
    
    ${
    """
    

class CollectionTemplate(BaseTemplate):
    """
    %feature("shadow") ${class_name}::${len} %{
        def __getitem__(self, index):
            return self.${getitem}(index + self.${lower})
    %}
    ${features}
    """


class ShadowTemplate(BaseTemplate):
    """
    %feature("shadow") ${class_name}::${function_name} %{
        def __getitem__(self, index):
            return self.${function_name}(index${index_mod})
    %}
    """

class SettableTemplate(BaseTemplate):
    """
    ${parent_template}
    %feature("shadow") ${class_name}::${getitem} %{
        def __getitem__(self, index):
            return self.${getitem}(index${index_mod})
    %}
    %feature("shadow") ${class_name}::${setitem} %{
        def __setitem__(self, index, value):
            self.${setitem}(index + self.${lower}, value) 
    %}
    """
    
    def __init__(self, **kwargs):
        #super(Array1Template, self).__init__()
        self.__dict__.update(kwargs)

def prototype_matcher(matcher_base_t):
    def __init__(self, prototype_exp):
        self.exp = prototype_exp
        
    def __call__(self, decl):
        str_ = "%s(%s)" % (decl.name, ",".join([str(t) for t in decl.arguments.type]))
        return re.match(self.exp, str_)



class CollDef(object):
    name = ""
    type = None
    base = None
    matcher = None

    def matcher(self):
        pass
    
    def configure(self, decl):
        name = decl.name.partition("_")[-1]
        return decl.parent.class_("%s_%sIteratorOf%s" % 
                                      (decl.module_name, self.name, name))
    
class ListDef(CollDef):
    name = 'List'
    type = list


class Array1Def(CollDef):
    name = 'Array1'
    type = tuple
    index_mod = "+ self.Lower()"
    def configure(self, decl):
        super(Array1Def, self).configure(decl)
        
        decl.mem_fun('ChangeValue').exclude()
        decl.mem_fun("Length").rename('__len__')
        decl.add_template(GetterT(index_mod=self.index_mod))
        decl.add_template(SetterT(index_mod=self.index_mod))
        self.get_iterator(decl).
        


class SequenceDef(Array1Def):
    name = 'Sequence'
    base = 'TCollection_BaseSequence'
    ignore = ['ChangeValue']
    renames = {'__getitem__':'Value',
               '__setitem__':'SetValue'
               
               }
    
    def configure(self, decl):
        super(SequenceDef, self).configure(decl)
        contained_type = decl.name.partition("Of")[-1]
        decl.add_template(ExtendT())
        decl.add_template()
        
        #decl.mem_fun("Append", arg_types=["%s const &" % contained_type]).rename()

class SequenceTemplate(BaseTemplate):
    """
    
    
    """

"""
#Static size, dynamic values
Array1: [Upper, Lower, SetValue, ChangeValue, Length, Value, IsAllocated, Init, Destroy,
  Assign]
Array2: [UpperRow, RowLength, UpperCol, ColLength, ChangeValue, Value, SetValue, LowerRow,
  Init, LowerCol, Allocate, Destroy, Assign]
  
List:
  #Dynamic size, static values
    [Last, InsertBefore, RemoveFirst, Clear, Remove, Prepend, IsEmpty, Extent, InsertAfter,
  Assign, Append, First]
    #Dynamic List
    Sequence: 
        mapping:
            SetValue: __setitem__
            ChangeValue: !Ignore
            Value: __getitem__
             Split]
  
DataMap: [UnBind, IsBound, Bind, Clear, Find, ChangeFind, Assign, ReSize]
IndexedMap: [FindIndex, Clear, Contains, RemoveLast, FindKey, Add, ReSize, Assign,
  Substitute]

Map: [Clear, Contains, Remove, Add, Assign, ReSize]
PackedMap: [Differ, Statistics, IsSubset, Union, Contains, GetMinimalMapped, Unite,
  Add, Intersect, IsEqual, NbBuckets, InternalExtent, GetMaximalMapped, Subtraction,
  Extent, Difference, Subtract, Clear, Remove, HasIntersection, IsEmpty, Assign, ReSize,
  Intersection]
Queue: [Clear, Pop, Push, Length, IsEmpty, ChangeFront, Front, Assign]

Set: [Difference, Union, Clear, Contains, IsAProperSubset, Remove, Add, IsEmpty, Extent,
  Intersection, IsASubset]

Stack: [Clear, ChangeTop, Top, Pop, Depth, IsEmpty, Push, Assign]
StdMap: []
"""
[('__add__',1),('__contains__',1),
('__delitem__',1),('__delslice__',2),
( '__eq__',1),( '__ge__',1),( '__getitem__',1),
( '__getslice__',2),( '__gt__',1),( '__hash__',0),
( '__iadd__',1),( '__imul__',1),( '__iter__',0),
( '__le__',1),( '__len__',0),( '__lt__',1),
( '__mul__',1),( '__ne__',1),( '__reversed__',0),
( '__rmul__',1),( '__setitem__',1),( '__setslice__',3),
( 'append',1),( 'count',1),( 'extend',1),( 'index',1),
( 'insert',1),( 'pop',1),( 'remove',1),( 'reverse',0)]












coll_exp = "_(${types})Of"
support_exp = ""


"""
collections:
  packages: 
    wrapped: ['TColgp']
  wrapped: ['Array1', 'Array2', 'Sequence', 'List', 'Set']
  methods:
    rename:
      Value: "__getitem__"
      SetValue: "__setitem__"
      Remove: "__delitem__"
      Reverse: "__reversed__"
      Length: "__len__"
      Extent: __len__"
      
  Array1: 
    get_arguments_from: SetValue
    python_type: list
    rename:
      Value: "__getitem"
      SetValue: "__setitem__"
      Length: "__len__"
    populator: "SetValue(i, args[0][i].obj)"
  Array2: 
    get_arguments_from: SetValue
    python_type: list
    rename:
      Value: "__getitem"
      SetValue: "__setitem__"
      Length: "__len__"
    populator: "SetValue(i, args[0][i].obj)"
  
  List: 
    get_arguments_from: Append
    python_type: dict
    rename:
      Extent: __len__"
    populator: "Append(args[0][i].obj)"
  
  Sequence: 
    get_arguments_from: Append
    python_type: list
    rename:
      Value: "__getitem"
      SetValue: "__setitem__"
      Remove: "__delitem__"
      Reverse: "__reversed__"
      Length: "__len__"
    populator: "Append(args[0][i].obj)"
  Set:
    get_arguments_from: Add
    python_type: dict
    rename:
      Extent: __len__" 
    populator: "Append(args[0][i].obj)"
"""







def split(name):
    pkg, name = name.split("_")
    coll_types = re.findall("([A-Z]\w+)Of")
    
    



