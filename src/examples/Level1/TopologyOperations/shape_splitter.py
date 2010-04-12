##Copyright 2010 Thomas Paviot (tpaviot@gmail.com)
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

from OCC.GEOMAlgo import GEOMAlgo_Splitter
from OCC.BRepBuilderAPI import BRepBuilderAPI_MakeFace
from OCC.BRepPrimAPI import *
from OCC.gp import *
from OCC.TopoDS import *
from OCC.TopTools import *

# Create the shape to be splitted. S1 is a TopoDS_Shape object
S1 = BRepPrimAPI_MakeBox(10,20,30).Shape()

# Create the face to be used as the tool
P = gp_Pnt(5,10,15)
D = gp_Dir(gp_Vec(0,0,1))
pln = gp_Pln(P,D)
tool_face = BRepBuilderAPI_MakeFace(pln,-20,20,-20,20).Face()

# Definition of the splitter
splitter = GEOMAlgo_Splitter()
splitter.AddTool(tool_face)
splitter.AddShape(S1)
# Perform split
splitter.Perform()
# Get resulting shapes
shp_result = splitter.Shape()

# Display
from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()
# Before split
display.DisplayColoredShape(S1,'RED')
display.DisplayColoredShape(tool_face,'BLUE')
# Result
display.DisplayShape(shp_result)
start_display()