#! /usr/bin/python

##Copyright 2008-2013 Jelle Feringa (jelleferinga@gmail.com)
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

import random

from OCC.Bnd import *
from OCC.BRepBndLib import *
from OCC.TColgp import *
from OCC.TColStd import *
from OCC.BRepAdaptor import *
from OCC.GeomAPI import *
from OCC.gp import *
from OCC.BRepBuilderAPI import *
from OCC.TopoDS import *
from OCC.Utils.Context import assert_isdone
from OCC.KBE.types_lut import ShapeToTopology
from OCC.Quantity import *
from OCC.GProp import GProp_GProps
from OCC.GeomAbs import *
from OCC import Graphic3d


#===========================================================================
# No PythonOCC dependencies...
#===========================================================================

def roundlist(li, n_decimals=3):
    return [round(i, n_decimals) for i in li]

#===========================================================================
# CONSTANTS
#===========================================================================

TOLERANCE = 1e-6


def get_boundingbox(shape, tol=TOLERANCE, vec=False):
    '''
    :param shape: TopoDS_Shape such as TopoDS_Face
    :param tol: tolerance
    :return: xmin, ymin, zmin, xmax, ymax, zmax
    '''
    bbox = Bnd_Box()
    bbox.SetGap(tol)
    #BRepBndLib_AddClose(shape, bbox)
    tmp = BRepBndLib_Add(shape, bbox)
    xmin, ymin, zmin, xmax, ymax, zmax = bbox.Get()
    if vec is False:
        return xmin, ymin, zmin, xmax, ymax, zmax
    else:
        return gp_Vec(xmin, ymin, zmin), gp_Vec(xmax, ymax, zmax)


def smooth_pnts(pnts):
    smooth = [pnts[0]]
    for i in range(1, len(pnts)-1):
        prev = pnts[i-1]
        this = pnts[i]
        next = pnts[i+1]
        pt = (prev+this+next) / 3.0
        smooth.append(pt)
    smooth.append(pnts[-1])
    return smooth

#===========================================================================
# Data type utilities
#===========================================================================


def color(r, g, b):
    return Quantity_Color(r, g, b, Quantity_TOC_RGB)


def to_string(_string):
    from OCC.TCollection import TCollection_ExtendedString
    return TCollection_ExtendedString(_string)


def to_tcol_(_list, type):
    array = type(1, len(_list)+1)
    for n, i in enumerate(_list):
        array.SetValue(n+1, i)
    return array.GetHandle()


def _Tcol_dim_1(li, _type):
    '''function factory for 1-dimensional TCol* types'''
    pts = _type(0, len(li)-1)
    for n, i in enumerate(li):
        pts.SetValue(n, i)
    pts.thisown = False
    return pts


def point_list_to_TColgp_Array1OfPnt(li):
    pts = TColgp_Array1OfPnt(0, len(li)-1)
    for n, i in enumerate(li):
        pts.SetValue(n, i)
    return pts


def point2d_list_to_TColgp_Array1OfPnt2d(li):
    return _Tcol_dim_1(li, TColgp_Array1OfPnt2d)

#===========================================================================
# --- INTERPOLATION ---
#===========================================================================


def filter_points_by_distance(list_of_point, distance=0.1):
    '''
    get rid of those point that lie within tolerance of a
    consequtive series of points
    '''
    tmp = [list_of_point[0]]
    for a in list_of_point[1:]:
        if any([a.IsEqual(i, distance) for i in tmp]):
            continue
        else:
            tmp.append(a)
    return tmp


def points_to_bspline(pnts):
    '''
    Points to bspline
    '''
    pnts = point_list_to_TColgp_Array1OfPnt(pnts)
    crv = GeomAPI_PointsToBSpline(pnts)
    return crv.Curve()


