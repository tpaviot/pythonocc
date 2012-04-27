import locale
from OCC.XCAFApp import *
from OCC.STEPCAFControl import *
from OCC.TDocStd import *
from OCC.TCollection import *
from OCC.XCAFDoc import *
from OCC.TDF import *
from OCC.TopoDS import *

from OCC import XCAFApp, TDocStd, TCollection, XCAFDoc, BRepPrimAPI, Quantity, TopLoc, gp, TPrsStd, XCAFPrs
from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()
from OCC.STEPCAFControl import *
from OCC.XSControl import *
from OCC.STEPControl import *
import os

def step_export_layers_and_colors(event=None):
    '''
    demo showing how to export step files with layers & colors.
    adapted from Bryan's names_shape_demo
    '''
    
    # Create the TDocStd document
    h_doc = TDocStd.Handle_TDocStd_Document()
    print "Empty Doc?", h_doc.IsNull()
    
    # Create the application
    app = XCAFApp.GetApplication().GetObject()
    app.NewDocument(TCollection.TCollection_ExtendedString("MDTV-CAF"),h_doc)
    
    # Get root assembly
    doc = h_doc.GetObject()
    h_shape_tool = XCAFDoc.XCAFDoc_DocumentTool().ShapeTool(doc.Main())
    l_Colors = XCAFDoc.XCAFDoc_DocumentTool().ColorTool(doc.Main())
    l_Layers = XCAFDoc.XCAFDoc_DocumentTool().LayerTool(doc.Main())
    
    shape_tool = h_shape_tool.GetObject()
    colors = l_Colors.GetObject()
    layers = l_Layers.GetObject()
    
    top_label = shape_tool.NewShape() #this is the "root" label for the assembly
    
    print "Is Assembly", shape_tool.IsAssembly(top_label) #not yet, 'cos it's empty
    
    #Add some shapes
    box = BRepPrimAPI.BRepPrimAPI_MakeBox(10,20,30).Shape()
    box_label = shape_tool.AddShape(box, False)
    
    cyl = BRepPrimAPI.BRepPrimAPI_MakeCylinder(25,50).Shape()
    cyl_label = shape_tool.AddShape(cyl, False)
    
    #Add components as references to our shape
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
    
    #Add some colors
    red = Quantity.Quantity_Color(Quantity.Quantity_NOC_RED)
    green = Quantity.Quantity_Color(Quantity.Quantity_NOC_GREEN)
    colors.SetColor(cyl_comp, red, XCAFDoc.XCAFDoc_ColorGen)
    colors.SetColor(box_comp2, green, XCAFDoc.XCAFDoc_ColorGen)
    
    # Set the box on the 'box' layer, the cylinder on the 'cylinder' layer
    layers.SetLayer(box_comp1, TCollection_ExtendedString('BOX'))
    layers.SetLayer(cyl_comp, TCollection_ExtendedString('CYLINDER'))
    
    # Set up AIS Presentation stuff (I don't understand this, but it kinda works)
    aisView = TPrsStd.TPrsStd_AISViewer().New(top_label, display.Context.GetHandle())
    aisPres = TPrsStd.TPrsStd_AISPresentation().Set(top_label, XCAFPrs.XCAFPrs_Driver().GetID())
    aisPres.GetObject().Display(True)
    display.FitAll()
    
    # write the stuff to STEP, with layers & colors
    WS = XSControl_WorkSession()
    writer = STEPCAFControl_Writer( WS.GetHandle(), False )
    writer.Transfer(h_doc, STEPControl_AsIs)
    # workaround for an OCC bug: temporarily changing the locale in order to 
    # avoid issues when exporting, see:
    # http://tracker.dev.opencascade.org/view.php?id=22898
    loc = locale.getlocale()
    locale.setlocale(locale.LC_ALL, 'C')
    pth = '.'
    print 'writing STEP file'
    status = writer.Write(os.path.join(pth, 'step_layers_colors.step'))
    print 'status:', status
    # restoring the old locale
    locale.setlocale(locale.LC_ALL, loc)

def exit(event=None):
    sys.exit()

if __name__ == '__main__':
    add_menu('step ocaf export')
    add_function_to_menu('step ocaf export', step_export_layers_and_colors)
    add_function_to_menu('step ocaf export', exit)
    start_display()
