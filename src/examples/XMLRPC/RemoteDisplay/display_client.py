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
import pickle
import socket
from OCC.TopoDS import *
from OCC.BRepPrimAPI import *
from OCC.gp import *

# Connect the graphic server
try:
    remote_display = xmlrpclib.ServerProxy("http://localhost:8888")
    remote_display.Ping()
    print "Remote graphic display available."
except socket.error:
    print "Server unreachable. Display disabled"
    class FakeDisplay:
        def SendShapeString(self, *kargs):
            print "Trying to display shape but server is down."
    remote_display = FakeDisplay()

def Display(shape):
    string_to_send = pickle.dumps(shape)
    remote_display.SendShapeString(string_to_send)
    print "Shape %s send to display server"%shape
# Send a simple box to display to the server    
#box_s = BRepPrimAPI_MakeBox(10.,20.,30).Shape()
box_s = BRepPrimAPI_MakeSphere(gp_Pnt(), 2).Shape()
Display(box_s)
raw_input("Press a key when you're bored by this demo.")

