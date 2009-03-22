##Copyright 2009 Thomas Paviot (thomas.paviot@free.fr)
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

from OCC.gp import *
from OCC.BRepPrimAPI import *
from OCC.BRepAlgoAPI import *
from OCC.TopOpeBRepTool import *
from OCC.BRepBuilderAPI import *
from OCC.Geom import *

#
# Param
#
Zmin = -100
Zmax = 100
deltaZ = 5
#
# Create the shape to slice
#
shape = BRepPrimAPI_MakeSphere (60.).Shape()
#shape = BRepPrimAPI_MakeBox(200.,200.,Zmax).Shape()
#
# Define
#
D = gp_Dir(0.,0.,1.) # the z direction
sections = []
for z in range(Zmin,Zmax,deltaZ):
    #
    # Create Plane
    #
    P = gp_Pnt(0,0,z)
    Pln = gp_Pln(P,D)
    face = BRepBuilderAPI_MakeFace(Pln).Shape()
    #
    # Computes Shape/Plane intersection
    #
    section = BRepAlgoAPI_Section(shape,face)
    if section.IsDone():
        sections.append(section)
    

if 'display' in dir():
    display.EraseAll()
    display.DisplayShape(shape)
    for section in sections:
        display.DisplayShape(section.Shape())
