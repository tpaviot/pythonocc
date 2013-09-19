##Copyright 2009-2013 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU Lesser General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU Lesser General Public License for more details.
##
##You should have received a copy of the GNU Lesser General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

from OCC.BRepPrimAPI import *
from OCC.BRep import *
from OCC.BRepTools import *
from OCC.TopoDS import *
from OCC.Visualization import *

# First create a set of simple shapes to export
s1 = BRepPrimAPI_MakeSphere(2).Shape()
s2 = BRepPrimAPI_MakeBox(1,2,3).Shape()
s3 = BRepPrimAPI_MakeTorus(3,1).Shape()

Tesselator(s1).ExportShapeToX3D("red_sphere.x3d",1,0,0)
Tesselator(s2).ExportShapeToX3D("blue_box.x3d",0,0,1)
Tesselator(s3).ExportShapeToX3D("torus.x3d")

# then try the exporter for something bigger
cylinder_head = TopoDS_Shape()
builder = BRep_Builder()
#BRepTools_Read(cylinder_head,'../data/brep/Pump_Bottom.brep',builder)
BRepTools_Read(cylinder_head,'../data/brep/15_cylinder_head.brep',builder)
Tesselator(cylinder_head).ExportShapeToX3D("cylinder_head.x3d")

