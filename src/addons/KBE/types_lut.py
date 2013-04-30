'''
this class abstract types
'''
from OCC.BRepCheck import  *
from OCC.GeomAbs import *
from OCC.TopoDS import *
from OCC.TopAbs import *

class ShapeToTopology(object):
    '''
    looks up the topology type and returns the corresponding topological entity
    '''
    def __init__(self):
        self.tds =  TopoDS()
        self.topoTypes = {
                        TopAbs_VERTEX:      self.tds.vertex,
                        TopAbs_EDGE:        self.tds.edge,
                        TopAbs_FACE:        self.tds.face,
                        TopAbs_WIRE:        self.tds.wire,
                        TopAbs_SHELL:       self.tds.shell,
                        TopAbs_SOLID:       self.tds.solid,
                        TopAbs_COMPOUND:    self.tds.compound,
                        TopAbs_COMPSOLID:   self.tds.compsolid,
                }

    def __call__(self, shape):
        if isinstance(shape,TopoDS_Shape):
            return self.topoTypes[shape.ShapeType()](shape)
        else:
            raise AttributeError('shape has not method `ShapeType`')

    def __getitem__(self, item):
        return self(item)

class EnumLookup(object):
    """
    perform bi-directional lookup of Enums'...
    """
    def __init__(self, li_in, li_out):
        self.d = {}
        for a,b in zip(li_in, li_out):
            self.d[a]=b
            self.d[b]=a

    def __getitem__(self, item):
        return self.d[item]


_curve_typesA = (GeomAbs_Line, GeomAbs_Circle,GeomAbs_Ellipse,GeomAbs_Hyperbola,GeomAbs_Parabola,
GeomAbs_BezierCurve,GeomAbs_BSplineCurve,GeomAbs_OtherCurve)
_curve_typesB = ('line', 'circle', 'ellipse','hyperbola','parabola','bezier','spline','other')


_surface_typesA = (GeomAbs_Plane ,GeomAbs_Cylinder, GeomAbs_Cone ,GeomAbs_Sphere, GeomAbs_Torus,
GeomAbs_BezierSurface, GeomAbs_BSplineSurface, GeomAbs_SurfaceOfRevolution, GeomAbs_SurfaceOfExtrusion,
GeomAbs_OffsetSurface, GeomAbs_OtherSurface )
_surface_typesB = ('plane','cylinder', 'cone', 'sphere', 'torus', 'bezier', 'spline', 'revolution',
'extrusion', 'offset', 'other')


_stateA = ('in', 'out', 'on', 'unknown')
_stateB = (TopAbs_IN, TopAbs_OUT, TopAbs_ON, TopAbs_UNKNOWN)


_orientA = ['TopAbs_FORWARD', 'TopAbs_REVERSED', 'TopAbs_INTERNAL', 'TopAbs_EXTERNAL' ]
_orientB = [TopAbs_FORWARD, TopAbs_REVERSED, TopAbs_INTERNAL, TopAbs_EXTERNAL ]


_topoTypesA = ['vertex', 'edge', 'wire', 'face', 'shell','solid','compsolid', 'compound', 'shape' ]
_topoTypesB = [ TopAbs_VERTEX, TopAbs_EDGE, TopAbs_WIRE, TopAbs_FACE, TopAbs_SHELL,TopAbs_SOLID,
                TopAbs_COMPSOLID, TopAbs_COMPOUND, TopAbs_SHAPE ]



_geom_types_a = ['line', 'circle', 'ellipse', 'hyperbola', 'parabola', 'beziercurve', 'bsplinecurve','othercurve']
_geom_types_b = [GeomAbs_Line, GeomAbs_Circle, GeomAbs_Ellipse, GeomAbs_Hyperbola, GeomAbs_Parabola, GeomAbs_BezierCurve,\
                 GeomAbs_BSplineCurve, GeomAbs_OtherCurve ]


# TODO: make a function that generalizes this, there is absolutely no need for 2 lists to define an EnumLookup!!!

def fix_formatting(_str):
    return [i.strip() for i in _str.decode('string_escape').split(',')]

