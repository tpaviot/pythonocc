#!/usr/bin/env python

##Copyright 2009-2011, Bryan Cole (bryancole.cam@googlemail.com)
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

from OCC import BRepPrimAPI, BRepFilletAPI, TNaming,\
    TDocStd, AppStd, TCollection, TDF, BRepAlgoAPI, gp, TopTools,\
    TopoDS, Quantity, Graphic3d, AIS

from OCC.Utils.Topology import Topo

from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()


app = AppStd.AppStd_Application()

h_doc = TDocStd.Handle_TDocStd_Document()
schema = TCollection.TCollection_ExtendedString("MyFormat")
app.NewDocument(schema, h_doc)

doc = h_doc.GetObject()

root = doc.Main()

ts = TDF.TDF_TagSource()


box = BRepPrimAPI.BRepPrimAPI_MakeBox(20.0,20.0,20.0).Shape()

box_label = ts.NewChild(root)
ns_builder = TNaming.TNaming_Builder(box_label)
ns_builder.Generated(box)

topo = Topo(box)

##
##Name all the subshape we *might* want to refer to later
##
for edge in topo.edges():
    sub_label = ts.NewChild(box_label)
    ns_builder = TNaming.TNaming_Builder(sub_label)
    ns_builder.Generated(edge)

#
#Find and Name an edge
#
an_edge = topo.edges().next()

s_label = ts.NewChild(root)
selector = TNaming.TNaming_Selector(s_label)
ret = selector.Select(an_edge, box)
print "selected", ret

#
#now modify the box
#


box2 = BRepPrimAPI.BRepPrimAPI_MakeBox(5.0,10.0,15.0).Shape()

#
#Update the naming with the new box shape
#

ns_builder = TNaming.TNaming_Builder(box_label)
ns_builder.Generated(box2)

h_a = TNaming.Handle_TNaming_NamedShape()
ns_id = TNaming.TNaming_NamedShape().ID()
for i, edge in enumerate(Topo(box2).edges()):
    sub_label = box_label.FindChild(i+1)
    ns_builder = TNaming.TNaming_Builder(sub_label)
    ns_builder.Generated(edge)

#
#Need to build a map covering all the OCAF nodes which might
#contain relevent shapes
#
aMap = TDF.TDF_LabelMap()
aMap.Add(box_label)
itr = TDF.TDF_ChildIterator(box_label, True)
while itr.More():
    sub_label = itr.Value()
    aMap.Add(sub_label)
    itr.Next()

#
#Solve for the selected edge
#   
ok = selector.Solve(aMap)
print "solve OK", ok


#
#Extract the selected edge
#
nt = TNaming.TNaming_Tool()
shape = nt.CurrentShape(selector.NamedShape())

#display them together
display.DisplayShape(shape)

#Make the box transparent, so it's easier to see the selected edge
ctx = display.Context
ais_shape = AIS.AIS_Shape(box2).GetHandle()
ctx.SetTransparency(ais_shape, 0.8, True)
ctx.Display(ais_shape)

start_display()

