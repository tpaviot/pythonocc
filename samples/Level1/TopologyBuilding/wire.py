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
import math
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

if 'display' in dir():
    display.DisplayColoredShape(RedWire,'RED')
    display.DisplayColoredShape(YellowWire,'YELLOW')
    display.DisplayColoredShape(WhiteWire,'WHITE')
    display.DisplayShape(LastEdge)
    display.DisplayShape(LastVertex)
