from OCC.gp import *
from OCC.BRepBuilderAPI import *
from OCC.Geom import *
from OCC.GeomAPI import *
from OCC.GeomAbs import *
from OCC.TColgp import *
import math

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
curve = GeomAPI_PointsToBSplineSurface(array,3,8,GeomAbs_C2,0.001)
curve_s = curve.Surface()
RedFace = BRepBuilderAPI_MakeFace(curve_s)

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
##gp_Pnt2d P12d(0.9,0.1);	
##gp_Pnt2d P22d(0.2,0.7);	
##gp_Pnt2d P32d(0.02,0.1);	
##
##Handle (Geom2d_Line) line1=		
##	new Geom2d_Line(P12d,gp_Dir2d((0.2-0.9),(0.7-0.1)));	
##Handle (Geom2d_Line) line2=		
##	new Geom2d_Line(P22d,gp_Dir2d((0.02-0.2),(0.1-0.7)));   
##Handle (Geom2d_Line) line3=		
##	new Geom2d_Line(P32d,gp_Dir2d((0.9-0.02),(0.1-0.1)));	
##		
##//Edges are on the BSpline surface	
##Edge1 = BRepBuilderAPI_MakeEdge(line1,BSplineSurf,0,P12d.Distance(P22d));	
##Edge2 = BRepBuilderAPI_MakeEdge(line2,BSplineSurf,0,P22d.Distance(P32d));	
##Edge3 = BRepBuilderAPI_MakeEdge(line3,BSplineSurf,0,P32d.Distance(P12d));	
##
##Wire1 = BRepBuilderAPI_MakeWire(Edge1,Edge2,Edge3);	
##Wire1.Reverse();	
##PinkFace = BRepBuilderAPI_MakeFace(aFace,Wire1);	
##BRepLib::BuildCurves3d(PinkFace);	



if 'display' in dir():
    display.EraseAll()
    display.DisplayColoredShape(RedFace.Face(),'RED')
    display.DisplayColoredShape(BrownFace.Face(),'BLUE')
    #display.DisplayShape(RedFace_f)