def interpolate_points_to_spline(list_of_points, start_tangent, end_tangent, filter_pts=True, tolerance=TOLERANCE):
    '''
    GeomAPI_Interpolate is buggy: need to use `fix` in order
    to get the right points in...
    '''
    def fix(li, _type):
        '''function factory for 1-dimensional TCol* types'''
        pts = _type(1, len(li))
        for n, i in enumerate(li):
            pts.SetValue(n+1, i)
        pts.thisown = False
        return pts

    if filter_pts:
        list_of_points = filter_points_by_distance(list_of_points, 0.1)

    fixed_points = fix(list_of_points, TColgp_HArray1OfPnt)
    try:
        interp = GeomAPI_Interpolate(fixed_points.GetHandle(), False, tolerance)
        interp.Load(start_tangent, end_tangent, False)
        interp.Perform()
        if interp.IsDone():
            return interp.Curve()
    except RuntimeError:
        print 'FAILED TO INTERPOLATE THE SHOWN POINTS'


def interpolate_points_vectors_to_spline(list_of_points, list_of_vectors, vector_mask=[], tolerance=TOLERANCE):
    '''
    build a curve from a set of points and vectors
    the vectors describe the tangent vector at the corresponding point
    '''
    # GeomAPI_Interpolate is buggy: need to use `fix` in order to
    # get the right points in...
    assert len(list_of_points) == len(list_of_vectors), 'vector and point list not of same length'
    
    def fix(li, _type):
        '''function factory for 1-dimensional TCol* types'''
        pts = _type(1, len(li))
        for n, i in enumerate(li):
            pts.SetValue(n+1,i)
        pts.thisown = False
        return pts

    if not vector_mask == []:
        assert len(vector_mask) == len(list_of_points), 'length vector mask is not of length points list nor []'
    else:
        vector_mask = [True for i in range(len(list_of_points))]

    fixed_mask = fix(vector_mask, TColStd_HArray1OfBoolean)
    fixed_points = fix(list_of_points, TColgp_HArray1OfPnt)
    fixed_vectors = fix(list_of_vectors, TColgp_Array1OfVec)

    try:
        interp = GeomAPI_Interpolate(fixed_points.GetHandle(), False, tolerance)
        interp.Load(fixed_vectors, fixed_mask.GetHandle(), False)
        interp.Perform()
        if interp.IsDone():
            return interp.Curve()
    except RuntimeError:
        # the exception was unclear
        raise RuntimeError('FAILED TO INTERPOLATE THE POINTS')


def interpolate_points_to_spline_no_tangency(list_of_points, filter=True, closed=False, tolerance=TOLERANCE):
    '''
    GeomAPI_Interpolate is buggy: need to use `fix`
    in order to get the right points in...
    '''
    def fix(li, _type):
        '''function factory for 1-dimensional TCol* types'''
        pts = _type(1, len(li))
        for n,  i in enumerate(li):
            pts.SetValue(n+1, i)
        pts.thisown = False
        return pts

    list_of_points = filter_points_by_distance(list_of_points, 0.1)
    fixed_points = fix(list_of_points, TColgp_HArray1OfPnt)
    try:
        interp = GeomAPI_Interpolate(fixed_points.GetHandle(), closed, tolerance)
        interp.Perform()
        if interp.IsDone():
            return interp.Curve()

    except RuntimeError:
        # the exception was unclear
        raise RuntimeError('FAILED TO INTERPOLATE THE POINTS')

#===========================================================================
# --- RANDOMNESS ---
#===========================================================================


def random_vec():
    import random
    x, y, z = [random.uniform(-1, 1) for i in range(3)]
    return gp_Vec(x, y, z)


def random_colored_material_aspect():
    import random
    clrs = [i for i in dir(Graphic3d) if i.startswith('Graphic3d_NOM_')]
    color = random.sample(clrs, 1)[0]
    print 'color', color
    return Graphic3d.Graphic3d_MaterialAspect(getattr(Graphic3d, color))


def random_color():
    return color(random.random(), random.random(), random.random())

