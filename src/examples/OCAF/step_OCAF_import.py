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

from __future__ import absolute_import

from OCC.XCAFApp import *
from OCC.STEPCAFControl import *
from OCC.TDocStd import *
from OCC.TCollection import *
from OCC.XCAFDoc import *
from OCC.TDF import *
from OCC.TopoDS import *

from OCC import XCAFApp, TDocStd, TCollection,\
    XCAFDoc, BRepPrimAPI, Quantity, TopLoc, gp,\
    TPrsStd, XCAFPrs

from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()

import os, sys
        
#

def step_caf_import(event=None):
    #
    # First open and parse STEP file
    #
    reader = STEPCAFControl_Reader()
    reader.ReadFile(os.path.join(os.path.split(__file__)[0],'test.stp'))
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
    top_label = shape_tool.NewShape() #this is the "root" label for the assembly

    l_Colors = XCAFDoc_DocumentTool().ColorTool(doc.Main())
    #
    shapes = []
    for i in range(1,l_LabelShapes.Length()):
        #print l_LabelShapes.Value(i)
        shape = shape_tool.GetShape(l_LabelShapes.Value(i))
        shapes.append(shape)
        
    aisView = TPrsStd.TPrsStd_AISViewer().New(top_label, display.Context.GetHandle())
    aisPres = TPrsStd.TPrsStd_AISPresentation().Set(top_label, XCAFPrs.XCAFPrs_Driver().GetID())
    aisPres.GetObject().Display(True)
    
    display.Context.UpdateCurrentViewer()
    display.FitAll()
    print shapes
    

def assembly(event=None):
    #
    # Create the TDocStd document
    #
    h_doc = TDocStd.Handle_TDocStd_Document()
    print "Empty Doc?", h_doc.IsNull()
    
    #
    # Create the application
    #
    app = XCAFApp.GetApplication().GetObject()
    app.NewDocument(TCollection.TCollection_ExtendedString("MDTV-CAF"),h_doc)
    
    #
    # Get root assembly
    #
    doc = h_doc.GetObject()
    h_shape_tool = XCAFDoc.XCAFDoc_DocumentTool().ShapeTool(doc.Main())
    l_Colors = XCAFDoc.XCAFDoc_DocumentTool().ColorTool(doc.Main())
    
    shape_tool = h_shape_tool.GetObject()
    colors = l_Colors.GetObject()
    
    top_label = shape_tool.NewShape() #this is the "root" label for the assembly
    
    print "Is Assembly", shape_tool.IsAssembly(top_label) #not yet, 'cos it's empty
    
    #
    #Add some shapes
    #
    box = BRepPrimAPI.BRepPrimAPI_MakeBox(10,20,30).Shape()
    box_label = shape_tool.AddShape(box, False)
    
    cyl = BRepPrimAPI.BRepPrimAPI_MakeCylinder(25,50).Shape()
    cyl_label = shape_tool.AddShape(cyl, False)
    
    #
    #Add components as references to our shape
    #
    tr = gp.gp_Trsf()
    tr.SetTranslation(gp.gp_Vec(100,100,100))
    loc = TopLoc.TopLoc_Location(tr)
    box_comp1 = shape_tool.AddComponent(top_label, box_label, loc)
    
    tr = gp.gp_Trsf()
    tr.SetTranslation(gp.gp_Vec(200,200,200))
    loc = TopLoc.TopLoc_Location(tr)
    box_comp2 = shape_tool.AddComponent(top_label, box_label, loc)
    
    tr = gp.gp_Trsf()
    tr.SetTranslation(gp.gp_Vec(150,200,100))
    loc = TopLoc.TopLoc_Location(tr)
    cyl_comp = shape_tool.AddComponent(top_label, cyl_label, loc)
    
    print "Is Assembly", shape_tool.IsAssembly(top_label) #it is now...
    
    #
    #Add some colors
    #
    red = Quantity.Quantity_Color(Quantity.Quantity_NOC_RED)
    green = Quantity.Quantity_Color(Quantity.Quantity_NOC_GREEN)
    colors.SetColor(cyl_comp, red, XCAFDoc.XCAFDoc_ColorGen)
    colors.SetColor(box_comp2, green, XCAFDoc.XCAFDoc_ColorGen)
    
    #
    # Set up AIS Presentation stuff (I don't understand this, but it kinda works)
    #
    aisView = TPrsStd.TPrsStd_AISViewer().New(top_label, display.Context.GetHandle())
    aisPres = TPrsStd.TPrsStd_AISPresentation().Set(top_label, XCAFPrs.XCAFPrs_Driver().GetID())
    aisPres.GetObject().Display(True)
    display.FitAll()
    
def exit(event=None):
    sys.exit()

if __name__ == '__main__':
    add_menu('step ocaf import')
    add_function_to_menu('step ocaf import', step_caf_import)
    add_function_to_menu('step ocaf import', assembly)
    add_function_to_menu('step ocaf import', exit)
    start_display()

    

