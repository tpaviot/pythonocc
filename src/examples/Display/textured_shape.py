#!/usr/bin/env python

##Copyright 2009-2011 Thomas Paviot (tpaviot@gmail.com)
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

from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()

from OCC.Graphic3d import *
from OCC.BRepPrimAPI import *
from OCC.Utils.Image import Texture
import os, os.path
#
# First create texture and a material
#
texture_filename = 'ground.bmp'
t = Texture(texture_filename)
m = Graphic3d_MaterialAspect(Graphic3d_NOM_SILVER)
#
# Displays a cylinder with a material and a texture
#
s = BRepPrimAPI_MakeCylinder(60, 200)
display.DisplayShape(s.Shape(),material = m,texture=t)
#
# Display settings
#
display.View_Iso()
display.FitAll()
start_display()