#===========================================================================
# --- BUILD PATCHES ---
#===========================================================================


def common_vertex(edg1, edg2):
    from OCC.TopExp import TopExp
    te = TopExp()
    vert = TopoDS_Vertex()
    if te.CommonVertex(edg1, edg2, vert):
        return vert
    else:
        raise ValueError('no common vertex found')


def midpoint(pntA, pntB):
    '''
    computes the point that lies in the middle between pntA and pntB
    @param pntA:    gp_Pnt
    @param pntB:    gp_Pnt
    '''
    vec1 = gp_Vec(pntA.XYZ())
    vec2 = gp_Vec(pntB.XYZ())
    veccie = (vec1+vec2)/2.
    return gp_Pnt(veccie.XYZ())


def center_boundingbox(shape):
    '''
    compute the center point of a TopoDS_Shape, based on its bounding box
    @param shape: TopoDS_* instance
    returns a gp_Pnt instance
    '''
    xmin, ymin, zmin, xmax, ymax, zmax = get_boundingbox(shape, 1e-6)
    return midpoint(gp_Pnt(xmin, ymin, zmin), gp_Pnt(xmax, ymax, zmax))


def point_in_boundingbox(solid, pnt, tolerance=1e-5):
    """returns True if *pnt* lies in *boundingbox*, False if not
    this is a much speedier test than checking the TopoDS_Solid
    Args:
        solid   TopoDS_Solid
        pnt:    gp_Pnt

    Returns: bool
    """
    return not(get_boundingbox(solid).IsOut(pnt))


def point_in_solid(solid, pnt, tolerance=1e-5):
    """returns True if *pnt* lies in *solid*, False if not
    Args:
        solid   TopoDS_Solid
        pnt:    gp_Pnt

    Returns: bool
    """
    from OCC.BRepClass3d import BRepClass3d_SolidClassifier
    from OCC.TopAbs import TopAbs_ON, TopAbs_OUT, TopAbs_IN
    _in_solid = BRepClass3d_SolidClassifier(solid, pnt, tolerance)
    print 'STATE', _in_solid.State()
    if _in_solid.State() == TopAbs_ON:
        return None, 'on'
    if _in_solid.State() == TopAbs_OUT:
        return False, 'out'
    if _in_solid.State() == TopAbs_IN:
        return True, 'in'


def intersection_from_three_planes(planeA, planeB, planeC):
    '''
    intersection from 3 planes
    accepts both Geom_Plane and gp_Pln
    @param planeA:
    @param planeB:
    @param planeC:
    @param show:
    '''
    from OCC.IntAna import IntAna_Int3Pln

    planeA = planeA if not hasattr(planeA, 'Pln') else planeA.Pln()
    planeB = planeB if not hasattr(planeB, 'Pln') else planeB.Pln()
    planeC = planeC if not hasattr(planeC, 'Pln') else planeC.Pln()

    intersection_planes = IntAna_Int3Pln(planeA, planeB, planeC)
    pnt = intersection_planes.Value()
    return pnt


def intersect_shape_by_line(topods_shape, line, low_parameter=0.0, hi_parameter=float("+inf")):
    """
    finds the intersection of a shape and a line

    :param shape: any TopoDS_*
    :param line: gp_Lin
    :param low_parameter:
    :param hi_parameter:

    :return: a list with a number of tuples that corresponds to the number
    of intersections found
    the tuple contains ( gp_Pnt, TopoDS_Face, u,v,w ), respectively the
    intersection point, the intersecting face
    and the u,v,w parameters of the intersection point
    :raise:
    """
    from OCC.IntCurvesFace import IntCurvesFace_ShapeIntersector
    shape_inter = IntCurvesFace_ShapeIntersector()
    shape_inter.Load(topods_shape, TOLERANCE)
    shape_inter.PerformNearest(line, low_parameter, hi_parameter)

    with assert_isdone(shape_inter, "failed to computer shape / line intersection"):
        return (shape_inter.Pnt(1),
                shape_inter.Face(1),
                shape_inter.UParameter(1),
                shape_inter.VParameter(1),
                shape_inter.WParameter(1))

