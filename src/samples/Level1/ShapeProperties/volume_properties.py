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
from OCC.GProp import *
from OCC.BRepGProp import *

from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()

from OCC.gp import *

def cube_inertia_properties(event=None):
    # Create and display cube
    cube_shape = BRepPrimAPI_MakeBox(50.,50.,50.).Shape()
    ais_boxshp = display.DisplayShape(cube_shape)
    # Compute inertia properties
    props = GProp_GProps()
    BRepGProp().VolumeProperties(cube_shape,props)
    # Get inertia properties
    mass = props.Mass()
    cog = props.CentreOfMass()
    matrix_of_intertia = props.MatrixOfInertia()
    # Display inertia properties
    print "Cube mass=%s"%mass    
    print "Center of mass:%s"%cog.Coord().__str__()
    # Display matrix 
    
    
if __name__ == '__main__':
    add_menu('properties')
    add_function_to_menu('properties', cube_inertia_properties)
    start_display()
