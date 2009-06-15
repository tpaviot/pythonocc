#!/usr/bin/env python

##Copyright 2009 Thomas Paviot (tpaviot@gmail.com)
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

from OCC.BRepPrimAPI import *
from OCC.Display.wxSamplesGui import display
from OCC.gp import *
from OCC.TopLoc import *
from OCC.AIS import *

ais_boxshp=None

def build_shape():
    global ais_boxshp
    if not isinstance(ais_boxshp,Handle_AIS_Shape):
        boxshp = BRepPrimAPI_MakeBox(50.,50.,50.).Shape()
        ais_boxshp = display.DisplayShape(boxshp)
    return ais_boxshp
        
def rotating_cube_1_axis(event=None):
    build_shape()
    Ax1 = gp_Ax1(gp_Pnt(0,0,0),gp_Dir(0,0,1))
    aCubeTrsf = gp_Trsf()
    angle = 0.0
    for i in range(2000):
        aCubeTrsf.SetRotation(Ax1,angle)
        aCubeToploc = TopLoc_Location(aCubeTrsf)
        display.Context.SetLocation(ais_boxshp,aCubeToploc)
        display.Context.UpdateCurrentViewer()
        angle += 0.001

def rotating_cube_2_axis(event=None):
    build_shape()
    Ax1 = gp_Ax1(gp_Pnt(0,0,0),gp_Dir(0,0,1))
    Ax2 = gp_Ax1(gp_Pnt(0,0,0),gp_Dir(0,1,0))
    aCubeTrsf = gp_Trsf()
    aCubeTrsf2 = gp_Trsf()
    angle = 0.0
    angle2 = 0.0
    for i in range(2000):
        aCubeTrsf.SetRotation(Ax1,angle)
        aCubeTrsf2.SetRotation(Ax2,angle)
        aCubeToploc = TopLoc_Location(aCubeTrsf*aCubeTrsf2)
        display.Context.SetLocation(ais_boxshp,aCubeToploc)
        display.Context.UpdateCurrentViewer()
        angle += 0.001
    
if __name__ == '__main__':
    from OCC.Display.wxSamplesGui import start_display, add_function_to_menu, add_menu
    add_menu('animation')
    add_function_to_menu('animation', rotating_cube_1_axis)
    add_function_to_menu('animation', rotating_cube_2_axis)
    start_display()
