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

display.EraseAll()

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
display.Zoom_FitAll()


