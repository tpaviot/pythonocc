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
    TopoDS, Quantity, Graphic3d, AIS

from OCC.Utils.Topology import Topo

from OCC.Display.wxSamplesGui import display, start_display


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