_brep_check_a = fix_formatting("NoError, InvalidPointOnCurve, InvalidPointOnCurveOnSurface, InvalidPointOnSurface,\
No3DCurve, Multiple3DCurve, Invalid3DCurve, NoCurveOnSurface,\
InvalidCurveOnSurface, InvalidCurveOnClosedSurface, InvalidSameRangeFlag, InvalidSameParameterFlag,\
InvalidDegeneratedFlag, FreeEdge, InvalidMultiConnexity, InvalidRange,\
EmptyWire, RedundantEdge, SelfIntersectingWire, NoSurface,\
InvalidWire, RedundantWire, IntersectingWires, InvalidImbricationOfWires,\
EmptyShell, RedundantFace, UnorientableShape, NotClosed,\
NotConnected, SubshapeNotInShape, BadOrientation, BadOrientationOfSubshape,\
InvalidToleranceValue, CheckFail")

_brep_check_b = [BRepCheck_NoError, BRepCheck_InvalidPointOnCurve, BRepCheck_InvalidPointOnCurveOnSurface, BRepCheck_InvalidPointOnSurface,
BRepCheck_No3DCurve, BRepCheck_Multiple3DCurve, BRepCheck_Invalid3DCurve, BRepCheck_NoCurveOnSurface,
BRepCheck_InvalidCurveOnSurface, BRepCheck_InvalidCurveOnClosedSurface, BRepCheck_InvalidSameRangeFlag, BRepCheck_InvalidSameParameterFlag,
BRepCheck_InvalidDegeneratedFlag, BRepCheck_FreeEdge, BRepCheck_InvalidMultiConnexity, BRepCheck_InvalidRange,
BRepCheck_EmptyWire, BRepCheck_RedundantEdge, BRepCheck_SelfIntersectingWire, BRepCheck_NoSurface,
BRepCheck_InvalidWire, BRepCheck_RedundantWire, BRepCheck_IntersectingWires, BRepCheck_InvalidImbricationOfWires,
BRepCheck_EmptyShell, BRepCheck_RedundantFace, BRepCheck_UnorientableShape, BRepCheck_NotClosed,
BRepCheck_NotConnected, BRepCheck_SubshapeNotInShape, BRepCheck_BadOrientation, BRepCheck_BadOrientationOfSubshape,
BRepCheck_InvalidToleranceValue, BRepCheck_CheckFail]

brepcheck_lut = EnumLookup( _brep_check_a, _brep_check_b )
curve_lut = EnumLookup(_curve_typesA,_curve_typesB)
surface_lut = EnumLookup(_surface_typesA, _surface_typesB)
state_lut = EnumLookup(_stateA, _stateB)
orient_lut = EnumLookup(_orientA, _orientB)
topo_lut = EnumLookup(_topoTypesA,_topoTypesB)
shape_lut = ShapeToTopology()
geom_lut= EnumLookup(_geom_types_a, _geom_types_b)

# todo: refactor, these classes have been moved from the "Topology" directory
# which had too many overlapping methods & classes, that are now part of the KBE module...
# still need to think what to do with these...
# what_is_face should surely become a lut [ geom_lut? ]
# i'm not sure whether casting to a gp_* is useful...

from OCC.Geom import *
from OCC.TopAbs import *

classes = dir()
geom_classes = []
for elem in classes:
    if (elem.startswith('Geom') and not 'swig' in elem):
        geom_classes.append(elem)

def what_is_face(face):
    ''' Returns all class names for which this class can be downcasted
    '''
    if not face.ShapeType()==TopAbs_FACE:
        print '%s is not a TopAbs_FACE. Conversion impossible'
        return None
    hs = BRep_Tool().Surface(face)
    obj = hs.GetObject()
    result = []
    for elem in classes:
        if (elem.startswith('Geom') and not 'swig' in elem):
 	      geom_classes.append(elem)
    # Run the test for each class
    for geom_class in geom_classes:
        if obj.IsKind(geom_class) and not geom_class in result:
            result.append(geom_class)
    return result

def face_is_plane(face):
    ''' Returns True if the TopoDS_Shape is a plane, False otherwise
    '''
    hs = BRep_Tool().Surface(face)
    downcast_result = Handle_Geom_Plane().DownCast(hs)
    # the handle is null if downcast failed or is not possible,
    # that is to say the face is not a plane
    if downcast_result.IsNull():
        return False
    else:
        return True

def shape_is_cylinder(face):
    ''' Returns True is the TopoDS_Shape is a cylinder, False otherwise
    '''
    hs = BRep_Tool().Surface(face)
    handle_geom_plane = Handle_Geom_Cylinder().DownCast(hs)
    if downcast_result.IsNull():
        return False
    else:
        return True
