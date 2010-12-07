from __future__ import with_statement


# -*- coding: iso-8859-1 -*-
#! /usr/bin/python

##Copyright 2009-2010 Jelle Feringa
##
##jelle.feringa@gmail.com
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCasacde library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.

from OCC.Bnd import *
from OCC.BRepBndLib import *
from OCC.TColgp import *
from OCC.TColGeom import *
from OCC.TColStd import *
from OCC.TCollection import *
from OCC.BRepAlgoAPI import *
from OCC.GeomAPI import *
from OCC.gp import *
from OCC.BRepBuilderAPI import *
from OCC.BRepOffsetAPI import *

from OCC.Utils.Context import assert_isdone
from OCC.KBE.TypesLookup import ShapeToTopology
from OCC.Quantity import *
from OCC.GProp import GProp_GProps

TOLERANCE = 1e-6

def get_boundingbox(shape, tol=1e-12):
    bbox = Bnd_Box()
    BRepBndLib().AddClose(shape, bbox)
    bbox.SetGap(tol)
    return bbox

#===============================================================================
# Data type utilities
#===============================================================================

def _Tcol_dim_1(li, _type):
    '''function factory for 1-dimensional TCol* types'''
    pts = _type(0, len(li)-1)
    for n,i in enumerate(li):
        pts.SetValue(n,i)
    pts.thisown = False
    return pts

def _Tcol_dim_2(li, _type):
    '''function factory for 2-dimensional TCol* types'''
    length_nested = len(li[0])-1
    pts = _type(0, len(li)-1, 0, length_nested)
    pts.thisown = False
    return pts
    for n1,i in enumerate(li):
        for n2,j in enumerate(i):
            pts.SetValue(n1,n2,j)
    return pts

def point_list_to_TColgp_Array1OfPnt(li):
    pts = TColgp_Array1OfPnt(0, len(li)-1)
    for n,i in enumerate(li):
        pts.SetValue(n,i)
    return pts

def point2d_list_to_TColgp_Array1OfPnt2d(li):
    return _Tcol_dim_1(li, TColgp_Array1OfPnt2d)

#===============================================================================
# --- BOOLEAN OPERATIONS AS FUNCTIONS ---
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
    from OCC.BRepAlgo import *
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

#===============================================================================
# --- INTERPOLATION ---
#===============================================================================

def filter_points_by_distance( list_of_point, distance=0.1):
    '''
    get rid of those point that lie within tolerance of a consequtive series of points
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
    
    '''
    pnts = point_list_to_TColgp_Array1OfPnt(pnts)
    crv = GeomAPI_PointsToBSpline(pnts)
    return crv.Curve()

def interpolate_points_to_spline(list_of_points, start_tangent, end_tangent, filter_pts=True, tolerance=TOLERANCE):
    '''
    GeomAPI_Interpolate is buggy: need to use `fix` in order to get the right points in...
    
    '''
    def fix(li, _type):
        '''function factory for 1-dimensional TCol* types'''
        pts = _type(1, len(li))
        for n,i in enumerate(li):
            pts.SetValue(n+1,i)
        pts.thisown = False
        return pts
    
    if filter_pts:
        list_of_points = filter_points_by_distance(list_of_points, 0.1)
    
    yyy = fix(list_of_points, TColgp_HArray1OfPnt)
    try:
        rrr = GeomAPI_Interpolate(yyy.GetHandle(), False, tolerance )
        rrr.Load(start_tangent, end_tangent, False)
        rrr.Perform()
        if rrr.IsDone():
            return rrr.Curve()
    except RuntimeError:
        print 'FAILED TO INTERPOLATE THE SHOWN POINTS'
        import ipdb; ipdb.set_trace()

def interpolate_points_vectors_to_spline(list_of_points, list_of_vectors, vector_mask=[], tolerance=TOLERANCE):
    '''
    build a curve from a set of points and vectors
    the vectors describe the tangent vector at the corresponding point
    '''
    # GeomAPI_Interpolate is buggy: need to use `fix` in order to get the right points in...
    assert len(list_of_points) == len(list_of_vectors), 'vector and point list not of same length'
    def fix(li, _type):
        '''function factory for 1-dimensional TCol* types'''
        pts = _type(1, len(li))
        for n,i in enumerate(li):
            pts.SetValue(n+1,i)
        pts.thisown = False
        return pts
    
    if not vector_mask == []:
        assert len(vector_mask)==len(list_of_points), 'length vector mask is not of length points list nor []'
    else:
        vector_mask = [True for i in range(len(list_of_points))]
    
    xxx = fix(vector_mask, TColStd_HArray1OfBoolean) 
    yyy = fix(list_of_points, TColgp_HArray1OfPnt)
    zzz = fix(list_of_vectors, TColgp_Array1OfVec)
    
    try:
        rrr = GeomAPI_Interpolate(yyy.GetHandle(), False, tolerance )
        rrr.Load(zzz, xxx.GetHandle(), False)
        rrr.Perform()
        if rrr.IsDone():
            return rrr.Curve()
    except RuntimeError:
        print 'FAILED TO INTERPOLATE THE SHOWN POINTS'
        import ipdb; ipdb.set_trace()

