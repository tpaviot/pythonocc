'''
Created on Jan 17, 2011

@author: henrik
'''
import re

def get_classes(module):
    '''
    Returns a list of swig class declarations. 
    '''
    
    module_header, classes = re.findall("(\A(?:.|\n)+?)(%nodefaultctor(?:.|\n)+)", module)[0]

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
    class Standard_MMgrRoot {
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
    feats.sort()
    return feats

def trim_feature(feat):
    '''makes some replacements to the compared strings, 
    to make things a bit easier to start'''
    
    #TODO: ignore const expressions for now
    feat = re.sub("const", "", feat)
    feat = re.sub("\s", "", feat)
    
    
    return feat

def class_name(class_dec):
    '''extract classname from %nodefaultctor'''
    return re.findall("%nodefaultctor (\w+);", class_dec)[0]


def compare_classes(new, orig):
    classes1 = get_classes(file(new, 'r').read())
    classes2 = get_classes(file(orig, 'r').read())
    
    for (dec1, pub1, swig1), (dec2, pub2, swig2) in zip(classes1, classes2):
        name1, name2 = class_name(dec1),  class_name(dec2)
        print name1, '==', name2
        assert name1 == name2
        
        feats1 = split_features(pub1) + split_features(swig1)
        feats2= split_features(pub2) + split_features(swig2)
        feats1 = set([trim_feature(feat) for feat in feats1])
        feats2 = set([trim_feature(feat) for feat in feats2])
        
        
        diff1 = feats1.difference(feats2)
        diff2 = feats2.difference(feats1)
        #diff2 = subtract_set(split2, split1)
        print "Diffs:", len(diff1), len(diff2)
        #if len(diff1) > 0:
        
        if len(diff2) > 0:
            print ">>>>>>>Not found in Refactored version\n", "\n".join(diff2), "\n<<<<<<<<<"
            print ">>>>>>>Not found in Original version\n", "\n".join(diff1), "\n<<<<<<<<<"
        
   

from builder.swig_generator import ModularBuilder

b = ModularBuilder(['Standard'], rebuild_db=True)
#                    'GeomLProp', 'CPnts', 'IntImp', 'Standard', 'GeomAdaptor', 'TopTrans', 'MMgt', 'ApproxInt', 'Bnd', 'PGeom2d', 'Approx', 'Extrema', 'MAT', 'DBC'],rebuild_db=True)
mb = b._mb

compare_classes('./SWIG/linux_darwin/Standard.i', './SWIG/ref_linux_darwin/Standard.i')
 
    
    
    