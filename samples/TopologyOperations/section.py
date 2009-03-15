from OCC.gp import *
from OCC.BRepPrimAPI import *
from OCC.BRepAlgoAPI import *
from OCC.TopOpeBRepTool import *

#
# Create torus
#
Torus = BRepPrimAPI_MakeTorus(120,20)
Torus_s = Torus.Shape()

V1 = gp_Vec(1,1,1)
radius = 120.0
sections = []
for i in range(-3,4):
    #
    # Create Sphere
    #
    Sphere = BRepPrimAPI_MakeSphere(gp_Pnt(26*3*i,0,0),radius)
    Sphere_s = Sphere.Shape()
    #
    # Computes Torus/Sphere section
    #
    PerformNow = 0
    section = BRepAlgoAPI_Section(Torus_s,Sphere_s,PerformNow)
    section.ComputePCurveOn1(1)
    section.Approximation(TopOpeBRepTool_APPROX)
    section.Build()
    sections.append(section)
    

if 'display' in dir():
    import time
    display.EraseAll()
    for section in sections:
        display.DisplayShape(section.Shape())