def interpolate_points_to_spline_no_tangency(list_of_points, filter=True, closed=False, tolerance=TOLERANCE):
    '''
    GeomAPI_Interpolate is buggy: need to use `fix` in order to get the right points in...
    
    '''
    def fix(li, _type):
        '''function factory for 1-dimensional TCol* types'''
        pts = _type(1, len(li))
        for n,i in enumerate(li):
            pts.SetValue(n+1,i) 
        pts.thisown = False
        return pts
    
    list_of_points = filter_points_by_distance(list_of_points, 0.1)
    yyy = fix(list_of_points, TColgp_HArray1OfPnt)
    try:
        rrr = GeomAPI_Interpolate(yyy.GetHandle(), closed, tolerance )
        rrr.Perform()
        if rrr.IsDone():
            return rrr.Curve()
    except RuntimeError:
        print 'FAILED TO INTERPOLATE THE SHOWN POINTS'
#        import ipdb; ipdb.set_trace()
#        for i in list_of_points:
#            display.DisplayShape(make_vertex(i))
        # probably should do tangents too...

#===============================================================================
# --- RANDOMNESS ---
#===============================================================================

def random_vec():
    import random
    x,y,z = [random.uniform(-1,1) for i in range(3)]
    return gp_Vec(x,y,z)

def random_colored_material_aspect():
    from OCC import Graphic3d
    import random
    asp = Graphic3d.Graphic3d_MaterialAspect()
    cc = asp.Color()
    
    #clrs = [ i for i in dir(Graphic3d) if i.startswith('Graphic3d_NOM_') ]
    red, green, blue, opacity = random.uniform(0,1),random.uniform(0,1),random.uniform(0,1), random.uniform(0,1)
    cc.SetValues(red,green,blue, Quantity_TOC_RGB)
    #return Graphic3d.Graphic3d_MaterialAspect(getattr(Graphic3d, random.sample(clrs, 1)[0]))
    return asp 


#===============================================================================
# --- BUILD PATCHES ---
#===============================================================================

def common_vertex(edg1, edg2):
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
    return gp_Pnt( veccie.XYZ() )

def center_boundingbox(shape):
    '''
    compute the center point of a TopoDS_Shape, based on its bounding box
    @param shape: TopoDS_* instance
    returns a gp_Pnt instance 
    '''
    bbox = get_boundingbox(shape, 1e-6)
    xmin,ymin,zmin, xmax, ymax, zmax = bbox.Get()
    return midpoint(gp_Pnt(xmin,ymin,zmin), gp_Pnt(xmax,ymax,zmax))

def intersection_from_three_planes( planeA, planeB, planeC, show=False):
    '''
    intersection from 3 planes 
    accepts both Geom_Plane and gp_Pln
    @param planeA:
    @param planeB:
    @param planeC:
    @param show:
    '''
    planeA = planeA if not hasattr(planeA, 'Pln') else planeA.Pln()
    planeB = planeB if not hasattr(planeB, 'Pln') else planeB.Pln()
    planeC = planeC if not hasattr(planeC, 'Pln') else planeC.Pln()
    

    intersection_planes = IntAna_Int3Pln( planeA,
                                           planeB,
                                            planeC
                                    )
    pnt = intersection_planes.Value()
    if show:
        display.DisplayShape(make_vertex(pnt))
    return pnt

#def split_edge(edge, pnt):
#    '''
#    
#    @param edge:
#    @param pnt:
#    '''

#===============================================================================
# --- TRANSFORM ---
#===============================================================================

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
    trns =  gp_Vec(plane.Axis().Direction())
    trns.Normalized() * vec_length
    return trns

#===============================================================================
# FIX
#===============================================================================
def fix_tolerance( shape, tolerance=TOLERANCE):
    ShapeFix_ShapeTolerance().SetTolerance(shape, tolerance)
    
    
#===============================================================================
# global properties 
#===============================================================================
class GpropsFromShape(object):
    def __init__(self, shape, tolerance=1e-5):
        from OCC.BRepGProp import BRepGProp
        self.shape = shape
        self.bgprop = BRepGProp()
        self.tolerance = tolerance
        
    def volume(self):
        prop = GProp_GProps()
        error = self.bgprop.VolumeProperties(self.shape, prop, self.tolerance)
        return prop
    
    def surface(self):
        prop = GProp_GProps()
        error = self.bgprop.SurfaceProperties(self.shape, prop, self.tolerance)
        return prop
    
    def linear(self):
        prop = GProp_GProps()
        error = self.bgprop.LinearProperties(self.shape, prop )
        return prop

#=======================================================================
# Distance 
#=======================================================================

def minimum_distance(shp1, shp2):
    '''
    compute 
    @param shp1:    any TopoDS_*
    @param shp2:    any TopoDS_*
    
    @return: minimum distance, 
             minimum distance points on shp1
             minimum distance points on shp1
    '''
    from OCC.BRepExtrema import BRepExtrema_DistShapeShape
    bdss = BRepExtrema_DistShapeShape(shp1, shp2)
    bdss.Perform()
    with assert_isdone(bdss, 'failed computing minimum distances'):
        min_dist = bdss.Value()
        min_dist_shp1, min_dist_shp2 = [],[]
        for i in range(1,bdss.NbSolution()):
            min_dist_shp1.append(bdss.PointOnShape1(i))
            min_dist_shp1.append(bdss.PointOnShape2(i))
    return min_dist, min_dist_shp1, min_dist_shp2
            