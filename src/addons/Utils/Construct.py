# -*- coding: iso-8859-1 -*-
#!/usr/bin/env python

##Copyright 2011 Jelle Feringa (jelleferinga@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU Lesser General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU Lesser General Public License for more details.
##
##You should have received a copy of the GNU Lesser General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

'''

This modules makes the construction of geometry a little easier

'''

from __future__ import with_statement
# wrapped modules
from OCC.BRep import BRep_Tool
from OCC.BRepOffset import BRepOffset_Skin
from OCC.GeomLProp import *
from OCC.ShapeFix import *
from OCC.BRepOffsetAPI import *
from OCC.BRepBuilderAPI import *
from OCC.BRepAlgoAPI import BRepAlgoAPI_Cut
from OCC.BRepAlgoAPI import BRepAlgoAPI_Fuse
from OCC.BRepPrimAPI import *
from OCC.GeomAbs import *
from OCC.TopAbs import *
from OCC.TopoDS import *
from OCC.gp import *
from OCC.BRepFill import *
from OCC.GeomPlate import *
from OCC.BRepAdaptor import *
from OCC.GeomFill import *
from OCC.TopTools import *
from OCC.Geom import *

# high level
from OCC.Utils.Common import *
from OCC.Utils.Context import assert_isdone
from OCC.KBE.types_lut import GeometryLookup, ShapeToTopology

from functools import wraps

EPSILON = TOLERANCE = 1e-6
ST = ShapeToTopology()

#===============================================================================
# ---MONKEY PATCH GP---
#===============================================================================

def point_to_vector(self):
    return gp_Vec(self.XYZ())

def vector_to_point(self):
    return gp_Pnt(self.XYZ())

def dir_to_vec(self):
    return gp_Vec(self)

def vec_to_dir(self):
    return gp_Dir(self)

def add_vector_to_point(self, vec):
    return (self.as_vec() + vec).as_pnt() 

def gp_Pnt_get_state(self):
    '''pack as a tuple

    used for copying / serializing the instance
    '''
    return self.XYZ().Coord()

def gp_Pnt_set_state(self, state):
    '''unpack tuple and return instance...

    used for copying / serializing the instance
    '''
    self.__init__(*state)

def gp_pnt_print(self):
    return '< gp_Pnt: {0}, {1}, {2} >'.format(*self.Coord())

def gp_vec_print(self):
    x,y,z = self.Coord()
    magn = self.Magnitude()
    return '< gp_Vec: {0}, {1}, {2}, magnitude: {3} >'.format(x,y,z, magn)

# easier conversion between data types
gp_Vec.as_pnt  = vector_to_point
gp_Pnt.as_vec  = point_to_vector
gp_Pnt.add_vec = add_vector_to_point
gp_Dir.as_vec  = dir_to_vec 
gp_Vec.as_dir  = vec_to_dir
# for copying / serializing
gp_Pnt.__getstate__ = gp_Pnt_get_state
gp_Pnt.__setstate__ = gp_Pnt_set_state
gp_Vec.__getstate__ = gp_Pnt_get_state
gp_Vec.__setstate__ = gp_Pnt_set_state
# print gp_Pnt() should return something informative...
gp_Vec.__repr__ = gp_vec_print
gp_Vec.__str__ = gp_vec_print
gp_Pnt.__repr__ = gp_pnt_print
gp_Pnt.__str__ = gp_pnt_print

#===============================================================================
# ---TOPOLOGY---
#===============================================================================

@wraps(BRepBuilderAPI_MakeSolid)
def make_solid(*args):
    sld = BRepBuilderAPI_MakeSolid( *args )
    with assert_isdone(sld, 'failed to produce solid'):
        result = sld.Solid()
        sld.Delete()
        return result

@wraps(BRepBuilderAPI_MakeShell)
def make_shell(*args):
    shell = BRepBuilderAPI_MakeShell( *args )
    st = ShapeToTopology()
    with assert_isdone(shell, 'failed to produce shell'):
        result = shell.Shell()
        shell.Delete()
        return st(result)

