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

from OCC.Utils.Topology import WireExplorer
from OCC.BRepAdaptor import *
from OCC.BRepFill import *

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

if 'display' in dir():
    display.DisplayShape(face.Shape())
    display.DisplayShape(poly.Shape())
    display.DisplayShape(BRepBuilderAPI_MakeVertex(p5).Shape())

