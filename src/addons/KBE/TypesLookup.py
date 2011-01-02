from OCC import GeomAbs

class GeometryLookup(object):
    from OCC import GeomAbs
    def __init__(self):
        self.lookup, self.reverse_lookup = {}, {}
        # construct a geometry types / enum dict
        for i in dir(GeomAbs):
            if i.startswith('GeomAbs_'):
                value = GeomAbs.__dict__[i]
                self.lookup[i] = value
                self.reverse_lookup[value] = i
                
    def __getitem__(self, check):
        try:
            return self.reverse_lookup[ check ]
        except KeyError:
            print 'failed to lookup geometry type'
            return None

class ShapeToTopology(object):
    '''
    looks up the topology type and returns the corresponding topological entity
    '''
    def __init__(self):
        from OCC.TopoDS import TopoDS
        from OCC.TopAbs import *
        self.tds =  TopoDS()
        self.topoTypes = {   TopAbs_VERTEX:      self.tds.vertex,
                        TopAbs_EDGE:        self.tds.edge,
                        TopAbs_FACE:        self.tds.face,
                        TopAbs_WIRE:        self.tds.wire,
                        TopAbs_SHELL:       self.tds.shell,
                        TopAbs_SOLID:       self.tds.solid,
                        TopAbs_COMPOUND:    self.tds.compound,
                        TopAbs_COMPSOLID:   self.tds.compsolid,
                }

    def __call__(self, shape):
        if hasattr(shape, "ShapeType"):
            return self.topoTypes[shape.ShapeType()](shape)
        else:
            raise AttributeError('shape has not method `ShapeType`')
    


class TopologyLookup(object):
    '''
    looks up the topology type of a Adaptor or Topo_DS type and returns a string
    '''
    from OCC import TopAbs
    def __init__(self):
        # nessecary to filter out stuff like TopAbs_IN which are related to orientation, not Topology
        _topoTypesA = ['TopAbs_VERTEX', 'TopAbs_EDGE', 'TopAbs_EDGE', 'TopAbs_WIRE', 'TopAbs_FACE', 
             'TopAbs_SHELL','TopAbs_SOLID','TopAbs_COMPSOLID', 'TopAbs_COMPOUND', 'TopAbs_SHAPE' ]
        
        _topoTypesB = [TopAbs_VERTEX, TopAbs_EDGE, TopAbs_EDGE, TopAbs_WIRE, TopAbs_FACE, 
             TopAbs_SHELL,TopAbs_SOLID,TopAbs_COMPSOLID, TopAbs_COMPOUND, TopAbs_SHAPE ]
        
        self.lookup = dict(zip(_topoTypesA, _topoTypesB))
        self.reverse_lookup = {}
        for k,v in self.lookup.iteritems():
            self.reverse_lookup[v]=k
    
    def __getitem__(self, check):
        try:
            return self.reverse_lookup[ check ]
        except KeyError:
            print 'failed to lookup geometry type'
            return None


class OrientationLookup(object):
    '''
    looks up the orientation type and returns a string
    '''
    
    from OCC import TopAbs
    def __init__(self):
        # nessecary to filter out stuff like TopAbs_IN which are related to orientation, not Topology
        _topoTypesA = ['TopAbs_FORWARD', 'TopAbs_REVERSED', 'TopAbs_INTERNAL', 'TopAbs_EXTERNAL' ]
        _topoTypesB = [TopAbs_FORWARD, TopAbs_REVERSED, TopAbs_INTERNAL, TopAbs_EXTERNAL ]
        
        self.lookup = dict(zip(_topoTypesA, _topoTypesB))
        self.reverse_lookup = {}
        for k,v in self.lookup.iteritems():
            self.reverse_lookup[v]=k
    
    def __getitem__(self, check):
        try:
            return self.reverse_lookup[ check ]
        except KeyError:
            print 'failed to lookup orientation type'
            return None


class StateLookup(object):
    '''
    looks up the orientation type and returns a string
    '''
    
    from OCC import TopAbs
    def __init__(self):
        # nessecary to filter out stuff like TopAbs_IN which are related to orientation, not Topology
        _topoTypesA = ['TopAbs_IN', 'TopAbs_OUT', 'TopAbs_ON', 'TopAbs_UNKNOWN' ]
        _topoTypesA = [TopAbs_IN, TopAbs_OUT, TopAbs_ON, TopAbs_UNKNOWN ]
        
        self.lookup = dict(zip(_topoTypesA, _topoTypesB))
        self.reverse_lookup = {}
        for k,v in self.lookup.iteritems():
            self.reverse_lookup[v]=k
    
    def __getitem__(self, check):
        try:
            return self.reverse_lookup[ check ]
        except KeyError:
            print 'failed to lookup state type'
            return None


class StateLookup(object):
    '''
    looks up the orientation type and returns a string
    '''
    
    from OCC import TopAbs
    def __init__(self):
        # nessecary to filter out stuff like TopAbs_IN which are related to orientation, not Topology
        _topoTypesA = ['TopAbs_IN', 'TopAbs_OUT', 'TopAbs_ON', 'TopAbs_UNKNOWN' ]
        _topoTypesA = [TopAbs_IN, TopAbs_OUT, TopAbs_ON, TopAbs_UNKNOWN ]
        
        self.lookup = dict(zip(_topoTypesA, _topoTypesB))
        self.reverse_lookup = {}
        for k,v in self.lookup.iteritems():
            self.reverse_lookup[v]=k
    
    def __getitem__(self, check):
        try:
            return self.reverse_lookup[ check ]
        except KeyError:
            print 'failed to lookup state type'
            return None

class ClassifyTopology(object):
    '''
    returns what type `topoType` is
    
    const
    
    @param topoType:
    
    fundamental types to inherit from:
        TopoDS_Shape
        Adaptor3d_Curve
        Adaptor2d_Curve2d
        #gce_root
    
    '''
    def __init__(self):
        '''
        constructs a lookup of all (reasonbly) possible geometric OCC types
        '''
        self.topoTypes = [TopoDS_Vertex,]
   
        self.adaptorTypes =[]
        self.gpTypes = []
        
        self.topo_lookup    = TopologyTypeLookup()
        self.adaptor_lookup = AdaptorTypeLookup()
        self.gp_lookup      = GpTypeLookup()
        
        from OCC import TopoDS, gp, Adaptor2d, Adaptor3d
        
    def __getitem__(self, other):
        for i in _possible:
            if isinstance(topoType, i):
                return i
    
    def is_adaptor_curve_type(self, other):
        issubclass(other.__class__, Adaptor2d_Curve2d) or isinstance(other.__class__, Adaptor3d_Curve)
     
    def is_adaptor_surface_type(self, other):
        issubclass(other.__class__, Adaptor3d_Surface)
        
    def is_adaptor_type(self, other):
        return True if self.is_adaptor_curve_type(other) or  self.is_adaptor_surface_type(other) else False
        
    def is_topods_type(self, other):
        issubclass(other.__class__, TopoDS_Shape)
 
    def is_gp_type(self, other):
        return True if other.__class__.__name__.split('_')[0] == 'gp' or 'jajaja' else False 