@wraps(BRepBuilderAPI_MakeFace)
def make_face(*args):
    face = BRepBuilderAPI_MakeFace( *args )
    with assert_isdone(face, 'failed to produce face'):
        result = face.Face()
        face.Delete()
        return result

@wraps(BRepBuilderAPI_MakeEdge)
def make_edge(*args):
    edge = BRepBuilderAPI_MakeEdge(*args)
    with assert_isdone(edge, 'failed to produce edge'):
        result = edge.Edge()
        edge.Delete()
        return result

@wraps(BRepBuilderAPI_MakeVertex)
def make_vertex(*args):
    vert = BRepBuilderAPI_MakeVertex(*args)
    with assert_isdone(vert, 'failed to produce vertex'):
        result = vert.Vertex()
        vert.Delete()
        return result

@wraps(BRepBuilderAPI_MakeWire)
def make_wire(*args):
    # if we get an iterable, than add all edges to wire builder
    if isinstance(args[0], list) or isinstance(args[0], tuple):
        wire = BRepBuilderAPI_MakeWire()
        for i in args[0]:
                wire.Add(i)
        wire.Build()
        return wire.Wire()

    wire = BRepBuilderAPI_MakeWire(*args)
    wire.Build()
    with assert_isdone(wire, 'failed to produce wire'):
        result = wire.Wire()
        return result

@wraps(BRepBuilderAPI_MakePolygon)
def make_polygon(args, closed=False):
    poly = BRepBuilderAPI_MakePolygon()
    for pt in args:
        # support nested lists
        if isinstance(pt, list) or isinstance(pt, tuple):
            for i in pt:
                poly.Add(i)
        else:
            poly.Add(pt)
    if closed:
        poly.Close()
    poly.Build()
    
    with assert_isdone(poly, 'failed to produce wire'):
        result = poly.Wire()
        return result

@wraps(BRepBuilderAPI_MakePolygon)
def make_closed_polygon(*args):
    poly = BRepBuilderAPI_MakePolygon()
    for pt in args:
        if isinstance(pt, list) or isinstance(pt, tuple):
            for i in pt:
                poly.Add(i)
        else:
            poly.Add(pt)
    poly.Build()
    poly.Close()
    with assert_isdone(poly, 'failed to produce wire'):
        result = poly.Wire()
        return result
    
#===============================================================================
# PRIMITIVES
#===============================================================================

def make_circle(pnt, radius):
    '''
    returns an edge 
    @param pnt:
    @param radius:
    '''
    circ = gp_Circ()
    circ.SetLocation(pnt)
    circ.SetRadius(radius)
    return make_edge(circ)

def make_line(pnt1, pnt2):
    return make_edge(pnt1, pnt2)

def make_evolved(spine, profile):
    evol = BRepOffsetAPI_MakeEvolved(spine, profile)
    with assert_isdone(evol, 'failed buillding evolved'):
        evol.Build()
        return evol.Evolved()
    
def make_pipe(spine, profile):
    pipe = BRepOffsetAPI_MakePipe(spine, profile)
    with assert_isdone(pipe, 'failed building pipe'):
        pipe.Build()
        return pipe.Shape()
    
def make_prism(profile, vec):
    '''
    makes a finite prism
    '''
    pri =  BRepPrimAPI_MakePrism(profile, vec, True)
    with assert_isdone(pri, 'failed building prism'):
        pri.Build()
        return pri.Shape()

def make_prism_shell(profile, vec):
    '''
    makes a finite prism
    '''
    return BRepOffsetAPI_MakePipeShell()

def make_offset_shape(shapeToOffset, offsetDistance, tolerance=TOLERANCE, offsetMode=BRepOffset_Skin, intersection=False, selfintersection=False, joinType=GeomAbs_Arc):
    '''
    builds an offsetted shell from a shape
    construct an offsetted version of the shape
    '''
    try:
        offset = BRepOffsetAPI_MakeOffsetShape(shapeToOffset,
                                               offsetDistance,
                                                tolerance,
                                                 offsetMode,
                                                  intersection,
                                                   selfintersection,
                                                    joinType
                                                    )
        return offset.Shape()
    except RuntimeError('failed to offset shape'):
        return None

