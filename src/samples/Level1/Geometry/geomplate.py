#!/usr/bin/env python

##Copyright 2009 Jelle Ferina (jelleferinga@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

from OCC.gp import *
from OCC.BRepBuilderAPI import *
from OCC.GeomPlate import *

from OCC import TopoDS
from OCC.Utils.Topology import WireExplorer
from OCC.BRepAdaptor import *
from OCC.BRepFill import *
from OCC.BRep import *
from OCC.ShapeAnalysis import *
from OCC.GeomLProp import *
from OCC.Display.SimpleGui import add_menu, add_function_to_menu, start_display
import types, sys

#===============================================================================
# Basic API usage
#===============================================================================

def geom_plate(event=None):
    display.EraseAll()
    p1,p2,p3,p4,p5 = gp_Pnt(0,0,0),gp_Pnt(0,10,0),gp_Pnt(0,10,10),gp_Pnt(0,0,10),gp_Pnt(5,5,5)
    poly = BRepBuilderAPI_MakePolygon() 
    map(poly.Add, [p1,p2,p3,p4,p1])
    poly.Build()
    
    # plate surface
    bpSrf = GeomPlate_BuildPlateSurface(3,15,2)
    
    # add curve constraints
    for edg in WireExplorer(poly.Wire()).ordered_edges():
        c = BRepAdaptor_HCurve()
        c.ChangeCurve().Initialize(edg)
        constraint = BRepFill_CurveConstraint(c.GetHandle(), 0)
        bpSrf.Add(constraint.GetHandle())
    
    # add point constraint
    bpSrf.Add(GeomPlate_PointConstraint(p5, 0).GetHandle())
    bpSrf.Perform()
    
    maxSeg, maxDeg, critOrder = 9,8,0
    tol  = 1e-4
    dmax = max([tol,10*bpSrf.G0Error()])
    
    srf = bpSrf.Surface()
    plate = GeomPlate_MakeApprox(srf, tol, maxSeg, maxDeg, dmax, critOrder)
    
    uMin, uMax, vMin, vMax = srf.GetObject().Bounds()
    
    face = BRepBuilderAPI_MakeFace(plate.Surface(), uMin, uMax, vMin, vMax)
    face.Build()
    
    display.DisplayShape(face.Shape())
    display.DisplayShape(poly.Shape())
    display.DisplayShape(BRepBuilderAPI_MakeVertex(p5).Shape())

#===============================================================================
# Find a surface such that the radius at the vertex is n
#===============================================================================

def build_plate(polygon, points):
    '''
    build a surface from a constraining polygon(s) and point(s)
    @param polygon:     list of polygons ( TopoDS_Shape)
    @param points:      list of points ( gp_Pnt ) 
    '''
    # plate surface
    bpSrf = GeomPlate_BuildPlateSurface(3,15,2)
    
    # add curve constraints
    for poly in polygon:
        for edg in WireExplorer(poly.Wire()).ordered_edges():
            c = BRepAdaptor_HCurve()
            c.ChangeCurve().Initialize(edg)
            constraint = BRepFill_CurveConstraint(c.GetHandle(), 0)
            bpSrf.Add(constraint.GetHandle())
        
    # add point constraint
    for pt in points:
        bpSrf.Add(GeomPlate_PointConstraint(pt, 0).GetHandle())
        bpSrf.Perform()
    
    maxSeg, maxDeg, critOrder = 9,8,0
    tol  = 1e-4
    dmax = max([tol,10*bpSrf.G0Error()])
    
    srf = bpSrf.Surface()
    plate = GeomPlate_MakeApprox(srf, tol, maxSeg, maxDeg, dmax, critOrder)
    
    uMin, uMax, vMin, vMax = srf.GetObject().Bounds()
    
    face = BRepBuilderAPI_MakeFace(plate.Surface(), uMin, uMax, vMin, vMax)
    face.Build()
    return TopoDS.TopoDS().Face(face.Shape())

def radius_at_uv(face, u, v):
    '''
    returns the mean radius at a u,v coordinate
    @param face:    surface input
    @param u,v:     u,v coordinate
    '''
    h_srf = BRep_Tool().Surface(face)
    uv_domain = GeomLProp_SurfaceTool().Bounds(h_srf)
    curvature = GeomLProp_SLProps(h_srf, u, v, 1, 1e-6)
    try:
        _crv_min = 1./curvature.MinCurvature()
    except ZeroDivisionError:
        _crv_min = 0.
    
    try:
        _crv_max = 1./curvature.MaxCurvature()
    except ZeroDivisionError:
        _crv_max = 0.
    return abs((_crv_min+_crv_max)/2.)

def uv_from_projected_point_on_face(face, pt):
    '''
    returns the uv coordinate from a projected point on a face
    '''
    srf = BRep_Tool().Surface(face)
    sas = ShapeAnalysis_Surface(srf)
    uv  = sas.ValueOfUV(pt, 1e-2)
    print 'distance',sas.Value(uv).Distance(pt)    
    return uv.Coord()


class RadiusConstrainedSurface():
    '''
    returns a surface that has `radius` at `pt`
    '''
    def __init__(self, display, poly, pnt, targetRadius):
        self.display = display
        self.targetRadius = targetRadius
        self.poly = poly
        self.pnt = pnt
        self.plate = self.build_surface()
        
    def build_surface(self):
        '''
        builds and renders the plate
        '''
        self.plate = build_plate([self.poly], [self.pnt])
        self.display.EraseAll()
        self.display.DisplayShape(self.plate)
        self.display.DisplayShape(self.poly.Shape())
        vert = BRepBuilderAPI_MakeVertex(self.pnt)
        self.display.DisplayShape(vert.Shape())
    
    def radius(self, z):
        '''
        sets the height of the point constraining the plate, returns the radius at this point
        '''
        if isinstance(z, types.FloatType):
            self.pnt.SetX(z)
        else:
            self.pnt.SetX(float(z[0]))
        self.build_surface()
        uv = uv_from_projected_point_on_face(self.plate, self.pnt)
        radius = radius_at_uv(self.plate, uv[0], uv[1])
        print 'z:',z, 'radius:', radius
        self.curr_radius = radius
        return self.targetRadius-abs(radius)


def solve_radius(event=None):
    try:
        import scipy
        from scipy.optimize import fsolve
    except ImportError:
        print 'Error: scipy not installed, please check http://www.scipy.org'
        print 'geomplate/solve_radius sample aborted.'
        sys.exit(0)
    import time
    from OCC.BRepBuilderAPI import BRepBuilderAPI_MakePolygon
    
    display.EraseAll()
    
    p1,p2,p3,p4,p5 = gp_Pnt(0,0,0),gp_Pnt(0,10,0),gp_Pnt(0,10,10),gp_Pnt(0,0,10),gp_Pnt(5,5,5)
    poly = BRepBuilderAPI_MakePolygon() 
    map(poly.Add, [p1,p2,p3,p4,p1])
    poly.Build()
    
    for i in scipy.arange(0.1,3.,0.2).tolist():
        rcs = RadiusConstrainedSurface(display, poly, p5, i )
        x = fsolve(rcs.radius, 1, maxfev=1000 )
        print 'Goal: %s radius: %s' % ( i, rcs.curr_radius )
        time.sleep(0.5)

def exit(event=None):
    sys.exit()

add_menu('geom plate')
add_function_to_menu('geom plate', geom_plate)
add_function_to_menu('geom plate', solve_radius)
add_function_to_menu('geom plate', exit)

start_display()

