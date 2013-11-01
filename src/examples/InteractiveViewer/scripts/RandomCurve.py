#!C:/Python24/Python.exe
# -*- coding: utf-8 -*-
## (c) Copyright 2008 Andrew Haywood
## 
## Released into the Public Domain
##

'''
Simple script that creates a random curve
'''

__author__ = "Andrew Haywood"
__date__ = "14 November 2007"

# --------------------------------------------------
import os
import os.path
import random

from OCC.TColgp import *
from OCC.GeomAPI import *
from OCC.Geom import *
from OCC.BRepBuilderAPI import *
from OCC.TopoDS import *
from OCC.BRep import *
from OCC.gp import *

random.seed()
# --------------------------------------------------

display.EraseAll()

def MakeCurve(coordlist, interpolate=False):
    """Takes a list of 3d coords as input."""
    if interpolate:
        a = TColgp_HArray1OfPnt(1, len(coordlist))
    else:
        a = TColgp_Array1OfPnt(1, len(coordlist))
    for i in range(len(coordlist)):
        coord = coordlist[i]
        a.SetValue(i+1, gp_Pnt(*coord))

    if interpolate:
        print "DOES NOT WORK"
        return
        #~ a = Handle_TColgp_HArray1OfPnt(a)
        #~ c = GeomAPI_Interpolate(a, False, Precision().Approximation())
        #~ c.Perform();                                                              
    else:
        c = GeomAPI_PointsToBSpline(a)
    bc = BRepBuilderAPI_MakeEdge(c.Curve())
    display.DisplayShape(bc.Shape())

def MakePoint(x=0,y=0,z=0):
    p = gp_Pnt(x, y, z)
    v = TopoDS_Vertex()
    bb = BRep_Builder()
    bb.MakeVertex(v, p, 0.001)
    display.DisplayShape(v)

num_points = random.randrange(3, 10)
coords = []
for i in range(num_points):
    coords.append((random.randrange(0, 1000),
                   random.randrange(0, 1000),
                   random.randrange(0, 1000)))
MakeCurve(coords)

for c in coords:
    MakePoint(*c)

display.View_Iso()
display.FitAll()
