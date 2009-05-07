#!/usr/bin/env python

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

import xmlrpclib
import pickle
import socket
from OCC.TopoDS import *
from OCC.BRepPrimAPI import *

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

# Send a simple box to display to the server    
box_s = BRepPrimAPI_MakeBox(10.,20.,30).Shape()
string_to_send = pickle.dumps(box_s)
remote_display.SendShapeString(string_to_send)
