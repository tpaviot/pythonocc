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

from OCC.XCAFApp import *
from OCC.STEPCAFControl import *
from OCC.TDocStd import *
from OCC.TCollection import *
from OCC.XCAFDoc import *
from OCC.TDF import *
from OCC.TopoDS import *

#
# First open and parse STEP file
#
reader = STEPCAFControl_Reader()
reader.ReadFile('test.stp')
#
# Create the TDocStd document
#
h_doc = Handle_TDocStd_Document()
#
# Create the application: really *awfull* way to do that
#
#app = Handle_XCAFApp_Application().GetObject()
app = GetApplication().GetObject()
app.NewDocument(TCollection_ExtendedString("MDTV-CAF"),h_doc)
#
# Transfer
#
if not reader.Transfer(h_doc):
    print "Error"
#
# Get root assembly
#
doc = h_doc.GetObject()
h_shape_tool = XCAFDoc_DocumentTool().ShapeTool(doc.Main())
shape_tool = h_shape_tool.GetObject()
# get the top level shapes
l_LabelShapes = TDF_LabelSequence()
shape_tool.GetShapes(l_LabelShapes)

l_Colors = XCAFDoc_DocumentTool().ColorTool(doc.Main())
#
shapes = []
for i in range(1,l_LabelShapes.Length()):
    #print l_LabelShapes.Value(i)
    shape = shape_tool.GetShape(l_LabelShapes.Value(i))
    shapes.append(shape)
print shapes

    

