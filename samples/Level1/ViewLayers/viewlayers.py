from OCC.V3d import *
from OCC.Visual3d import *
from OCC.Quantity import *
from OCC.Aspect import *

from OCC.Display.wxSamplesGui import *
from OCC.Graphic3d import *

import time

def set_background_color(blah):
    clr = display.View.BackgroundColor()
    display.View.SetBackgroundColor(Quantity_NOC_ALICEBLUE)
    display.Repaint()
    time.sleep(1)
    display.View.SetBackgroundColor(Quantity_NOC_BLACK)
    display.Repaint()
    time.sleep(1)
    display.View.SetBackgroundColor(Quantity_NOC_CYAN1)
    display.Repaint()
    time.sleep(1)
    display.View.SetBackgroundColor(clr)

def set_background_image(blah):
    pth = '../../../data/images/EDesigner.GIF'
    display.View.SetBackgroundImage(pth)
    display.Repaint()

def set_layer(blah):
    import ipdb; ipdb.set_trace()
#    view_mgr = display.View.Viewer().GetObject().Viewer()
    view_mgr = display.View.View().GetObject().ViewManager()
    layer = Visual3d_Layer(view_mgr, Aspect_TOL_UNDERLAY, True)
    a,b,c,d = frame.GetScreenRect()
    #layer.SetViewport(c,d)
    layer.Begin()

    layer.SetTextAttributes( Graphic3d_NOF_ASCII_ITALIC_COMPLEX, Aspect_TODT_NORMAL, Quantity_Color(Quantity_NOC_ORANGE ))
    layer.DrawText('PythonOCC R*cks!!!',0,0,5)
#    layer.BeginPolygon()
#    layer.SetColor (Quantity_Color(Quantity_NOC_BLACK))
#    layer.AddVertex (-1,1)
#    layer.AddVertex (1,1)
#    
#    layer.SetColor (Quantity_Color(Quantity_NOC_WHITE))
#    layer.AddVertex (1,-1)
#    layer.AddVertex (-1,-1)
#    layer.ClosePrimitive()
    layer.End()
    display.Repaint()



if __name__ == '__main__':
    add_menu('background')
    add_function_to_menu('background', set_background_color )
    add_function_to_menu('background', set_layer )
    start_display()


#You may want to extend pre-built options, and for instance add an image to a bottom-right corner to add your company logo.
#
#* Gradient background *
#This is a frequently used background style in CAD applications. Open CASCADE does not offer a direct API to set it, but it can be implemented. The following is an excerpt from my extension of DRAWEXE:
#
#static void UpdateGradientBackground (const Handle(Visual3d_Layer)& theLayer,
#const Quantity_Color& theTopColor,
#const Quantity_Color& theBottomColor)
#{
#int aWidth = ..., aHeight = ...; //e.g. QWidget::width() and height() for Qt-based apps
#theLayer->Clear(); //make sure we draw on a clean layer
#theLayer->Begin();
#theLayer->SetViewport (aWeight, aHeight);
#//now draw a polygon using top and bottom colors
#//remember that default boundary is [-1,1;-1,1] and origin is in the left bottom corner
#
#//check position for the middle color - if transition should be non-uniform then
#//additional points should be inserted and techiques changes - 2 polygons instead of 1
#theLayer->BeginPolygon();
#theLayer->SetColor (theTopColor);
#theLayer->AddVertex (-1,1);
#theLayer->AddVertex (1,1);
#
#theLayer->SetColor (theBottomColor);
#theLayer->AddVertex (1,-1);
#theLayer->AddVertex (-1,-1);
#theLayer->ClosePrimitive();
#theLayer->End();
#}
#
#static int VSetBgColor (Draw_Interpretor& di, Standard_Integer argc, const char** argv)
#{
#Handle(V3d_View) V3dView = ViewerTest::CurrentView();
#if ( V3dView.IsNull() ) return 1;
#
#static Handle(Visual3d_Layer) aLayer;
#
#if (argc == 4) {
#if (!aLayer.IsNull()) {
#//switch to a single color mode
#aLayer->Destroy(); //explicit destruction is required as destructor
#// will not be called (one reference remains in Visual3d_ViewManager)
#aLayer.Nullify();
#}
#V3dView->SetBackgroundColor (Quantity_Color (atof(argv[1]), atof(argv[2]), atof(argv[3]), Quantity_TOC_RGB));
#} else if (argc == 7) {
#Quantity_Color aTopColor (atof(argv[1]), atof(argv[2]), atof(argv[3]), Quantity_TOC_RGB);
#Quantity_Color aBottomColor (atof(argv[4]), atof(argv[5]), atof(argv[6]), Quantity_TOC_RGB);
#if (aLayer.IsNull()) {
#Standard_Boolean aSizeDependant = Standard_True; //each window to have particular mapped layer?
#aLayer = new Visual3d_Layer (V3dView->Viewer()->Viewer(),
#Aspect_TOL_UNDERLAY, aSizeDependant);
#}
#UpdateGradientBackground(aLayer, aTopColor, aBottomColor);
#} else {
#di << "Usage : " << argv[0] << " {color(R G B) | top_color(R G B) bottom_color(R G B)} \n";
#return 1;
#}
#
#return 0;
#}
