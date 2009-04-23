##Copyright (c) 2009, Bryan Cole
##All rights reserved.
##
##Redistribution and use in source and binary forms, with or without
##modification, are permitted provided that the following conditions are met:
##    * Redistributions of source code must retain the above copyright
##      notice, this list of conditions and the following disclaimer.
##    * Redistributions in binary form must reproduce the above copyright
##      notice, this list of conditions and the following disclaimer in the
##      documentation and/or other materials provided with the distribution.
##    * Neither the name of the <organization> nor the
##      names of its contributors may be used to endorse or promote products
##      derived from this software without specific prior written permission.
##
##THIS SOFTWARE IS PROVIDED BY Bryan Cole ''AS IS'' AND ANY
##EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
##WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
##DISCLAIMED. IN NO EVENT SHALL Bryan Cole BE LIABLE FOR ANY
##DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
##(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
##LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
##ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
##(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
##SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

from OCC import BRepPrimAPI, BRepFilletAPI, TNaming,\
    TDocStd, AppStd, TCollection, TDF, BRepAlgoAPI, gp, TopTools,\
    TopoDS

from OCC.Utils.Topology import Topo

import itertools
import os

from OCC.Display.wxSamplesGui import display, start_display

def print_children(label):
    tool = TDF.TDF_Tool()
    itr = TDF.TDF_ChildIterator(label, True)
    while itr.More():
        val = itr.Value()
        output = TCollection.TCollection_AsciiString()
        tool.Entry(val, output)
        entry = output.ToCString()
        print "entry", entry
        itr.Next()
    print "end iteration"

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

ns_builder = TNaming.TNaming_Builder(box_label)
ns_builder.Generated(box2)

h_a = TNaming.Handle_TNaming_NamedShape()
ns_id = TNaming.TNaming_NamedShape().ID()
for i, edge in enumerate(Topo(box2).edges()):
    sub_label = box_label.FindChild(i+1)
    ns_builder = TNaming.TNaming_Builder(sub_label)
    ns_builder.Generated(edge)


aMap = TDF.TDF_LabelMap()
aMap.Add(box_label)
itr = TDF.TDF_ChildIterator(box_label, True)
while itr.More():
    sub_label = itr.Value()
    aMap.Add(sub_label)
    itr.Next()
    
ok = selector.Solve(aMap)
print "solve OK", ok

nt = TNaming.TNaming_Tool()
shape = nt.CurrentShape(selector.NamedShape())

#edge = TopoDS.TopoDS().Edge(shape)

#face = Topo(box2).faces_from_edge(edge).next()

#chamf = BRepFilletAPI.BRepFilletAPI_MakeChamfer(box2)
#chamf.Add(3,3,edge,face)

display.DisplayShape(shape)
display.DisplayShape(box2)
start_display()


import sys
sys.exit(0)

cut_tool = BRepPrimAPI.BRepPrimAPI_MakeBox(gp.gp_Pnt(6,6,6),
                                           5.,5.,5.).Shape()
                                           
#tool_label = ts.NewChild(root)
#ns_builder = TNaming.TNaming_Builder(tool_label)
#ns_builder.Generated(cut_tool)
#
#topo = Topo(cut_tool)
#for edge in topo.edges():
#    sub_label = ts.NewChild(tool_label)
#    ns_builder = TNaming.TNaming_Builder(sub_label)
#    ns_builder.Generated(edge)


                                           
bop = BRepAlgoAPI.BRepAlgoAPI_Cut(box, cut_tool)
cut_shape = bop.Shape()

cut_label = ts.NewChild(root)
ns_builder = TNaming.TNaming_Builder(cut_label)
ns_builder.Modify(box, cut_shape)

#if bop.HasModified():
#    mod_label = ts.NewChild(cut_label)
#    ns_builder = TNaming.TNaming_Builder(mod_label)
#    for edge in Topo(cut_shape).edges():
#        modified = bop.Modified(edge)
#        itr = TopTools.TopTools_ListIteratorOfListOfShape(modified)
#        while itr.More():
#            this = itr.Value()
#            ns_builder.Modify(edge, modified)
#            print "modify", edge, modified
#            itr.Next()
#            
#if bop.HasGenerated():
#    mod_label = ts.NewChild(cut_label)
#    ns_builder = TNaming.TNaming_Builder(mod_label)
#    for edge in Topo(cut_shape).edges():
#        modified = bop.Generated(edge)
#        itr = TopTools.TopTools_ListIteratorOfListOfShape(modified)
#        while itr.More():
#            this = itr.Value()
#            ns_builder.Modify(edge, modified)
#            print "generated", edge, modified
#            itr.Next()


#
#Chamfer selected edge
#



#display.DisplayShape(bop)
#start_display()