#===========================================================================
# --- TRANSFORM ---
#===========================================================================


def translate_topods_from_vector(brep, vec, copy=False):
    '''
    translate a brep over a vector
    @param brep:    the Topo_DS to translate
    @param vec:     the vector defining the translation
    @param copy:    copies to brep if True
    '''
    trns = gp_Trsf()
    trns.SetTranslation(vec)
    brep_trns = BRepBuilderAPI_Transform(brep, trns, copy)
    brep_trns.Build()
    return brep_trns.Shape()


def normal_vector_from_plane(plane, vec_length=1):
    '''
    returns a vector normal to the plane of length vec_length
    @param plane:
    '''
    trns = gp_Vec(plane.Axis().Direction())
    trns.Normalized() * vec_length
    return trns

#===========================================================================
# FIX
#===========================================================================


def fix_tolerance(shape, tolerance=TOLERANCE):
    from OCC.ShapeFix import ShapeFix_ShapeTolerance
    ShapeFix_ShapeTolerance().SetTolerance(shape, tolerance)


def fix_continuity(edge, continuity=1):
    from OCC.ShapeUpgrade import ShapeUpgrade_ShapeDivideContinuity
    su = ShapeUpgrade_ShapeDivideContinuity(edge)
    su.SetBoundaryCriterion(eval('GeomAbs_C'+str(continuity)))
    su.Perform()
    st = ShapeToTopology()
    te = st(su.Result())
    return te


def resample_curve_with_uniform_deflection(curve, deflection=0.5, degreeMin=3, degreeMax=8, continuity=GeomAbs_C2, tolerance=1e-4):
    '''
    fits a bspline through the samples on `curve`
    @param curve: TopoDS_Wire, TopoDS_Edge, curve
    @param n_samples:
    '''
    from OCC.GCPnts import GCPnts_UniformDeflection
    crv = to_adaptor_3d(curve)
    defl = GCPnts_UniformDeflection(crv, deflection)
    with assert_isdone(defl, 'failed to compute UniformDeflection'):
        print 'number of points:', defl.NbPoints()
    sampled_pnts = [defl.Value(i) for i in xrange(1, defl.NbPoints())]
    resampled_curve = GeomAPI_PointsToBSpline(point_list_to_TColgp_Array1OfPnt(sampled_pnts), degreeMin, degreeMax, continuity, tolerance)
    return resampled_curve.Curve().GetObject()

#===========================================================================
# global properties
#===========================================================================


class GpropsFromShape(object):
    def __init__(self, shape, tolerance=1e-5):
        from OCC.BRepGProp import BRepGProp
        self.shape = shape
        self.bgprop = BRepGProp()
        self.tolerance = tolerance

    def volume(self):
        '''returns the volume of a solid
        '''
        prop = GProp_GProps()
        error = self.bgprop.VolumeProperties(self.shape, prop, self.tolerance)
        return prop

    def surface(self):
        '''returns the area of a surface
        '''
        prop = GProp_GProps()
        error = self.bgprop.SurfaceProperties(self.shape, prop, self.tolerance)
        return prop

    def linear(self):
        '''returns the length of a wire or edge
        '''
        prop = GProp_GProps()
        error = self.bgprop.LinearProperties(self.shape, prop)
        return prop


def curve_length(crv):
    '''
    get the length from a TopoDS_Edge or TopoDS_Wire
    '''
    assert isinstance(crv, (TopoDS_Wire, TopoDS_Edge)), 'either a wire or edge...'
    gprop = GpropsFromShape(crv)
    return gprop.linear().Mass()


#=======================================================================
# Distance
#=======================================================================

