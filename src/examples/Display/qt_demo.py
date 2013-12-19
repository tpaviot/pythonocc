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

from OCC.BRepPrimAPI import BRepPrimAPI_MakeCylinder
from OCC.Display.SimpleGui import init_display

display, start_display, add_menu, add_function_to_menu = init_display('qt')


def simple_test(event=None):
    display.Test()


def simple_cylinder(event=None):
    s = BRepPrimAPI_MakeCylinder(60., 200.)
    display.DisplayShape(s.Shape(), update=True)

# set up menus
add_menu('qt tests')
add_function_to_menu('qt tests', simple_test)
add_function_to_menu('qt tests', simple_cylinder)

#
# Display settings
#
start_display()