def make_offset(wire_or_face, offsetDistance, altitude=0, joinType=GeomAbs_Arc):
    '''
    builds a offsetted wire or face from a wire or face
    construct an offsetted version of the shape
    
    @param wire_or_face:        the wire or face to offset
    @param offsetDistance:      the distance to offset  
    @param altitude:            move the offsetted shape to altitude
    from the normal of the wire or face
    @param joinType:            the type of offset you want 
    can be one of GeomAbs_Arc, GeomAbs_Tangent, GeomAbs_Intersection 
    
    note: a shape that has a negative offsetDistance will return
    a sharp corner
    '''
    _joints = [ GeomAbs_Arc, GeomAbs_Tangent, GeomAbs_Intersection ]
    assert joinType in _joints, '%s is not one of %s' ( joinType, _joints)
    try:
        offset = BRepOffsetAPI_MakeOffset(wire_or_face,joinType)
        offset.Perform(offsetDistance, altitude)
        return ST(offset.Shape())
    except RuntimeError('failed to offset shape'):
        return None

def make_draft(profile, vec):
    '''
    makes a finite prism
    '''
    return BRepOffsetAPI_MakeDraft()

def make_filling(profile, vec):
    '''
    makes a n-sided patch from constraints
    '''
    return BRepOffsetAPI_MakeFilling()

def make_loft(elements, ruled=False, tolerance=TOLERANCE):
    sections = BRepOffsetAPI_ThruSections(False, ruled, tolerance)
    for i in elements:
        if isinstance(i, TopoDS_Wire):
            sections.AddWire(i)
        elif isinstance(i, TopoDS_Vertex):
            sections.AddVertex(i)
        else:
            raise TypeError('elements is a list of TopoDS_Wire or TopoDS_Vertex, found a %s fool' % ( i.__class__ ))
    sections.CheckCompatibility(True)
    sections.Build()
    with assert_isdone(sections, 'failed lofting'):
        te = ShapeToTopology()
        loft = te(sections.Shape())
        return loft

#===============================================================================
# ---CONVENIENCE---
#===============================================================================

def make_plane(center=gp_Pnt(0,0,0),
                vec_normal=gp_Vec(0,0,1),
                 extent_x_min=-100.,
                  extent_x_max=100.,
                   extent_y_min=-100.,
                    extent_y_max=100.,
                     depth=0.
                ):
    
    if depth!=0:
        P1 = center.add_vec(gp_Vec(0,0,depth))
    
    PL = gp_Pln(center,vec_normal.as_dir())                     
    face = make_face(PL,
                      extent_x_min,
                       extent_x_max,
                        extent_y_min,
                         extent_y_max,
                     )
    return face


@wraps(BRepPrimAPI_MakeBox)
def make_cube(*args):
    box = BRepPrimAPI_MakeBox(*args)
    box.Build()
    with assert_isdone(box, 'failed to built a cube...'):
        return box.Shape()

def make_spline(pnts=[''],
                 tangents=[''],
                  epsilon=EPSILON
                  ):
    '''
    
    @param pnts:        list_of_gp_Pnts
    @param tangents:    list_of_tangent_vecs_at_gp_Pnts
    None where we do not care about tangency
    None or empty list if we don't care about tangency at all
    @param epsilon:     tolerence
    '''
    pass


