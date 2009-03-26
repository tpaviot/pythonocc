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
from OCC.BRepAlgoAPI import *
from OCC.BRepFilletAPI import *
from OCC.TopExp import *
from OCC.TopoDS import *
from OCC.TopAbs import *
from OCC.TColgp import *
import math
#
# Create Box
#
Box = BRepPrimAPI_MakeBox(200,200,200).Shape()
#
# Fillet
#
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
#
# Create Cylinder
#
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

if 'display' in dir():
    import time
    display.EraseAll()
    display.DisplayShape(Box)
    time.sleep(2)
    display.EraseAll()
    display.DisplayShape(evolvedBox)    
    display.DisplayShape(LawEvolvedBox)
