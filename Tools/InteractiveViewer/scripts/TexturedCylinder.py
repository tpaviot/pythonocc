#!C:/Python24/Python.exe
# -*- coding: utf-8 -*-
## (c) Copyright 2008 Andrew Haywood
## 
## Released into the Public Domain
##

'''
Simple script that can be used to show some 
basic geometry creation in the InteractiveViewer
'''

__author__ = "Thomas Paviot"
__date__ = "2 December 2008"

from OCC.Graphic3d import *
from OCC.BRepPrimAPI import *
from OCC.gp import *
from OCC.Utils.Image import Texture
import os, os.path
#
# Erase disply
#
display.EraseAll()
#
# First create texture and a material
#
texture_filename = os.path.join(os.getcwd(),'scripts','lichen.jpg')
print texture_filename
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


