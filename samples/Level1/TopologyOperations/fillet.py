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
from OCC.BRepPrimAPI import *
from OCC.BRepFilletAPI import *
from OCC.TopExp import *
from OCC.TopoDS import *
from OCC.TopAbs import *
from OCC.BRepAlgoAPI import *

#
# Modeling algorithms
#
Box = BRepPrimAPI_MakeBox(gp_Pnt(-400,0,0),200,230,180).Shape()
#
# 
#
fillet = BRepFilletAPI_MakeFillet(Box)
#
# Add fillet on each edge
#
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

if 'display' in dir():
    display.EraseAll()
    display.DisplayShape(blendedBox)
    display.DisplayShape(blendedFusedSolids)
    display.FitAll()            