#===============================================================================
# NEW
#===============================================================================
def make_n_sided(edges, points, continuity=GeomAbs_C0):
    """
    builds an n-sided patch, respecting the constraints defined by *edges* and *points*

    a simplified call to the BRepFill_Filling class
    its simplified in the sense that to all constraining edges and points
    the same level of *continuity* will be applied

    *continuity* represents:

    GeomAbs_C0 : the surface has to pass by 3D representation of the edge
    GeomAbs_G1 : the surface has to pass by 3D representation of the edge
    and to respect tangency with the given face
    GeomAbs_G2 : the surface has to pass by 3D representation of the edge
    and to respect tangency and curvature with the given face.

    NOTE: it is not required to set constraining points.
    just leave the tuple or list empty

    :param edges: the constraining edges
    :param points: the constraining points
    :param continuity: GeomAbs_0, 1, 2
    :return: TopoDS_Face
    """
    n_sided = BRepFill_Filling()
    n_sided.SetApproxParam(6, 40)
    n_sided.SetResolParam(3, 20, 20, False)
    for edg in edges:
        n_sided.Add(edg, continuity)
    for pt in points:
        n_sided.Add(pt)
    n_sided.Build()
    face  = n_sided.Face()
    return face

def make_n_sections(edges):
    seq = TopTools_SequenceOfShape()
    for i in edges:
        seq.Append(i)
    n_sec = BRepFill_NSections(seq)


def make_coons(edges):
    bt = BRep_Tool()
    if len(edges) == 4:
        spl1, spl2, spl3, spl4 = edges #[curve_to_bspline(bt.Curve(i)[0]) for i in edges]
        srf = GeomFill_BSplineCurves(spl1,spl2,spl3,spl4, GeomFill_StretchStyle)
    elif len(edges) == 3:
        spl1, spl2, spl3 = edges #[curve_to_bspline(bt.Curve(i)[0]) for i in edges]
        srf = GeomFill_BSplineCurves(spl1,spl2,spl3, GeomFill_StretchStyle)
    elif len(edges) == 2:
        spl1, spl2 = edges #[curve_to_bspline(bt.Curve(i)[0]) for i in edges]
        srf = GeomFill_BSplineCurves(spl1,spl2, GeomFill_StretchStyle)
    else:
        raise ValueError('give 2,3 or 4 curves')
    return srf.Surface()

def make_constrained_surface_from_edges(edges):
    '''
    
    DOESNT RESPECT BOUNDARIES
    
    '''
    bpSrf = GeomPlate_BuildPlateSurface(3,15,2)
    for edg in edges:
        c = BRepAdaptor_HCurve()
        c.ChangeCurve().Initialize(edg)
        constraint = BRepFill_CurveConstraint(c.GetHandle(), 0)
        bpSrf.Add(constraint.GetHandle())
    bpSrf.Perform()
    maxSeg, maxDeg, critOrder = 9,8,0
    tol  = 1e-4
    srf = bpSrf.Surface()
    plate = GeomPlate_MakeApprox(srf, tol, maxSeg, maxDeg, tol, critOrder)
    uMin, uMax, vMin, vMax = srf.GetObject().Bounds()
    face = make_face(plate.Surface(), uMin, uMax, vMin, vMax)
    return face

#===============================================================================
# NEW
#===============================================================================


def add_wire_to_face(face, wire, reverse=False):
    '''
    apply a wire to a face
    use reverse to set the orientation of the wire to opposite
    @param face:
    @param wire:
    @param reverse:
    '''
    face = BRepBuilderAPI_MakeFace(face)
    if reverse:
        wire.Reverse()
    face.Add(wire)
    result = face.Face()
    face.Delete()
    return result

def sew_shapes( shapes, tolerance=0.001 ):
#    sew = BRepBuilderAPI_Sewing(tolerance, True, True, True, False)
#    sew = BRepBuilderAPI_Sewing(1e-3, True, False, False, False)
    sew = BRepBuilderAPI_Sewing(tolerance)
    sew.SetFloatingEdgesMode(True)
    for shp in shapes:
        if isinstance(shp, list):
            for i in shp:
                sew.Add(i)
        else:
            sew.Add(shp)
    sew.Perform()
    print 'n degenerated shapes',sew.NbDegeneratedShapes()
    print 'n deleted faces:',sew.NbDeletedFaces()
    print 'n free edges',sew.NbFreeEdges()
    print 'n multiple edges:',sew.NbMultipleEdges()
    
    result = sew.SewedShape()
#     ???
#    sew.Delete()
    return result

