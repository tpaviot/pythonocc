##Copyright 2009 Thomas Paviot (tpaviot@gmail.com)
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
from OCC.BRepPrimAPI import *
from OCC.BRepAlgoAPI import *
from OCC.TopOpeBRepTool import *
from OCC.BRepBuilderAPI import *
from OCC.BRepFilletAPI import *
from OCC.Geom import *
from OCC.TopoDS import *
from OCC.TopExp import *
from OCC.TopAbs import *
from OCC.TColgp import *

import time, math, sys
from OCC.Display.SimpleGui import display, start_display, add_function_to_menu, add_menu
    
def common(event=None):
    # Create Box
    axe = gp_Ax2(gp_Pnt(10,10,10),gp_Dir(1,2,1))
    Box = BRepPrimAPI_MakeBox(axe,60,80,100).Shape()
    # Create wedge
    Wedge = BRepPrimAPI_MakeWedge(60.,100.,80.,20.).Shape()
    # Common surface
    CommonSurface = BRepAlgoAPI_Common(Box,Wedge).Shape()

    display.EraseAll()
    display.DisplayShape(Box)
    display.DisplayShape(Wedge)
    # TODO VisualLayer
    display.EraseAll()
    display.DisplayShape(CommonSurface)

def slicer(event=None):
    # Param
    Zmin,Zmax,deltaZ = -100, 100, 5
    # Note: the shape can also come from a shape selected from InteractiveViewer
    if 'display' in dir():
        shape = display.GetSelectedShape()
    else:
        # Create the shape to slice
        shape = BRepPrimAPI_MakeSphere (60.).Shape()
    # Define the direction
    D = gp_Dir(0.,0.,1.) # the z direction
    # Perform slice
    sections = []
    init_time = time.time() # for total time computation
    for z in range(Zmin,Zmax,deltaZ):
        # Create Plane defined by a point and the perpendicular direction
        P = gp_Pnt(0,0,z)
        Pln = gp_Pln(P,D)
        face = BRepBuilderAPI_MakeFace(Pln).Shape()
        # Computes Shape/Plane intersection
        section = BRepAlgoAPI_Section(shape,face)
        if section.IsDone():
            sections.append(section)
    total_time = time.time() - init_time
    print "%s necessary to perform slice."%total_time
    
    display.EraseAll()
    display.DisplayShape(shape)
    for section in sections:
        display.DisplayShape(section.Shape())

def section(event=None):
    Torus = BRepPrimAPI_MakeTorus(120,20).Shape()
    V1 = gp_Vec(1,1,1)
    radius = 120.0
    sections = []
    for i in range(-3,4):
        # Create Sphere
        Sphere = BRepPrimAPI_MakeSphere(gp_Pnt(26*3*i,0,0),radius).Shape()
        # Computes Torus/Sphere section
        PerformNow = 0
        section = BRepAlgoAPI_Section(Torus,Sphere,PerformNow)
        section.ComputePCurveOn1(1)
        section.Approximation(TopOpeBRepTool_APPROX)
        section.Build()
        sections.append(section)
    
    display.EraseAll()
    display.DisplayShape(Torus)
    for section in sections:
        display.DisplayShape(section.Shape())
    
def fillet(event=None):
    Box = BRepPrimAPI_MakeBox(gp_Pnt(-400,0,0),200,230,180).Shape()
    fillet = BRepFilletAPI_MakeFillet(Box)
    # Add fillet on each edge
    Ex = TopExp_Explorer(Box,TopAbs_EDGE)
    while Ex.More():
        Edge =TopoDS().Edge(Ex.Current())
        fillet.Add(20,Edge)
        Ex.Next()
    
    blendedBox = fillet.Shape()
    
    P1 = gp_Pnt(250,150,75)
    S1 = BRepPrimAPI_MakeBox(300,200,200).Shape()
    S2 = BRepPrimAPI_MakeBox(P1,120,180,70).Shape()
    Fuse = BRepAlgoAPI_Fuse(S1,S2)
    FusedShape = Fuse.Shape()
    
    fill = BRepFilletAPI_MakeFillet(FusedShape)
    ex1 = TopExp_Explorer(FusedShape,TopAbs_EDGE)
    while ex1.More():
        E =TopoDS().Edge(ex1.Current())
        fill.Add(E)
        ex1.Next()

    for i in range(1,fill.NbContours()+1):
        longueur = fill.Length(i)
        Rad = 0.15*longueur
        fill.SetRadius(Rad,i,1)
    
    blendedFusedSolids = fill.Shape()
    
    display.EraseAll()
    display.DisplayShape(blendedBox)
    display.DisplayShape(blendedFusedSolids)
    display.FitAll()            

