##Copyright 2009 Thomas Paviot (thomas.paviot@free.fr)
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
from OCC.GeomAPI import *
from OCC.Geom import *
from OCC.GeomAbs import *
from OCC.TColgp import *
from OCC.Geom2d import *
from OCC.gp import *
from OCC.BRepBuilderAPI import *
from OCC.TColgp import *

from OCC.Display.wxSamplesGui import display

import math

def edge(event=None):
    # The blud edge
    BlueEdge = BRepBuilderAPI_MakeEdge(gp_Pnt(-80,-50,-20),gp_Pnt(-30,-60,-60))
    
    V1 = BRepBuilderAPI_MakeVertex(gp_Pnt(-20,10,-30))
    V2 = BRepBuilderAPI_MakeVertex(gp_Pnt(10,7,-25))
    YellowEdge = BRepBuilderAPI_MakeEdge(V1.Vertex(),V2.Vertex())
        
    #The white edge    
            
    line = gp_Lin(gp_Ax1(gp_Pnt(10,10,10),gp_Dir(1,0,0)))
    WhiteEdge = BRepBuilderAPI_MakeEdge(line,-20,10)
        
    #The red edge    
        
    Elips = gp_Elips(gp_Ax2(gp_Pnt(10,0,0),gp_Dir(1,1,1)),60,30)
    RedEdge = BRepBuilderAPI_MakeEdge(Elips,0,math.pi/2)
        
    # The green edge and the both extreme vertex    
        
    P1=gp_Pnt(-15,200,10)
    P2=gp_Pnt(5,204,0)
    P3=gp_Pnt(15,200,0)    
    P4=gp_Pnt(-15,20,15)    
    P5=gp_Pnt(-5,20,0)
    P6=gp_Pnt(15,20,0)    
    P7=gp_Pnt(24,120,0)    
    P8=gp_Pnt(-24,120,12.5)    
    array=TColgp_Array1OfPnt(1,8)
    array.SetValue(1,P1)
    array.SetValue(2,P2)
    array.SetValue(3,P3)
    array.SetValue(4,P4)
    array.SetValue(5,P5)
    array.SetValue(6,P6)
    array.SetValue(7,P7)
    array.SetValue(8,P8)
    curve = Geom_BezierCurve(array)
    ME = BRepBuilderAPI_MakeEdge(curve.GetHandle())    
    GreenEdge = ME
    V3 = ME.Vertex1()    
    V4 = ME.Vertex2()
    
    display.EraseAll()
    display.DisplayColoredShape(BlueEdge.Edge(),'BLUE')
    display.DisplayShape(V1.Vertex())
    display.DisplayShape(V2.Vertex())
    display.DisplayColoredShape(WhiteEdge.Edge(),'WHITE')
    display.DisplayColoredShape(RedEdge.Edge(),'RED')
    display.DisplayColoredShape(GreenEdge.Edge(),'GREEN')
    display.DisplayShape(V3)
    display.DisplayShape(V4)

def wire(event=None):
    #       The red wire is build from a single edge
    Elips = gp_Elips(gp_Ax2(gp_Pnt(250,0,0),gp_Dir(1,1,1)),160,90)
    Edge1 = BRepBuilderAPI_MakeEdge(Elips,0,math.pi/2).Edge()
    RedWire = BRepBuilderAPI_MakeWire(Edge1).Wire()
    ###       the yellow wire is build from an existing wire and an edge
    circle = gp_Circ(gp_Ax2(gp_Pnt(-300,0,0),gp_Dir(1,0,0)),80)
    Edge2 = BRepBuilderAPI_MakeEdge(circle,0,math.pi).Edge()
    ExistingWire = BRepBuilderAPI_MakeWire(Edge2).Wire()
    Edge3 = BRepBuilderAPI_MakeEdge(gp_Pnt(-300,0,-80),gp_Pnt(-90,20,-30)).Edge()
    MW1 = BRepBuilderAPI_MakeWire(ExistingWire,Edge3)
    ##print "1"
    if MW1.IsDone():
        YellowWire = MW1.Wire()
    ###       the white wire is built with an existing wire and 3 edges.
    ###       we use the methods Add, Edge and Vertex from BRepBuilderAPI_MakeWire.
    circle2 = gp_Circ(gp_Ax2(gp_Pnt(0,0,0),gp_Dir(0,1,0)),200)
    Edge4 = BRepBuilderAPI_MakeEdge(circle2,0,math.pi).Edge()
    ExistingWire2 = BRepBuilderAPI_MakeWire(Edge4).Wire()
    P1 = gp_Pnt(0,0,-200)
    P2 = gp_Pnt(5,204,0)
    Edge5 = BRepBuilderAPI_MakeEdge(P1,P2).Edge()
    P3 = gp_Pnt(-15,20,15)
    Edge6 = BRepBuilderAPI_MakeEdge(P2,P3).Edge()
    P4 = gp_Pnt(15,20,0)
    Edge7 = BRepBuilderAPI_MakeEdge(P3,P4).Edge()
    MW = BRepBuilderAPI_MakeWire()
    MW.Add(ExistingWire2)
    MW.Add(Edge5)
    MW.Add(Edge6)
    MW.Add(Edge7)
    if MW.IsDone():
        WhiteWire = MW.Wire()
        LastEdge = MW.Edge()
        LastVertex = MW.Vertex()
    
    display.EraseAll()
    display.DisplayColoredShape(RedWire,'RED')
    display.DisplayColoredShape(YellowWire,'YELLOW')
    display.DisplayColoredShape(WhiteWire,'WHITE')
    display.DisplayShape(LastEdge)
    display.DisplayShape(LastVertex)

