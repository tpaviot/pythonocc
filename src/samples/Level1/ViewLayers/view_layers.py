from OCC.V3d import *
from OCC.Visual3d import *
from OCC.Quantity import *
from OCC.Aspect import *
from OCC.Graphic3d import *

from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()

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
    pth = '../../../../data/images/EDesigner.GIF'
    display.View.SetBackgroundImage(pth)
    display.Repaint()

def set_layer(blah):
    view_mgr = display.View.View().GetObject().ViewManager()
    layer = Visual3d_Layer(view_mgr, Aspect_TOL_OVERLAY, False)
    a,b,c,d = frame.GetScreenRect()
    h,w = display.View.Window().GetObject().Size()
#    layer.SetViewport(h,w)
    #layer.SetViewport(1,1)
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
#    layer.End()

    display.Repaint()



if __name__ == '__main__':
    add_menu('background')
    add_function_to_menu('background', set_background_color )
    #add_function_to_menu('background', set_layer )
    start_display()