def minimum_distance(shp1, shp2):
    '''
    compute minimum distance between 2 BREP's
    @param shp1:    any TopoDS_*
    @param shp2:    any TopoDS_*

    @return: minimum distance,
             minimum distance points on shp1
             minimum distance points on shp2
    '''
    from OCC.BRepExtrema import BRepExtrema_DistShapeShape
    bdss = BRepExtrema_DistShapeShape(shp1, shp2)
    bdss.Perform()
    with assert_isdone(bdss, 'failed computing minimum distances'):
        min_dist = bdss.Value()
        min_dist_shp1, min_dist_shp2 = [], []
        for i in range(1, bdss.NbSolution()+1):
            min_dist_shp1.append(bdss.PointOnShape1(i))
            min_dist_shp2.append(bdss.PointOnShape2(i))
    return min_dist, min_dist_shp1, min_dist_shp2


def vertex2pnt(vertex):
    '''returns a gp_Pnt from a TopoDS_Vertex
    '''
    from OCC.BRep import BRep_Tool
    return BRep_Tool.Pnt(vertex)


def to_adaptor_3d(curveType):
    '''
    abstract curve like type into an adaptor3d
    @param curveType:
    '''
    from OCC.BRepAdaptor import BRepAdaptor_CompCurve
    from OCC.GeomAdaptor import GeomAdaptor_Curve
    from OCC.Geom import Geom_Curve
    if isinstance(curveType, TopoDS_Wire):
        return BRepAdaptor_CompCurve(curveType)
    elif isinstance(curveType, TopoDS_Edge):
        return BRepAdaptor_Curve(curveType)
    elif issubclass(curveType.__class__, Geom_Curve):
        return GeomAdaptor_Curve(curveType.GetHandle())
    elif hasattr(curveType, 'GetObject'):
        _crv = curveType.GetObject()
        if issubclass(_crv.__class__, Geom_Curve):
            return GeomAdaptor_Curve(curveType)
    else:
        raise TypeError('allowed types are Wire, Edge or a subclass of Geom_Curve\nGot a %s' % (curveType.__class__))


def project_point_on_curve(crv, pnt):
    if isinstance(crv, TopoDS_Shape):
        # get the curve handle...
        crv = adapt_edge_to_curve(crv).Curve().Curve()
    else:
        raise NotImplementedError('expected a TopoDS_Edge...')
    from OCC.GeomAPI import GeomAPI_ProjectPointOnCurve
    rrr = GeomAPI_ProjectPointOnCurve(pnt, crv)
    return rrr.LowerDistanceParameter(), rrr.NearestPoint()


def project_point_on_plane(plane, point):
    '''
    project point on plane
    @param plane: Geom_Plane
    @param point: gp_Pnt
    '''
    from OCC.ProjLib import ProjLib
    pl = plane.Pln()
    ppp = ProjLib()
    aa, bb = ppp.Project(pl, point).Coord()
    point = plane.Value(aa, bb)
    return point


def wire_to_curve(wire, tolerance=TOLERANCE, order=GeomAbs_C2, max_segment=200, max_order=12):
    '''
    a wire can consist of many edges.
    these edges are merged given a tolerance and a curve
    @param wire:
    '''
    adap = BRepAdaptor_CompCurve(wire)
    hadap = BRepAdaptor_HCompCurve(adap)
    from OCC.Approx import Approx_Curve3d
    approx = Approx_Curve3d(hadap.GetHandle(), tolerance, order, max_segment, max_order)
    with assert_isdone(approx, 'not able to compute approximation from wire'):
        return approx.Curve().GetObject()


def adapt_edge_to_curve(edg):
    '''
    returns a curve adaptor from an edge
    @param edg: TopoDS_Edge
    '''
    return BRepAdaptor_Curve(edg)


def adapt_edge_to_hcurve(edg):
    c = BRepAdaptor_HCurve()
    c.ChangeCurve().Initialize(edg)
    return c
