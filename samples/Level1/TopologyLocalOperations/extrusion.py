from OCC.gp import *
from OCC.BRepPrimAPI import *
from OCC.BRepBuilderAPI import *
from OCC.TopExp import *
from OCC.TopAbs import *
import OCC.TopoDS
from OCC.BRep import *
from OCC.Geom import *
from OCC.GCE2d import *
from OCC.Geom2d import *
from OCC.BRepLib import *
from OCC.BRepFeat import *
#
# Make a box
#
Box = BRepPrimAPI_MakeBox(400.,250.,300.)
S = Box.Shape()
#
# Choose the first Face of the box
#
Ex = TopExp_Explorer()
Ex.Init(S,TopAbs_FACE)
Ex.Next()
F = TopoDS.TopoDS().Face(Ex.Current())
surf = BRep_Tool().Surface(F)
#
# Make a plane from this face
#
Pl = Handle_Geom_Plane().DownCast(surf)
Pln = Pl.GetObject()
# 
# Get the normal of this plane. This will be the direction of extrusion.
#
D = Pln.Axis().Direction()
#
# Inverse normal
#
D.Reverse()
#
# Create the 2D planar sketch
#
MW = BRepBuilderAPI_MakeWire()
p1 = gp_Pnt2d(200.,-100.)
p2 = gp_Pnt2d(100.,-100.)
aline = GCE2d_MakeLine(p1,p2).Value()
Edge1 = BRepBuilderAPI_MakeEdge(aline,surf,0.,p1.Distance(p2))
MW.Add(Edge1.Edge())
p1 = p2
p2 = gp_Pnt2d(100.,-200.)
aline = GCE2d_MakeLine(p1,p2).Value()
Edge2 = BRepBuilderAPI_MakeEdge(aline,surf,0.,p1.Distance(p2))
MW.Add(Edge2.Edge())
p1 = p2
p2 = gp_Pnt2d(200.,-200.)
aline = GCE2d_MakeLine(p1,p2).Value()
Edge3 = BRepBuilderAPI_MakeEdge(aline,surf,0.,p1.Distance(p2))
MW.Add(Edge3.Edge())
p1 = p2
p2 = gp_Pnt2d(200.,-100.)
aline = GCE2d_MakeLine(p1,p2).Value()
Edge4 = BRepBuilderAPI_MakeEdge(aline,surf,0.,p1.Distance(p2)) 
MW.Add(Edge4.Edge())
#
# Build Face from Wire. NB: a face is required to generate a solid.
#
MKF = BRepBuilderAPI_MakeFace()
MKF.Init(surf,False)
MKF.Add(MW.Wire())
FP = MKF.Face()
BRepLib().BuildCurves3d(FP)
MKP = BRepFeat_MakePrism(S,FP,F,D,0,True)
MKP.Perform(200.)
res1 = MKP.Shape()
	

if 'display' in dir():
    display.EraseAll()
    #display.DisplayColoredShape(S,'GREEN')
    display.DisplayColoredShape(res1,'BLUE')
