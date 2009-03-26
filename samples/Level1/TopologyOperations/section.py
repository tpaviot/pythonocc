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

#
# Create torus
#
Torus = BRepPrimAPI_MakeTorus(120,20).Shape()

V1 = gp_Vec(1,1,1)
radius = 120.0
sections = []
for i in range(-3,4):
    #
    # Create Sphere
    #
    Sphere = BRepPrimAPI_MakeSphere(gp_Pnt(26*3*i,0,0),radius).Shape()
    #
    # Computes Torus/Sphere section
    #
    PerformNow = 0
    section = BRepAlgoAPI_Section(Torus,Sphere,PerformNow)
    section.ComputePCurveOn1(1)
    section.Approximation(TopOpeBRepTool_APPROX)
    section.Build()
    sections.append(section)
    

if 'display' in dir():
    display.EraseAll()
    display.DisplayShape(Torus)
    for section in sections:
        display.DisplayShape(section.Shape())
