#!/usr/bin/env python

##Copyright 2009-2010 Thomas Paviot (tpaviot@gmail.com)
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

from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()

from OCC.Graphic3d import *
from OCC.BRepPrimAPI import *
from OCC.gp import *

#
# Displays a cylinder with a material
#
material = Graphic3d_MaterialAspect(Graphic3d_NOM_SILVER)
s = BRepPrimAPI_MakeCylinder(60, 200)
display.DisplayShape(s.Shape(),material)
#
# Displays a cylinder with a material and a texture
#
ax = gp_Ax2(gp_Pnt(0, 200, 0), gp_Dir(0, 0, 100))
s = BRepPrimAPI_MakeCylinder(ax, 60, 200)
display.DisplayShape(s.Shape())

display.View_Iso()
display.FitAll()
start_display()

