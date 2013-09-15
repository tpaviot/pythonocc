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
from OCC.Visualization import *

# First create a simple shape to export
s1 = BRepPrimAPI_MakeSphere(2).Shape()
s2 = BRepPrimAPI_MakeBox(1,2,3).Shape()
s3 = BRepPrimAPI_MakeTorus(3,1).Shape()

Tesselator(s1).ExportShapeToX3D("sphere.x3d")
Tesselator(s2).ExportShapeToX3D("box.x3d")
Tesselator(s3).ExportShapeToX3D("torus.x3d")


