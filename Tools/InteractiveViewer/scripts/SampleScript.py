#!C:/Python24/Python.exe
# -*- coding: utf-8 -*-
## (c) Copyright 2008 Andrew Haywood
## 
## Released into the Public Domain
##

'''
Simple script that can be used to show some 
basic geometry creation in the InteractiveViewer
'''

__author__ = "Andrew Haywood"
__date__ = "13 November 2007"

# --------------------------------------------------
import os
import os.path
import math
# --------------------------------------------------

display.EraseAll()

# --------------------------------------------------

def GetFacesOnShape(s):
    te = TopExp_Explorer()
    te.Init(s, TopAbs_FACE)
    numFaces = 0
    while te.More():
        numFaces+= 1
        te.Next()
    print "%i faces."%numFaces

# --------------------------------------------------
# BOXES
# --------------------------------------------------
s = BRepPrimAPI_MakeBox(100, 100, 100)
display.DisplayShape(s.Shape())

s = BRepPrimAPI_MakeBox(gp_Pnt(500, 0, 0), gp_Pnt(600, 100, 100))
display.DisplayShape(s.Shape())

s = BRepPrimAPI_MakeBox(gp_Pnt(1000, 0, 0), 100, 100, 100)
display.DisplayShape(s.Shape())

ax = gp_Ax2(gp_Pnt(1500, 0, 0), gp_Dir(100, 50, 0))
s = BRepPrimAPI_MakeBox(ax, 100, 125, 150)
display.DisplayShape(s.Shape())
GetFacesOnShape(s.Shape())
# --------------------------------------------------

# --------------------------------------------------
# CONES
# --------------------------------------------------
s = BRepPrimAPI_MakeCone(20, 10, 400)
display.DisplayShape(s.Shape())

s = BRepPrimAPI_MakeCone(20, 10, 500, 1)
display.DisplayShape(s.Shape())

ax = gp_Ax2(gp_Pnt(500, 500, 0), gp_Dir(100, 0, 0))
s = BRepPrimAPI_MakeCone(ax, 50, 30, 200)
display.DisplayShape(s.Shape())

ax = gp_Ax2(gp_Pnt(1000, 500, 0), gp_Dir(100, 50, 0))
s = BRepPrimAPI_MakeCone(ax, 50, 30, 200, 1)
display.DisplayShape(s.Shape())
GetFacesOnShape(s.Shape())
# --------------------------------------------------

# --------------------------------------------------
# CYLINDERS
# --------------------------------------------------
s = BRepPrimAPI_MakeCylinder(60, 200)
display.DisplayShape(s.Shape())

s = BRepPrimAPI_MakeCylinder(60, 350, 1.5)
display.DisplayShape(s.Shape())

ax = gp_Ax2(gp_Pnt(500, 1000, 0), gp_Dir(100, 0, 0))
s = BRepPrimAPI_MakeCylinder(ax, 20, 100)
display.DisplayShape(s.Shape())

ax = gp_Ax2(gp_Pnt(1000, 1000, 0), gp_Dir(100, 50, 0))
s = BRepPrimAPI_MakeCylinder(ax, 20, 100, 1)
display.DisplayShape(s.Shape())
GetFacesOnShape(s.Shape())
# --------------------------------------------------

# --------------------------------------------------
# SPHERES
# --------------------------------------------------
s = BRepPrimAPI_MakeSphere(25)
display.DisplayShape(s.Shape())

s = BRepPrimAPI_MakeSphere(30, math.radians(270))
display.DisplayShape(s.Shape())

s = BRepPrimAPI_MakeSphere(100, math.radians(10), math.radians(60))
display.DisplayShape(s.Shape())

s = BRepPrimAPI_MakeSphere(100, math.radians(-60), math.radians(-10), math.radians(30))
display.DisplayShape(s.Shape())

s = BRepPrimAPI_MakeSphere(gp_Pnt(500, 1500, 0), 100)
display.DisplayShape(s.Shape())

s = BRepPrimAPI_MakeSphere(gp_Pnt(1000, 1500, 0), 100, math.radians(270))
display.DisplayShape(s.Shape())

s = BRepPrimAPI_MakeSphere(gp_Pnt(1500, 1500, 0), 100, math.radians(10), math.radians(60))
display.DisplayShape(s.Shape())

s = BRepPrimAPI_MakeSphere(gp_Pnt(2000, 1500, 0), 100, math.radians(-60), math.radians(-10), math.radians(30))
display.DisplayShape(s.Shape())

ax = gp_Ax2(gp_Pnt(2500, 1500, 0), gp_Dir(100, 50, 0))
s = BRepPrimAPI_MakeSphere(ax, 100)
display.DisplayShape(s.Shape())

