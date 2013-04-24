#!/usr/bin/python

import OCC.gp
import OCC.BRepPrimAPI
import OCC.BRepAlgo
import OCC.GeomAPI
import OCC.Geom2dAPI
import OCC.BRepBuilderAPI
from OCC.Display.SimpleGui import  init_display
from OCC.BRepExtrema import BRepExtrema_ExtCC, BRepExtrema_DistShapeShape
from OCC.Utils.Construct import make_edge, make_vertex


display, start_display, add_menu, add_function_to_menu = init_display()

L = OCC.gp.gp_Pnt(4, 10, 0)
Lsphere = OCC.BRepPrimAPI.BRepPrimAPI_MakeSphere(L, 0.25)
display.DisplayShape(Lsphere.Shape())

M = OCC.gp.gp_Pnt(10, 16, 0)
Msphere = OCC.BRepPrimAPI.BRepPrimAPI_MakeSphere(M, 0.25)
display.DisplayShape(Msphere.Shape())

Oaxis = OCC.gp.gp_Ax2()
Laxis = OCC.gp.gp_Ax2()
Maxis = OCC.gp.gp_Ax2()
Laxis.SetLocation(L)
Maxis.SetLocation(M)
Lplane = OCC.gp.gp_Pln(OCC.gp.gp_Ax3(Laxis))
Mplane = OCC.gp.gp_Pln(OCC.gp.gp_Ax3(Maxis))
Oplane = OCC.gp.gp_Pln(OCC.gp.gp_Ax3(Oaxis))

r1 = 12.0
r2 = 15.0

Ltorus = OCC.BRepPrimAPI.BRepPrimAPI_MakeTorus(Laxis, r1, 0.05)
display.DisplayShape(Ltorus.Shape())
Mtorus = OCC.BRepPrimAPI.BRepPrimAPI_MakeTorus(Maxis, r2, 0.05)
display.DisplayShape(Mtorus.Shape())

Lcircle = OCC.gp.gp_Circ(Laxis, r1)
Mcircle = OCC.gp.gp_Circ(Maxis, r2)

l_circle, m_circle = make_edge(Lcircle), make_edge(Mcircle)
display.DisplayShape((l_circle, m_circle))

dss = BRepExtrema_DistShapeShape(l_circle, m_circle)

print "intersection parameters on l_circle:", [dss.ParOnEdgeS1(i) for i in range(1, dss.NbSolution()+1)]
print "intersection parameters on m_circle:", [dss.ParOnEdgeS2(i) for i in range(1, dss.NbSolution()+1)]

for i in range(1, dss.NbSolution()+1):
    pnt = dss.PointOnShape1(i)
    display.DisplayShape(make_vertex(pnt))



display.FitAll()
start_display()