#===============================================================================
# ---BOOL---
#===============================================================================

def boolean_cut(shapeToCutFrom, cuttingShape):
    try:
        cut = BRepAlgoAPI_Cut(shapeToCutFrom, cuttingShape)
        print 'can work?', cut.BuilderCanWork()
        _error = {
                        0: '- Ok', 
                        1: '- The Object is created but Nothing is Done', 
                        2: '- Null source shapes is not allowed',
                        3: '- Check types of the arguments',
                        4: '- Can not allocate memory for the DSFiller', 
                        5: '- The Builder can not work with such types of arguments', 
                        6: '- Unknown operation is not allowed',
                        7: '- Can not allocate memory for the Builder',
                } 
        print 'error status:', _error[cut.ErrorStatus()]
        cut.RefineEdges()
        cut.FuseEdges()
        shp = cut.Shape()
        cut.Destroy()
        return shp
    except:
        print 'FAILED TO BOOLEAN CUT'
        return shapeToCutFrom

def boolean_cut_old(shapeToCutFrom, cuttingShape):
    cut = BRepAlgo_Cut(shapeToCutFrom, cuttingShape)
    #cut.RefineEdges()
    #cut.FuseEdges()
    shp = cut.Shape()
    return shp

def boolean_fuse(shapeToCutFrom, joiningShape):
    join = BRepAlgoAPI_Fuse(shapeToCutFrom, joiningShape)
    join.RefineEdges()
    join.FuseEdges()
    shape = join.Shape()
    join.Destroy()
    return shape

def boolean_fuse_old(shapeToCutFrom, joiningShape):
    join = BRepAlgo_Fuse(shapeToCutFrom, joiningShape)
    shape = join.Shape()
    join.Delete()
    return shape

def trim_wire(wire, shapeLimit1, shapeLimit2, periodic=False):
    '''return the trimmed wire that lies between `shapeLimit1` and `shapeLimit2`
    returns TopoDS_Edge
    '''
    adap = to_adaptor_3d(wire)
    bspl = adap.BSpline()
    if periodic:
        spl = bspl.GetObject()
        if spl.IsClosed():
            spl.SetPeriodic()
        else:
            warnings.warn('the wire to be trimmed is not closed, hence cannot be made periodic')
    p1 = project_point_on_curve(bspl, shapeLimit1)[0]
    p2 = project_point_on_curve(bspl, shapeLimit2)[0]
    a,b = sorted([p1,p2])
    tr = Geom_TrimmedCurve(bspl, a,b).GetHandle()
    #tr = Geom_TrimmedCurve(bspl, p1,p2).GetHandle()
    return make_edge(tr)

#===============================================================================
# ---FIXES---
#===============================================================================

def fix_shape(shp, tolerance=1e-3):
    te = ShapeToTopology()
    fix = ShapeFix_Shape(shp)
    fix.SetFixFreeShellMode(True)
    sf = fix.FixShellTool().GetObject()
    sf.SetFixOrientationMode(True)
    fix.LimitTolerance(tolerance)
    fix.Perform()
    return fix.Shape()

def fix_face(shp, tolerance=1e-3):
    fix = ShapeFix_Face(shp)
    fix.SetMaxTolerance(tolerance)
    fix.Perform()
    return fix.Face()
#===============================================================================
# --- TRANSFORM ---
#===============================================================================

def translate_topods_from_vector(brep_or_iterable, vec, copy=False):
    '''
    translate a brep over a vector
    @param brep:    the Topo_DS to translate
    @param vec:     the vector defining the translation
    @param copy:    copies to brep if True
    '''
    trns = gp_Trsf()
    trns.SetTranslation(vec)
    if issubclass(brep_or_iterable.__class__, TopoDS_Shape):
        brep_trns = BRepBuilderAPI_Transform(brep_or_iterable, trns, copy)
        brep_trns.Build()
        return brep_trns.Shape()
    else:
        return  [translate_topods_from_vector(brep_or_iterable, vec, copy) for i in brep_or_iterable]

def scale_non_uniformal():
    pass

