#!C:/Python24/Python.exe
# -*- coding: utf-8 -*-
## (c) Copyright 2008 Andrew Haywood
## 
## Released into the Public Domain
##

'''
Wireframe functionality
'''

__author__ = "Andrew Haywood"
__date__ = "15 November 2007"

# --------------------------------------------------
import os
import os.path
import math

from OCC.gp import *
from OCC.BRepBuilderAPI import *
from OCC.BRep import *
from OCC.gce import *
from OCC.TColgp import *
from OCC.TopoDS import *
from OCC.GeomAPI import *
from OCC.Geom import *

# --------------------------------------------------

display.EraseAll()

# --------------------------------------------------

def MakePoint(x=0,y=0,z=0):
    p = gp_Pnt(x, y, z)
    v = TopoDS_Vertex()
    bb = BRep_Builder()
    bb.MakeVertex(v, p, 0.001)
    return v
display.DisplayShape(MakePoint())
    
# --------------------------------------------------

# --------------------------------------------------
# CIRCLE
# --------------------------------------------------
ax = gp_Ax2(gp_Pnt(0, 100, 0), gp_Dir(0, 0, 1))
c = gp_Circ(ax, 10)
s1 = BRepBuilderAPI_MakeEdge(c)
display.DisplayShape(s1.Shape())
d = gce_MakeCirc(gp_Pnt(100,100, 0), gp_Dir(0,0,1), 10)
s2 = BRepBuilderAPI_MakeEdge(d.Value())
display.DisplayShape(s2.Shape())

# --------------------------------------------------

# Do this before creating the line else it screws up the zoom extents
display.View_Top()
display.FitAll()


# --------------------------------------------------
# LINE
# --------------------------------------------------
s = BRepBuilderAPI_MakeEdge(gp_Pnt(0,150,0), gp_Pnt(100,150,0))
display.DisplayShape(s.Shape())
# --------------------------------------------------

def MakeCurve(coordlist):
    a = TColgp_Array1OfPnt(1, len(coordlist))
    for i in range(len(coordlist)):
        coord = coordlist[i]
        a.SetValue(i+1, gp_Pnt(*coord))

    c = GeomAPI_PointsToBSpline(a)
    return c

c = MakeCurve([(0,50,0), (15, 40,0), (20, 60, 0), (50, 50, 0)])
s = BRepBuilderAPI_MakeEdge(c.Curve())
display.DisplayShape(s.Shape())

