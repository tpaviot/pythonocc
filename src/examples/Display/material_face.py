#!/usr/bin/env python

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

from OCC.Graphic3d import *
from OCC.BRepPrimAPI import BRepPrimAPI_MakeBox
from OCC.Utils.Topology import Topo
from OCC.Display.SimpleGui import init_display
display, start_display, add_menu, add_function_to_menu = init_display()

#
# Create a list of 6 materials (1 material for each face)
#
material_list = [Graphic3d_MaterialAspect(Graphic3d_NOM_SILVER),
                 Graphic3d_MaterialAspect(Graphic3d_NOM_BRONZE),
                 Graphic3d_MaterialAspect(Graphic3d_NOM_PLASTIC),
                 Graphic3d_MaterialAspect(Graphic3d_NOM_GOLD),
                 Graphic3d_MaterialAspect(Graphic3d_NOM_COPPER),
                 Graphic3d_MaterialAspect(Graphic3d_NOM_STONE)]
material_iterator = iter(material_list)
#
# Create a box
#
s = BRepPrimAPI_MakeBox(200., 100., 50.).Shape()
#
# Display faces
#
faces = Topo(s).faces()
for face in faces:
    display.DisplayShape(face, material_iterator.next(), update=True)

display.View_Iso()
display.FitAll()
start_display()
