'''
Created on Jan 17, 2011

@author: henrik
'''
import re

def get_classes(module):
    '''
    Returns a list of swig class declarations. 
    '''
    #print "MODULE\n%s\nMODULE" %module
    found = re.findall("(\A(?:.|\n)+?)(%nodefaultctor(?:.|\n)+)", module)
    if not found: 
        return []
    module_header, classes = found[0]
    # split into parts surrounded by %nodefaultctor statements or end of file (?= == doesnt consume the token
    #note, using non consuming capture group (?= ... )
    classes = re.findall("(%nodefaultctor(?:.|\n)+?)(?=(?:%nodefaultctor)|\Z)", classes)

    classes.sort()
    assert len(module_header+"".join(classes)) == len(module)
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


def compare_classes(new, orig):
    print new 
    print orig
    classes1 = get_classes(file(new, 'r').read())
    classes2 = get_classes(file(orig, 'r').read())
    tot_diff1 = 0
    tot_diff2 = 0
    
    class_names1 = set([class_name(cls[0]) for cls in classes1])
    class_names2 = set([class_name(cls[0]) for cls in classes2])

    diff1 = class_names1.difference(class_names2)
    diff2 = class_names2.difference(class_names1)
    #diff2 = subtract_set(split2, split1)
    print "Class Diffs:", len(diff1), len(diff2)
    if len(diff1) > 0:
        print ">>>>>>>Classes not found in Original version\n", "\n".join(sorted(diff1)), "\n<<<<<<<<<"
        tot_diff1 += len(diff1)
    if len(diff2) > 0:
        print ">>>>>>>Classes not found in Refactored version\n", "\n".join(sorted(diff2)), "\n<<<<<<<<<"
        tot_diff2 += len(diff2)
        
    assert len(diff1) + len(diff2) == 0
#%feature("autodoc","1");Standard_Real&__call__(constStandard_IntegerRow,constStandard_IntegerCol);
#%feature("autodoc","1");constStandard_Real&__call__(constStandard_IntegerRow,constStandard_IntegerCol);
#%feature("autodoc","1");constStandard_Real&__call__(constStandard_IntegerRow,constStandard_IntegerCol)const; 
    
    for (dec1, pub1, swig1), (dec2, pub2, swig2) in zip(classes1, classes2):
        name1, name2 = class_name(dec1),  class_name(dec2)
        
        assert name1 == name2
        pub2 = pub2.replace("operator=(", "assign(") #my version renames it for some reason
        pub2 = pub2.replace("operator()", "__call__")
        feats1 = split_features(pub1) + split_features(swig1)
        feats2= split_features(pub2) + split_features(swig2)
        
        
        feats1 = [trim_feature(feat) for feat in feats1]
        feats2 = [trim_feature(feat) for feat in feats2]
        feats1 = set(filter_difficult_features(feats1))
        feats2 = set(filter_difficult_features(feats2))
        
        diff1 = feats1.difference(feats2)
        diff2 = feats2.difference(feats1)
        #diff2 = subtract_set(split2, split1)
        if len(diff2) > 0:
            print name1, '!=', name2
            print "Diffs:", len(diff1), len(diff2)
            if len(diff1) > 0:
                print ">>>>>>>Not found in Original version\n", "\n".join(diff1), "\n<<<<<<<<<"
                
            if len(diff2) > 0:
                print ">>>>>>>Not found in Refactored version\n", "\n".join(diff2), "\n<<<<<<<<<"
                
        tot_diff1 += len(diff1)   
        tot_diff2 += len(diff2)


    print "Total differences: \n%s not found in Original version\n%s not found in Refactored" % (tot_diff1, tot_diff2)
    return tot_diff1, tot_diff2
        
   

from builder.swig_generator import ModularBuilder


module = 'Geom'
b = ModularBuilder([module], rebuild_db=True)
#                    'GeomLProp', 'CPnts', 'IntImp', 'Standard', 'GeomAdaptor', 'TopTrans', 'MMgt', 'ApproxInt', 'Bnd', 'PGeom2d', 'Approx', 'Extrema', 'MAT', 'DBC'],rebuild_db=True)
mb = b._mb

#compare = ['Standard', 'MMgt', 'TCollection', 'gp', 'TColStd', 'GeomAbs', 'TColgp', 'Geom']
compare = [m.name for m in b.modules]

not_in_orig = 0
not_in_refactored = 0
failed = []
for mod in compare:
    

#    try:
    d1, d2 = compare_classes('./SWIG/linux_darwin/%s.i'%mod, '../wrapper/SWIG/linux_darwin/%s.i'%mod)
    #d1, d2 = compare_classes('./SWIG/linux_darwin/%s.i'%mod, './SWIG/before_linux_darwin/%s.i'%mod)
#    except:
#        print "FAILED", mod
#        failed.append(mod)
#        continue
    not_in_orig += d1
    not_in_refactored += d2
print "Done.\ncompared %s" % compare
print "Total differences: \n%s not found in Original version\n%s not found in Refactored" % (not_in_orig, not_in_refactored) 
    
    
    