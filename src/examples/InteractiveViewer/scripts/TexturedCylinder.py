# -*- coding: utf-8 -*-
## (c) Copyright 2008 Andrew Haywood

__author__ = "Thomas Paviot"
__date__ = "2 December 2008"

from OCC.Graphic3d import Graphic3d_NOM_SILVER, Graphic3d_MaterialAspect
from OCC.BRepPrimAPI import BRepPrimAPI_MakeCylinder
from OCC.Utils.Image import Texture
import os
import os.path
#
# Erase disply
#
display.EraseAll()
#
# First create texture and a material
#
texture_filename = os.path.join(os.getcwd(), 'scripts', 'ground.bmp')
t = Texture(texture_filename)
m = Graphic3d_MaterialAspect(Graphic3d_NOM_SILVER)
#
# Displays a cylinder with a material and a texture
#
s = BRepPrimAPI_MakeCylinder(60, 200)
display.DisplayShape(s.Shape(), material=m, texture=t)
#
# Display settings
#
display.View_Iso()
display.FitAll()
