# -*- coding: utf-8 -*-
## (c) Copyright 2008 Andrew Haywood

import os
import os.path
import math

from OCC.gp import *
from OCC.TColgp import *
from OCC.Geom import *
from OCC.BRepBuilderAPI import *
from OCC.BRepOffsetAPI import *

CurvePoles = TColgp_Array1OfPnt(1, 6)
pt1 = gp_Pnt(0., 0., 0.)
pt2 = gp_Pnt(20., 50., 0.)
pt3 = gp_Pnt(60., 100., 0.)
pt4 = gp_Pnt(150., 0., 0.)
CurvePoles.SetValue(1, pt1)
CurvePoles.SetValue(2, pt2)
CurvePoles.SetValue(3, pt3)
CurvePoles.SetValue(4, pt4)

curve = Geom_BezierCurve(CurvePoles)
E = BRepBuilderAPI_MakeEdge(curve.GetHandle())

W = BRepBuilderAPI_MakeWire(E.Edge())

c = gp_Circ(gp_Ax2(gp_Pnt(0., 0., 0.),
                   gp_Dir(0., 1., 0.)), 5.)
Ec = BRepBuilderAPI_MakeEdge(c)
Wc = BRepBuilderAPI_MakeWire(Ec.Edge())

AX3 = gp_ZOX()
AX3 = gp_Ax3(AX3)
F = BRepBuilderAPI_MakeFace(gp_Pln(AX3), Wc.Wire())
#S = BRepOffsetAPI_MakePipe(W.Wire(), F.Face())
#S.Build()
#assert(S.IsDone())
#S.Check()

#display.DisplayShape(S.Shape)
display.DisplayShape(F.Shape())
display.DisplayShape(W.Shape())
display.View_Top()
display.FitAll()
