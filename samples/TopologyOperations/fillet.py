from OCC.gp import *
from OCC.BRepPrimAPI import *
from OCC.BRepFilletAPI import *
from OCC.TopExp import *
from OCC.TopoDS import *
from OCC.TopAbs import *
from OCC.BRepAlgoAPI import *

#
# Modeling algorithms
#
Box = BRepPrimAPI_MakeBox(gp_Pnt(-400,0,0),200,230,180)
box_s = Box.Shape()

##
## 
##
fillet = BRepFilletAPI_MakeFillet(box_s)
##
## Add fillet on each edge
##
Ex = TopExp_Explorer(box_s,TopAbs_EDGE)
while Ex.More():
    Edge =TopoDS().Edge(Ex.Current())
    fillet.Add(20,Edge)
    Ex.Next()


blendedBox = fillet.Shape()

P1 = gp_Pnt(250,150,75)
S1 = BRepPrimAPI_MakeBox(300,200,200)
S1_s = S1.Shape()
S2 = BRepPrimAPI_MakeBox(P1,120,180,70)
S2_s = S2.Shape()
Fuse = BRepAlgoAPI_Fuse(S1_s,S2_s)
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

if 'display' in dir():
    display.EraseAll()
    display.DisplayShape(blendedBox)
    display.DisplayShape(blendedFusedSolids)
    display.FitAll()            
