#!/usr/bin/env python

##Copyright 2009-2011 Thomas Paviot (tpaviot@gmail.com) & Jelle Feringa (jelleferinga@gmail.com)
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

'''

example adapted from code posted by Fotios:
http://www.opencascade.org/org/forum/thread_17520/

'''

from OCC.BRepPrimAPI import *
from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()

from OCC.AIS import *
from OCC.Visual3d import *
from OCC.Graphic3d import *
from OCC.Aspect import *

# construct a primitive
box = BRepPrimAPI_MakeBox(1,1,1).Shape()
#===============================================================================
# This is how to set the spherical dynamic texcoord generation in the view
#===============================================================================
view = display.View.View().GetObject()
vw_mng = view.ViewManager()

# build enviroment texture
texture = Graphic3d_TextureEnv(vw_mng,
                               Graphic3d_NOT_ENV_CLOUDS
                               )

display.View.SetTextureEnv(texture.GetHandle())
display.View.Redraw()
#===============================================================================
# And this is hot to enable spherical dynamic texture to an object 
#===============================================================================

mat_asp = Graphic3d_MaterialAspect(Graphic3d_NOM_SILVER)
mat_asp.SetEnvReflexion(1)
mat_asp.SetReflectionModeOn(True)
mat_asp.SetShininess(1)
mat_asp.SetSpecular(1)

box_ais = display.DisplayShape(box, mat_asp).GetObject()
attributes = box_ais.Attributes().GetObject()
shd_asp = attributes.ShadingAspect().GetObject()
shd_asp.SetMaterial(mat_asp, Aspect_TOFM_FRONT_SIDE)
box_ais.Redisplay(False)

start_display()
