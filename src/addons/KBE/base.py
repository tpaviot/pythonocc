'''
Sketch for a high-level API for pythonOCC

Please note the following;
@readonly
means that the decorated method is a readonly descriptor
@property
means that the decorated method can be set / get using the descriptor
( irony is that just using @property *would* result in a readonly descriptor :")

Sometimes a set of methods should be contained in another module or class, or simply grouped.
For instance the set of methods after:
#===============================================================================
#    Curve.local_properties
#===============================================================================

Can be a module, class or namespace.

'''
from OCC.gp import *

from OCC.TopoDS import *
from OCC.Geom import *
from OCC.BRep import *
# for projection
from OCC.GeomAPI import *
from OCC.Extrema import *
# for checking if a surface is planar
from OCC.GeomLib import *
from OCC.TopExp import *
from OCC.BRepBuilderAPI import *

# for generalizing edges/curves/analytic types
from OCC.Adaptor2d import *
from OCC.Adaptor3d import *
# we'll use this, really
from OCC.BRepAdaptor import *

from OCC.GCPnts import *

#===============================================================================
# HELPER CLASSES
#===============================================================================
from types_lut import GeometryLookup, ShapeToTopology
from OCC.Utils.Context import assert_isdone
from OCC.Utils.Construct import *
from OCC.Geom import *
import warnings

#===============================================================================
# DISPLAY
#===============================================================================
global display

from jelle_utils.patterns import singleton

@singleton
class Display(object):
    def __init__(self):
        from OCC.Display.SimpleGui import init_display
        self.display, self.start_display, self.add_menu, self.add_function_to_menu = init_display()
    def __call__(self, *args, **kwargs):
        return self.display.DisplayShape(*args, **kwargs)

#===============================================================================
# base class ( bit inspired by pycado )
#===============================================================================

class KbeObject(object):
    """base class for all KBE objects"""

    def __init__(self, name=None):
        """Constructor for KbeObject"""
        self.name = name
        self._dirty = True
        self._topods = None

    @property
    def is_dirty(self):
        '''when an object is dirty, its topology will be rebuild when update is called'''
        return self._dirty

    @is_dirty.setter
    def is_dirty(self, _bool):
        self._dirty = bool(_bool)

    @property
    def topo(self):
        '''return the TopoDS_* object

        updates when dirty'''
        
        if self.is_dirty:
            self.build()
        return self._topods
    
    def build(self):
        if self.name.startswith('Vertex'):
            self._topods = make_vertex(self)

#===============================================================================
#    Surface.topology
#     DONE! Just call Topology.py
#===============================================================================

class TopologySurface(object):
    def __init__(self, instance):
        '''

        @param instance:
        '''
        self.Instance = instance

#===============================================================================
#    Iterators...
#===============================================================================

    def iter_control_points(self):
        '''iterator over the control points
        '''
        raise NotImplementedError

    def iter_weights(self):
        '''iterator over the weights
        '''
        raise NotImplementedError

    def is_planar(self, tolerance=None):
        '''checks if the surface is planar within a tolerance
        '''
        aaa = GeomLib_IsPlanarSurface(self.srf)
        return aaa.IsPlanar(), aaa.Plan()

    def on_surface(self, coord):
        '''checks whether a coordinate lies on the  surface
        '''
        raise NotImplementedError


    def on_edge(self, u, v):
        '''checks if the parameter lies on the edge of a face
        '''
        raise NotImplementedError

    def is_trimmed(self):
        '''checks if curve is trimmed
        '''
        from OCC.BRepTopAdaptor import BRepTopAdaptor_FClass2d
        from OCC.BRepTools import BRepTools
        tol = 1e-4
        uv  = gp_Pnt2d(u,v)
        u1,u2, v1,v2 = BRepTools().UVBounds(face)
        dailen = (u2-u1)*(u2-u1) + (v2-v1)*(v2-v1)
        dailen = math.sqrt(dailen) / 400.
        tol = max([dailen, tol])
        cl = BRepTopAdaptor_FClass2d(face, tol)
        if cl.Perform(uv) == TopAbs_IN:
            return True
        else:
            return False


    def coordinate_from_parameter(self, u, v, transformed=True):
        '''world coordinate at a given parameter on the surface
        if transformed, apply the OCC Location transformation
        '''

    def tesselation(self, angle):
        '''descriptor of the parameter controlling the precision of the tesselation
        '''
        raise NotImplementedError

#===============================================================================
#    Surface.global_properties
#===============================================================================

class GlobalProperties(object):
    def __init__(self, instance):
        from OCC.GProp import GProp_GProps
        from OCC.BRepGProp import BRepGProp
        self.instance = instance
        self.system = GProp_GProps()
        BRepGProp().SurfaceProperties(self.instance.face, self.system)

    def inertia(self):
        '''returns the inertia matrix'''
        return self.system.MatrixOfInertia(), self.system.MomentOfInertia()

    def area(self):
        '''returns the area of the surface'''
        return self.system.Mass()

    def bbox(self):
        '''
        returns the bounding box of the face
        '''
        pass

    def global_properties(self):
        from OCC.BRepGProp import BRepGProp
#        from OCC.GProp import *
        prop = BRepGProp()
        pass

