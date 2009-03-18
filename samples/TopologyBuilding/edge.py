from OCC.gp import *
from OCC.BRepBuilderAPI import *
from OCC.GeomAPI import *
from OCC.Geom import *
from OCC.GeomAbs import *
from OCC.TColgp import *
from OCC.Geom2d import *
import math


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

 

if 'display' in dir():
    display.EraseAll()
    display.DisplayColoredShape(BlueEdge.Edge(),'BLUE')
    display.DisplayShape(V1.Vertex())
    display.DisplayShape(V2.Vertex())
    display.DisplayColoredShape(WhiteEdge.Edge(),'WHITE')
    display.DisplayColoredShape(RedEdge.Edge(),'RED')
    display.DisplayColoredShape(GreenEdge.Edge(),'GREEN')
    display.DisplayShape(V3)
    display.DisplayShape(V4)
