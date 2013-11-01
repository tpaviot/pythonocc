#!/usr/bin/env python

##Copyright 2009-2011 Thomas Paviot (tpaviot@gmail.com)
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

import xmlrpclib
import sys
import pickle
from OCC.TopoDS import *
from OCC.Display.SimpleGui import init_display
display, start_display, add_menu, add_function_to_menu = init_display()

def get_box(event=None):
    shape_factory = xmlrpclib.ServerProxy("http://localhost:8888")
    dumped_box = shape_factory.getBox(10.,10.,10.)
    box = pickle.loads(dumped_box)
    display.DisplayShape(box)

def get_sphere(event=None):
    shape_factory = xmlrpclib.ServerProxy("http://localhost:8888")
    dumped_sphere = shape_factory.getSphere(50.)
    sphere = pickle.loads(dumped_sphere)
    display.DisplayShape(sphere)

def get_surface_from_revolution(event=None):
    shape_factory = xmlrpclib.ServerProxy("http://localhost:8888")    
    dumped_surf = shape_factory.getSurfaceFromRevolution()
    surf = pickle.loads(dumped_surf)
    display.DisplayShape(surf)
    
def exit(event=None):
    sys.exit()
    
if __name__=='__main__':
    add_menu('geometry')
    add_function_to_menu('geometry',get_box)
    add_function_to_menu('geometry',get_sphere)
    add_function_to_menu('geometry',get_surface_from_revolution)
    add_function_to_menu('geometry',exit)
    start_display()
