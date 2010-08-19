#! /usr/bin/python

##Copyright 2009-2010 Thomas Paviot (tpaviot@gmail.com)
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

from OCC.TopoDS import *
from OCC.TopTools import *
from OCC.BRepPrimAPI import *
from OCC.BRepTools import *
from OCC.BRep import *
import pickle
from OCC.Utils.Topology import Topo
from OCC.TopLoc import *

# Create shape
box1 = BRepPrimAPI_MakeBox(10.,10.,10.).Shape()

# Dump shape in a string
box_dump_string = pickle.dumps(box1)
print "Box (10,10,10) dump:\n",box_dump_string

#Create another box from the dump
box2 = pickle.loads(box_dump_string)
print "Box sucessfully loaded."