def face(event=None):
    P1 = gp_Pnt()
    P2 = gp_Pnt()
    P3 = gp_Pnt()
    P4 = gp_Pnt()
    P5 = gp_Pnt()
    P6 = gp_Pnt()
    
    # The white Face
    sphere = gp_Sphere(gp_Ax3(gp_Pnt(0,0,0),gp_Dir(1,0,0)),150)
    WhiteFace = BRepBuilderAPI_MakeFace(sphere,0.1,0.7,0.2,0.9)
    
    # The red face    
    P1.SetCoord(-15,200,10)
    P2.SetCoord(5,204,0)    
    P3.SetCoord(15,200,0)    
    P4.SetCoord(-15,20,15)
    P5.SetCoord(-5,20,0)    
    P6.SetCoord(15,20,35)
    array = TColgp_Array2OfPnt(1,3,1,2)
    array.SetValue(1,1,P1);    
    array.SetValue(2,1,P2);    
    array.SetValue(3,1,P3);     
    array.SetValue(1,2,P4);     
    array.SetValue(2,2,P5);     
    array.SetValue(3,2,P6);    
    curve = GeomAPI_PointsToBSplineSurface(array,3,8,GeomAbs_C2,0.001).Surface()
    RedFace = BRepBuilderAPI_MakeFace(curve)
    
    #The brown face    
    
    circle = gp_Circ(gp_Ax2(gp_Pnt(0,0,0),gp_Dir(1,0,0)),80)
    Edge1 = BRepBuilderAPI_MakeEdge(circle,0,math.pi)    
    Edge2 = BRepBuilderAPI_MakeEdge(gp_Pnt(0,0,-80),gp_Pnt(0,-10,40))
    Edge3 = BRepBuilderAPI_MakeEdge(gp_Pnt(0,-10,40),gp_Pnt(0,0,80))
    ##
    ##TopoDS_Wire YellowWire;    
    MW1 = BRepBuilderAPI_MakeWire(Edge1.Edge(),Edge2.Edge(),Edge3.Edge())    
    if (MW1.IsDone()):
        YellowWire = MW1.Wire()
    BrownFace = BRepBuilderAPI_MakeFace(YellowWire)
    
    #The pink face    
    #
    P1.SetCoord(35,-200,40)
    P2.SetCoord(50,-204,30)
    P3.SetCoord(65,-200,30)
    P4.SetCoord(35,-20,45)    
    P5.SetCoord(45,-20,30)
    P6.SetCoord(65,-20,65)
    array2 = TColgp_Array2OfPnt(1,3,1,2)
    array2.SetValue(1,1,P1)
    array2.SetValue(2,1,P2)
    array2.SetValue(3,1,P3)
    array2.SetValue(1,2,P4)
    array2.SetValue(2,2,P5)
    array2.SetValue(3,2,P6)
    ##    
    BSplineSurf = GeomAPI_PointsToBSplineSurface(array2,3,8,GeomAbs_C2,0.001)
    ##    
    aFace = BRepBuilderAPI_MakeFace(BSplineSurf.Surface())    
    ##
    ##//2d lines    
    P12d = gp_Pnt2d(0.9,0.1)
    P22d = gp_Pnt2d(0.2,0.7)
    P32d = gp_Pnt2d(0.02,0.1)
    ##
    line1 = Geom2d_Line(P12d,gp_Dir2d((0.2-0.9),(0.7-0.1)))
    line2 = Geom2d_Line(P22d,gp_Dir2d((0.02-0.2),(0.1-0.7)))
    line3 = Geom2d_Line(P32d,gp_Dir2d((0.9-0.02),(0.1-0.1)))
    ##        
    ##//Edges are on the BSpline surface    
    Edge1 = BRepBuilderAPI_MakeEdge(line1.GetHandle(),BSplineSurf,0,P12d.Distance(P22d)).Edge()
    Edge2 = BRepBuilderAPI_MakeEdge(line2.GetHandle(),BSplineSurf,0,P22d.Distance(P32d)).Edge()
    Edge3 = BRepBuilderAPI_MakeEdge(line3.GetHandle(),BSplineSurf,0,P32d.Distance(P12d)).Edge()
    ##
    Wire1 = BRepBuilderAPI_MakeWire(Edge1,Edge2,Edge3).Wire()
    Wire1.Reverse()
    PinkFace = BRepBuilderAPI_MakeFace(aFace,Wire1)
    BRepLib().BuildCurves3d(PinkFace)
    
    display.EraseAll()
    display.DisplayColoredShape(RedFace.Face(),'RED')
    display.DisplayColoredShape(BrownFace.Face(),'BLUE')
    #display.DisplayShape(RedFace_f)
    
if __name__ == '__main__':
    from OCC.Display.wxSamplesGui import start_display, add_function_to_menu, add_menu
    raise NotImplementedError, 'uses too archaic OCC calls... should be redone...'
    add_menu('topology building')
    add_function_to_menu('topology building', edge)
    add_function_to_menu('topology building', wire)
    add_function_to_menu('topology building', face)
    start_display()