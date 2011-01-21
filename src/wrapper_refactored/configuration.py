'''
Created on Apr 19, 2010

@author: henrik
'''
import yaml
import re
#def _process_dictionary(dictionary, merge=None, dont_merge=None, platform_specific=True):
#    to_merge = []
#    if merge is None:
#        to_merge = dictionary.keys()
#    else:
#        to_merge = merge
#    if dont_merge:
#        to_merge = filter(lambda k: k in dont_merge, to_merge)
#    
#    if platform_specific:
#        if sys.platform == 'win':
#            if 'nix_only' in to_merge:
#                del dict['nix_only']
#        else:
#            if 'win_only' in to_merge:
#                del dict['win_only']
#    
#    #TODO behaves wierd
#    for t in to_merge:
#        if t not in dictionary:
#            continue
#        val = dictionary[t]
#        del dictionary[t]
#        dictionary.update(val)
#    
#    return dictionary

import sys



def matches_list(item, l):
    m = bool(sum([bool(re.match(ex, item)) for ex in l]))
    
    if m and l[0] == 'TCollection_AVLNode':
        print item, "Matched", item
    return m


def filter_list(excludes):
    return lambda item: not matches_list(item, excludes)

#modules, class & member excludes
config = yaml.load(file('configuration.yml', 'r'))
modules = config['common']
                   
if sys.platform == 'win32':
    modules.update(config['win32'])
else:
    modules.update(config['nix']) 
    
#modules = _process_dictionary(yaml.load(file('configuration.yml', 'r')))


excluded_module_deps = [
                    #SMESH Dependencies
                    'TSideVector','TError','Z','TParam2ColumnMap',
                   'basic','exception','MeshDimension','TSetOfInt',
                   'NLinkNodeMap','pair<SMDS','NLink','TIDSortedElemSet',
                   'TElemOfElemListMap','TNodeNodeMap','EventListener',
                   'EventListenerData','TLinkNodeMap','MapShapeNbElems', 
                   'Selector', 'TVariablesList', #SalomeGEOM/SGEOM
                   'XW',  #TODO: better handling of XW.i dependency with Xw module under Linux
                   'LDOMParser' #not really a module, hopefully not used
                   ]
if sys.platform=='win32':
    excluded_module_deps.extend(['WNT', 'Xw'])

excluded_module_deps_filters = ["(Handle_)*%s_"%emd for emd in excluded_module_deps]

standard_types = ['void','char','int','None', #standard types:
                  '.*::',  #external stuff
                  'size_t' #???
                  ]
dependency_filter = filter_list(excluded_module_deps_filters + standard_types)
    
excluded_gccxml_headers = ['TCollection_AVLNode' ,'BndLib_Compute',
                   'W32_Allocator' ,'WNT_Allocator',
                   'WNT_FontMapEntry' ,'Standard_Atomic',
                   'WNT_FontTable','AlienImage_GIFLZWDict',
                   'Image_PixelFieldOfDIndexedImage','Standard_Transient_proto',
                   'TopOpeBRepBuild_Builder', 'TopOpeBRepBuild_Fill',
                   'TopOpeBRepBuild_SplitSolid', 'TopOpeBRepBuild_SplitShapes',
                   'TopOpeBRepBuild_SplitEdge','Message_Algorithm',
                   'Message_ExecStatus','GEOMImpl_Template',
                   'TopBas.*Test',
                   'Xw_Cextern' #not originally
                   'Interface_Check',
                   'Interface_CheckIterator',
                   
                   ]
if sys.platform=='win32':
    excluded_gccxml_headers.extend(['InterfaceGraphic_Visual3d','Xw_Cextern',
                                    'SMESH_ControlsDef','Standard_Real_Original',
                                    '.*XWD','.*X11'])
else:
    excluded_gccxml_headers.extend(['.*WNT'])
    
excluded_gccxml_headers = ["(.*\/)*%s" % egh for egh in excluded_gccxml_headers]

gccxml_header_filter = filter_list(excluded_gccxml_headers)
import networkx as nx
#TODO: 
module_dependencies = nx.read_dot('module_dependencies.dot')
