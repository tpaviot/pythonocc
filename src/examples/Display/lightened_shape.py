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

from OCC.Graphic3d import Graphic3d_MaterialAspect, Graphic3d_NOM_SILVER
from OCC.V3d import V3d_AmbientLight, V3d_SpotLight
from OCC.BRepPrimAPI import BRepPrimAPI_MakeCylinder
from OCC.Quantity import Quantity_NOC_YELLOW, Quantity_NOC_GREEN

from OCC.Display.SimpleGui import init_display
display, start_display, add_menu, add_function_to_menu = init_display()
#
# Get viewer
#
viewer_handle = display.GetViewer()
viewer = viewer_handle.GetObject()
#
# First remove all lights from current viewer
#
viewer.InitActiveLights()
active_light = viewer.ActiveLight()
viewer.DelLight(active_light)
# Create a red ambient light
ambient_light = V3d_AmbientLight(viewer_handle, Quantity_NOC_YELLOW)
viewer.SetLightOn(ambient_light.GetHandle())
# Create a green spot light
spot_light1 = V3d_SpotLight(viewer_handle, 100., 100., 100.)
spot_light1.SetTarget(0., 0., 0.)
spot_light1.SetColor(Quantity_NOC_GREEN)
viewer.SetLightOn(spot_light1.GetHandle())
#
# Displays a simple box with material
#
s = BRepPrimAPI_MakeCylinder(50., 50.).Shape()
# Display shapes
material = Graphic3d_MaterialAspect(Graphic3d_NOM_SILVER)
display.DisplayShape(s, material)
#
# Display settings and display loop
#
display.View_Iso()
display.FitAll()
start_display()