def cut(event=None):
    # Create Box
    Box = BRepPrimAPI_MakeBox(200,60,60).Shape()
    # Create Sphere
    Sphere = BRepPrimAPI_MakeSphere(gp_Pnt(100,20,20),80).Shape()
    # Cut: the shere is cut 'by' the box
    Cut = BRepAlgoAPI_Cut(Sphere,Box).Shape()
    display.EraseAll()
    display.DisplayShape(Box)
    display.DisplayShape(Sphere)
    # TODO VisualLayer
    display.EraseAll()
    display.DisplayShape(Cut)

def variable_filleting(event=None):
    # Create Box
    Box = BRepPrimAPI_MakeBox(200,200,200).Shape()
    # Fillet
    Rake = BRepFilletAPI_MakeFillet(Box)      
    ex = TopExp_Explorer(Box,TopAbs_EDGE)
    ex.Next()
    ex.Next()
    ex.Next()
    ex.Next()
    Rake.Add(8,50,TopoDS().Edge(ex.Current()))
    Rake.Build()
    if Rake.IsDone():
        evolvedBox = Rake.Shape()
    # Create Cylinder
    Cylinder = BRepPrimAPI_MakeCylinder(gp_Ax2(gp_Pnt(-300,0,0),gp_Dir(0,0,1)),100,200).Shape()
    fillet = BRepFilletAPI_MakeFillet(Cylinder)
    
    TabPoint2 = TColgp_Array1OfPnt2d(0,20)
    for i in range(0,20):
        Point2d = gp_Pnt2d(i*2*math.pi/19,60*math.cos(i*math.pi/19-math.pi/2)+10)
        TabPoint2.SetValue(i,Point2d)
    #    append(Point2d)
    exp2 = TopExp_Explorer(Cylinder,TopAbs_EDGE)
    fillet.Add(TabPoint2,TopoDS().Edge(exp2.Current()))
    fillet.Build()
    if fillet.IsDone():
        LawEvolvedCylinder = fillet.Shape()
    
    P = gp_Pnt(350,0,0)
    Box2 = BRepPrimAPI_MakeBox(P,200,200,200).Shape()
    afillet = BRepFilletAPI_MakeFillet(Box2)
    
    TabPoint = TColgp_Array1OfPnt2d(1,6)
    P1 = gp_Pnt2d(0.,8.)
    P2 = gp_Pnt2d(0.2,16.)
    P3 = gp_Pnt2d(0.4,25.)
    P4 = gp_Pnt2d(0.6,55.)
    P5 = gp_Pnt2d(0.8,28.)
    P6 = gp_Pnt2d(1.,20.)
    TabPoint.SetValue(1,P1)
    TabPoint.SetValue(2,P2)
    TabPoint.SetValue(3,P3)
    TabPoint.SetValue(4,P4)
    TabPoint.SetValue(5,P5)
    TabPoint.SetValue(6,P6)
           
    exp = TopExp_Explorer(Box2,TopAbs_EDGE)
    exp.Next()
    exp.Next()
    exp.Next()
    exp.Next()
    afillet.Add(TabPoint, TopoDS().Edge(exp.Current()))
    afillet.Build()
    if afillet.IsDone():
        LawEvolvedBox = afillet.Shape()
    
    display.EraseAll()
    display.DisplayShape(Box)
    display.EraseAll()
    display.DisplayShape(evolvedBox)    
    display.DisplayShape(LawEvolvedBox)


def exit(event=None):
    sys.exit()

if __name__ == '__main__':
    add_menu('topology operations')
    add_function_to_menu('topology operations', common)
    add_function_to_menu('topology operations', cut)
    add_function_to_menu('topology operations', section)
    add_function_to_menu('topology operations', slicer)
    add_function_to_menu('topology operations', fillet)
    add_function_to_menu('topology operations', variable_filleting)
    add_function_to_menu('topology operations', exit)
    start_display()
