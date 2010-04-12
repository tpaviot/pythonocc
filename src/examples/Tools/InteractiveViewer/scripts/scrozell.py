#!C:/Python24/Python.exe
# -*- coding: utf-8 -*-
## (c) Copyright 2008 Andrew Haywood
## 
## Released into the Public Domain
##

# --------------------------------------------------
import os
import os.path
import math

import OCC.gp
from OCC.TColgp import *
from OCC.Geom import *
from OCC.BRepBuilderAPI import *
from OCC.BRepOffsetAPI import *

# --------------------------------------------------
CurvePoles = TColgp_Array1OfPnt(1,6)
pt1 = OCC.gp.gp_Pnt(0.,0.,0.);
pt2 = OCC.gp.gp_Pnt(20.,50.,0.);
pt3 = OCC.gp.gp_Pnt(60.,100.,0.);
pt4 = OCC.gp.gp_Pnt(150.,0.,0.);
CurvePoles.SetValue(1, pt1)
CurvePoles.SetValue(2, pt2)
CurvePoles.SetValue(3, pt3)
CurvePoles.SetValue(4, pt4)
print "1"
# ________________________________________
curve = Geom_BezierCurve(CurvePoles) # Handle(Geom_BezierCurve)
E = BRepBuilderAPI_MakeEdge(curve.GetHandle()) # TopoDS_Edge
# ... i tried "Handle_Geom_TrimmedCurve" also
W = BRepBuilderAPI_MakeWire( E.Edge() ) # TopoDS_Wire
#print "2"
# ________________________________________
c = OCC.gp.gp_Circ(OCC.gp.gp_Ax2(OCC.gp.gp_Pnt(0.,0.,0.),OCC.gp.gp_Dir(0.,1.,0.)),10.) # gp_Circ 
Ec = BRepBuilderAPI_MakeEdge(c) # TopoDS_Edge 
Wc = BRepBuilderAPI_MakeWire(Ec.Edge()) # TopoDS_Wire
print "3"
# ________________________________________
AX3 = OCC.gp.gp().ZOX()
AX3 = OCC.gp.gp_Ax3(AX3)
F = BRepBuilderAPI_MakeFace(OCC.gp.gp_Pln(AX3),Wc.Wire()) # TopoDS_Face 
S = BRepOffsetAPI_MakePipe(W.Wire(),F.Face()) # TopoDS_Shape
S.Build()
print S.IsDone()
S.Check()

display.DisplayShape(S.Shape())

# --------------------------------------------------

# Do this before creating the line else it screws up the zoom extents
display.View_Top()
display.FitAll()


