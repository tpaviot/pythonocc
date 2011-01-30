'''
Created on Jan 17, 2011

@author: henrik
'''
import re
import configuration



    

def get_classes(class_part):
    '''
    Returns a list of swig class declarations. 
    '''
    classes = re.findall("(%nodefaultctor(?:.|\n)+?)(?=(?:%nodefaultctor)|\Z)", class_part)
    classes.sort()
    split_classes = [split_class(c) for c in classes]
    return split_classes

def split_class(cls):
    '''
    splits a class into three segments (see <tags></tags>:
    <declaration>
    %nodefaultctor Standard_MMgrRoot;
    class Standard_MMgrRoot </declaration> {
        public:
        <members>
            %feature("autodoc", "1");
            virtual Standard_Address Allocate(const Standard_Size theSize);
            %feature("autodoc", "1");
            virtual Standard_Address Reallocate(Standard_Address & aPtr, const Standard_Size theSize);
            ...
        </members>
            
    };
    <swig-features>
    %feature("shadow") Standard_MMgrRoot::~Standard_MMgrRoot %{
    def __del__(self):
        ....
    %}
    
    %extend Standard_MMgrRoot {
        void _kill_pointed() {
            delete $self;
        }
    };
    <swig-features>
    '''
    
    #print cls
    
    exp = "((?:.|\n)+class .+)({\s*public:)((?:.|\n)+?)(\n};)((?:.|\n)*)"
    dec, junk, pub, morejunk, swig = re.findall(exp, cls)[0]
    parts = [dec, pub, swig]
    assert len("".join(parts)) == len(cls) - len(junk) - len(morejunk) 
    return parts


def split_features(pub_or_swig):
    '''splits code into blocks delimited by %feature-statements'''
    #note, using non consuming capture group (?= ... )
    feats = re.findall("(%\w+(?:.|\n)+?)(?=(?:%\w+)|\Z)", pub_or_swig)
    assert trim_feature("".join(feats)) == trim_feature(pub_or_swig)
    
    def filter_features(feat):
        if "DynamicType()" in feat:
            #print "DYNAMIC:", feat
            return False
        return True
    #feats.remove('%feature("autodoc","1");virtualHandle_Standard_Type&DynamicType();')
    feats = filter(filter_features, feats)
    feats.sort()
    return feats

def trim_feature(feat):
    '''makes some replacements to the compared strings, 
    to make things a bit easier to start'''
    
    #TODO: ignore const expressions for now
    #feat = re.sub("const", "", feat) 
    #feat = re.sub("static const", "static", feat)
    #ignore whitespace
    feat = re.sub("\s", "", feat)
    #ignore docs
    feat = re.sub('%feature\("autodoc",".*"\)', '%feature("autodoc","1")', feat)
    
    
    return feat

def class_name(class_dec):
    '''extract classname from %nodefaultctor'''
    return re.findall("%nodefaultctor (\w+);", class_dec)[0]

def filter_difficult_features(feat):
    return  feat
#    def ignore(f):
#        if 'operator=' in f or 'staticvoidRaise' in f:
#            return False
#        return True 
#    return filter(ignore, feat)


def compare_classes(class_part_1, class_part_2):
    classes1 = get_classes(class_part_1)
    classes2 = get_classes(class_part_2)
    tot_diff1 = 0
    tot_diff2 = 0
    
    class_names1 = [class_name(cls[0]) for cls in classes1]
    class_names2 = [class_name(cls[0]) for cls in classes2]


    diff1, diff2 = report_diff(class_names1, class_names2, "Classes")

    assert diff1 + diff2 == 0
    
    for (dec1, pub1, swig1), (dec2, pub2, swig2) in zip(classes1, classes2):
        name1, name2 = class_name(dec1),  class_name(dec2)
        
        assert name1 == name2
        pub2 = pub2.replace("operator=(", "assign(") #my version renames it for some reason
        pub2 = pub2.replace("operator()", "__call__")
        feats1 = split_features(pub1) + split_features(swig1)
        feats2= split_features(pub2) + split_features(swig2)
        
        
        feats1 = [trim_feature(feat) for feat in feats1]
        feats2 = [trim_feature(feat) for feat in feats2]
        feats1 = filter_difficult_features(feats1)
        feats2 = filter_difficult_features(feats2)
        
        diff1, diff2 = report_diff(feats1, feats2, "Class members of %s"%name1)

        tot_diff1 += diff1   
        tot_diff2 += diff2


    print "Total differences: \n%s not found in Original version\n%s not found in Refactored" % (tot_diff1, tot_diff2)
    return tot_diff1, tot_diff2