def scale_uniformal(brep, pnt, factor, copy=False):
    '''
    translate a brep over a vector
    @param brep:    the Topo_DS to translate
    @param pnt:     a gp_Pnt
    @param triple:  scaling factor
    @param copy:    copies to brep if True
    '''
    trns = gp_Trsf()
    trns.SetScale(pnt, factor)
    brep_trns = BRepBuilderAPI_Transform(brep, trns, copy)
    brep_trns.Build()
    return brep_trns.Shape()

def mirror_pnt_dir(brep, pnt, direction, copy=False):
    '''
    
    @param brep:
    @param line:
    '''
    trns = gp_Trsf()
    trns.SetMirror(gp_Ax1(pnt, direction))
    brep_trns = BRepBuilderAPI_Transform(brep, trns, copy)
    with assert_isdone(brep_trns, 'could not produce mirror'):
        brep_trns.Build()
        return brep_trns.Shape()

def mirror_axe2(brep, axe2, copy=False):
    '''
    
    @param brep:
    @param line:
    '''
    trns = gp_Trsf()
    trns.SetMirror(axe2)
    brep_trns = BRepBuilderAPI_Transform(brep, trns, copy)
    with assert_isdone(brep_trns, 'could not produce mirror'):
        brep_trns.Build()
        return brep_trns.Shape()

def rotate(brep, axe, degree, copy=False):
    '''
    
    @param brep:
    @param axe:
    @param degree:
    '''
    from math import radians
    trns = gp_Trsf()
    trns.SetRotation(axe, radians(degree))
    brep_trns = BRepBuilderAPI_Transform(brep, trns, copy)
    with assert_isdone(brep_trns, 'could not produce rotation'):
        brep_trns.Build()
        return ST(brep_trns.Shape())
    
def scale(brep, pnt, scale, copy=False):
    '''
    
    @param brep:
    @param axe:
    @param degree:
    '''
    trns = gp_Trsf()
    trns.SetScale(pnt, scale)
    brep_trns = BRepBuilderAPI_Transform(brep, trns, copy)
    with assert_isdone(brep_trns, 'could not produce scaling'):
        brep_trns.Build()
        return brep_trns.Shape()

#===============================================================================
# Not so sure where this should be located
#===============================================================================

def face_normal(face):
    umin, umax, vmin, vmax = BRepTools.BRepTools().UVBounds(face)  
    surf=BRep_Tool().Surface(face)
    props= GeomLProp_SLProps(surf, (umin+umax)/2., (vmin+vmax)/2., 1, TOLERANCE)
    norm = props.Normal()
    if face.Orientation()==TopAbs_REVERSED:
        norm.Reverse()
    return norm

def face_from_plane(_geom_plane, lowerLimit=-1000, upperLimit=1000, show=False):
    _trim_plane = make_face( Geom_RectangularTrimmedSurface(_geom_plane.GetHandle(), lowerLimit, upperLimit, lowerLimit, upperLimit).GetHandle() )
    if show:
        display.DisplayShape(_trim_plane)
    return _trim_plane

def find_plane_from_shape(shape, tolerance=TOLERANCE):
    try:
        return BRepBuilderAPI_FindPlane(shape, tolerance).Plane().GetObject()
    except:
        raise AssertionError('couldnt find plane in %s' % (shape))

def curve_to_bspline(crv_handle, tolerance=TOLERANCE, continuity=GeomAbs_C1, sections=300, degree=12):
    approx_curve = GeomConvert_ApproxCurve(crv_handle, tolerance, continuity, sections, degree)
    with assert_isdone(approx_curve, 'could not compute bspline from curve'):
        return approx_curve.Curve()

def compound(topo):
    '''
    accumulate a bunch of TopoDS_* in list `topo` to a TopoDS_Compound
    @param topo: list of TopoDS_* instances
    '''
    bd = TopoDS_Builder()
    comp = TopoDS_Compound()
    bd.MakeCompound(comp)
    for i in topo:
        print i
        bd.Add(comp,i)
    return comp