ax = gp_Ax2(gp_Pnt(3000, 1500, 0), gp_Dir(100, 50, 0))
s = BRepPrimAPI_MakeSphere(ax, 100, math.radians(270))
display.DisplayShape(s.Shape())

ax = gp_Ax2(gp_Pnt(3500, 1500, 0), gp_Dir(100, 50, 0))
s = BRepPrimAPI_MakeSphere(ax, 100, math.radians(10), math.radians(60))
display.DisplayShape(s.Shape())

ax = gp_Ax2(gp_Pnt(4000, 1500, 0), gp_Dir(100, 50, 0))
s = BRepPrimAPI_MakeSphere(ax, 100, math.radians(-60), math.radians(-10), math.radians(30))
display.DisplayShape(s.Shape())

# --------------------------------------------------

# --------------------------------------------------
# UNITED SOLID
# --------------------------------------------------
ax = gp_Ax2(gp_Pnt(0, 2000, 0), gp_Dir(100, 50, 0))
sol1 = BRepPrimAPI_MakeBox(ax, 100, 125, 150)
ax = gp_Ax2(gp_Pnt(10, 2000, -10), gp_Dir(100, 50, 0))
sol2 = BRepPrimAPI_MakeBox(ax, 50, 50, 300)
s = BRepAlgo_Fuse(sol1.Shape(), sol2.Shape())
display.DisplayShape(s.Shape())
# --------------------------------------------------

# --------------------------------------------------
# SUBTRACTED SOLID
# --------------------------------------------------
ax = gp_Ax2(gp_Pnt(500, 2000, 0), gp_Dir(100, 50, 0))
sol1 = BRepPrimAPI_MakeBox(ax, 100, 125, 150)
ax = gp_Ax2(gp_Pnt(510, 2000, -10), gp_Dir(100, 50, 0))
sol2 = BRepPrimAPI_MakeBox(ax, 50, 50, 300)
s = BRepAlgo_Cut(sol1.Shape(), sol2.Shape())
display.DisplayShape(s.Shape())
# --------------------------------------------------

# --------------------------------------------------
# INTERSECTED SOLID
# --------------------------------------------------
ax = gp_Ax2(gp_Pnt(1000, 2000, 0), gp_Dir(100, 50, 0))
sol1 = BRepPrimAPI_MakeBox(ax, 100, 125, 150)
ax = gp_Ax2(gp_Pnt(1010, 2000, -10), gp_Dir(100, 50, 0))
sol2 = BRepPrimAPI_MakeBox(ax, 50, 50, 300)
s = BRepAlgo_Common(sol1.Shape(), sol2.Shape())
display.DisplayShape(s.Shape())
#~ # --------------------------------------------------

# --------------------------------------------------
# LOFTED SOLID
# --------------------------------------------------
def MakeCurve(coordlist):
    a = TColgp_Array1OfPnt(1, len(coordlist))
    for i in range(len(coordlist)):
        coord = coordlist[i]
        a.SetValue(i+1, gp_Pnt(*coord))

    c = GeomAPI_PointsToBSpline(a)
    return BRepBuilderAPI_MakeEdge(c.Curve())

s = BRepOffsetAPI_ThruSections(1)
c = MakeCurve([(0,2500,0), (100,2600,0), (150,2600,0), (0,2500,0)])
wire = BRepBuilderAPI_MakeWire(c.Edge())
s.AddWire(wire.Wire())
c = MakeCurve([(0,2500,200), (100,2600,200), (150,2600,200), (0,2500,200)])
wire = BRepBuilderAPI_MakeWire(c.Edge())
s.AddWire(wire.Wire())
s.Build()
print "IsDone: ", s.IsDone()
display.DisplayShape(s.Shape())
# --------------------------------------------------

#~ if 1:
    #~ c = MakeCurve([(500,2500,200), (600,2600,200), (650,2600,200), (500,2500,200)])
    #~ s = BRepPrimAPI_MakePrism(c.Edge(), gp_Vec())
    #~ display.DisplayShape(s.Shape())


def MakePoint(x=0,y=0,z=0):
    p = gp_Pnt(x, y, z)
    v = TopoDS_Vertex()
    bb = BRep_Builder()
    bb.MakeVertex(v, p, 0.001)
    display.DisplayShape(v)
    
#~ for x in range(0, 100, 10): MakePoint(x, 500, 500)


# Load an iges file...
p = os.path.dirname(os.path.abspath(__file__))
#~ self.LoadFile(os.path.join(p, "scripts", "test.iges"))
# --------------------------------------------------

display.View_Iso()
display.Zoom_FitAll()

# --------------------------------------------------