def compare_typedefs(tdef_part1, tdef_part2):
    tdefs1 = set(re.findall("typedef.*\n", tdef_part1))
    tdefs2 = set(re.findall("typedef.*\n", tdef_part2))
    return report_diff(tdefs1, tdefs2, "Typedefs")

def split_enums(part):
    all = re.findall("(enum (\w+) *{\s*((?:.|\n)+?)};\s*)", part)
    assert "".join([a[0] for a in all]) == part
    all.sort(key=lambda a: a[1])
    return [a[1:] for a in all]

def compare_enums(part1, part2):
    enums1 = split_enums(part1)
    enums2 = split_enums(part2)
    
    names1 = [enum[0] for enum in enums1]
    names2 = [enum[0] for enum in enums2]
    d1, d2 = report_diff(names1, names2, "Enum Names")
    assert d1 + d2 == 0
    
    for (name1, values1), (name2, values2) in zip(enums1, enums2):
        values1 = [v.strip() for v in values1.strip().split(',')]
        values2 = [v.strip() for v in values2.strip().split(',')]
        #print values1
        dd1, dd2 = report_diff(values1, values2, "Enum Values for %s"%name1)
        d1 += dd1
        d2 += dd2
    return d1, d2
        
        
    

def report_diff(list1, list2, name):
    set1 = set(list1)
    set2 = set(list2)
    diff1 = set1.difference(set2)
    diff2 = set2.difference(set1)
    #diff2 = subtract_set(split2, split1)
    
        
    if len(diff2) > 0:
        print "Diffs %s:" % name, len(diff1), len(diff2)
        print ">>>>>>>%s not found in Original version\n"%name, "\n".join(sorted(diff1)), "\n<<<<<<<<<"
        print ">>>>>>>%s not found in Refactored version\n"%name, "\n".join(sorted(diff2)), "\n<<<<<<<<<"
    return len(diff1), len(diff2)

def split_module(module):
    head_exp = '((?:.|\n)+%include.+\s*)'
    tdef_exp = '((?:typedef.*\n)+\s*)?'
    enums_exp = '((?:enum(?:.|\n)+?};\s*)+)?'
    cls_exp = '(%nodefaultctor(?:.|\n)+)?'
    exp = "".join([head_exp, tdef_exp, enums_exp, cls_exp])
    #print "EXP", exp, re.findall(exp, module)
    return re.findall(exp, module)[0]

def compare_module(module1, module2):
    mod1 = open(module1, 'r').read()
    mod2 = open(module2, 'r').read()
    head1, typedefs1, enums1, classes1 = split_module(mod1)
    assert head1+typedefs1+enums1+classes1 == mod1
    head2, typedefs2, enums2, classes2 = split_module(mod2)
    assert head2+typedefs2+enums2+classes2 == mod2
    
    d1, d2 = compare_classes(classes1, classes2)
    diff1 = d1
    diff2 = d2
    
    d1, d2 = compare_typedefs(typedefs1, typedefs2)
    diff1 += d1
    diff2 += d2
    
    d1, d2 = compare_enums(enums1, enums2)
    diff1 += d1
    diff2 += d2
    
    
    return diff1, diff2




from builder.swig_generator import ModularBuilder


#modules = ['BRepBuilderAPI', 'GeomAPI', 'Geom2dAdaptor']    
b = ModularBuilder(['Geom'], rebuild_db=True)
#                    'GeomLProp', 'CPnts', 'IntImp', 'Standard', 'GeomAdaptor', 'TopTrans', 'MMgt', 'ApproxInt', 'Bnd', 'PGeom2d', 'Approx', 'Extrema', 'MAT', 'DBC'],rebuild_db=True)
mb = b._mb

#compare = ['Standard', 'MMgt', 'TCollection', 'gp', 'TColStd', 'GeomAbs', 'TColgp', 'Geom']
compare = [m.name for m in b.modules]

not_in_orig = 0
not_in_refactored = 0
failed = []
for mod in compare:
    
    print "MODULE", mod
#    try:
    d1, d2 = compare_module('./SWIG/linux_darwin/%s.i'%mod, '../wrapper/SWIG/linux_darwin/%s.i'%mod)
    #d1, d2 = compare_classes('./SWIG/linux_darwin/%s.i'%mod, './SWIG/before_linux_darwin/%s.i'%mod)
#    except:
#        print "FAILED", mod
#        failed.append(mod)
#        continue
    not_in_orig += d1
    not_in_refactored += d2
print "Done.\ncompared %s" % compare
print "Total differences: \n%s not found in Original version\n%s not found in Refactored" % (not_in_orig, not_in_refactored) 
    
    
    