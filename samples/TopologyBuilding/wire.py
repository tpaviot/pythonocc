from OCC.gp import *
from OCC.BRepBuilderAPI import *
import math
#       The red wire is build from a single edge
Elips = gp_Elips(gp_Ax2(gp_Pnt(250,0,0),gp_Dir(1,1,1)),160,90)
Edge1 = BRepBuilderAPI_MakeEdge(Elips,0,math.pi/2)
Edge1_e = Edge1.Edge()
RedWire = BRepBuilderAPI_MakeWire(Edge1_e)
RedWire_w = RedWire.Wire()
print "3"
###       the yellow wire is build from an existing wire and an edge
circle = gp_Circ(gp_Ax2(gp_Pnt(-300,0,0),gp_Dir(1,0,0)),80)
Edge2 = BRepBuilderAPI_MakeEdge(circle,0,math.pi)
Edge2_e = Edge2.Edge()
ExistingWire = BRepBuilderAPI_MakeWire(Edge2_e)
ExistingWire_w = ExistingWire.Wire()
Edge3 = BRepBuilderAPI_MakeEdge(gp_Pnt(-300,0,-80),gp_Pnt(-90,20,-30))
Edge3_e = Edge3.Edge()
MW1 = BRepBuilderAPI_MakeWire(ExistingWire_w,Edge3_e)
##print "1"
if MW1.IsDone():
    YellowWire = MW1.Wire()
###       the white wire is built with an existing wire and 3 edges.
###       we use the methods Add, Edge and Vertex from BRepBuilderAPI_MakeWire.
circle2 = gp_Circ(gp_Ax2(gp_Pnt(0,0,0),gp_Dir(0,1,0)),200)
Edge4 = BRepBuilderAPI_MakeEdge(circle2,0,math.pi)
Edge4_e = Edge4.Edge()
ExistingWire2 = BRepBuilderAPI_MakeWire(Edge4_e)
ExistingWire2_w = ExistingWire2.Wire()
P1 = gp_Pnt(0,0,-200)
P2 = gp_Pnt(5,204,0)
Edge5 = BRepBuilderAPI_MakeEdge(P1,P2)
Edge5_e = Edge5.Edge()
P3 = gp_Pnt(-15,20,15)
Edge6 = BRepBuilderAPI_MakeEdge(P2,P3)
Edge6_e = Edge6.Edge()
P4 = gp_Pnt(15,20,0)
Edge7 = BRepBuilderAPI_MakeEdge(P3,P4)
Edge7_e = Edge7.Edge()
MW = BRepBuilderAPI_MakeWire()
MW.Add(ExistingWire2_w)
MW.Add(Edge5_e)
MW.Add(Edge6_e)
MW.Add(Edge7_e)
if MW.IsDone():
    WhiteWire = MW.Wire()
    LastEdge = MW.Edge()
    LastVertex = MW.Vertex()

if 'display' in dir():
    display.DisplayShape(RedWire_w)
    display.DisplayShape(YellowWire)
    display.DisplayShape(WhiteWire)
    display.DisplayShape(LastEdge)
    display.DisplayShape(LastVertex)
