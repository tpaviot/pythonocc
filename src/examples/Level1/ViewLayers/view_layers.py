#!/usr/bin/env python

##Copyright 2009-2011 Jelle Feringa (jellefering@gmail.com)
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

#===PLEASE NOTE==
# WORK IN PROGRESS!!!
# THIS EXAMPLE DOES NOT WORK FOR THE MOMENT
# MORE OF A PLACEHOLDER OF THINGS TO COME
#===PLEASE NOTE==

from OCC.Visual3d import *
from OCC.Quantity import *
from OCC.Aspect import *
from OCC.Graphic3d import *

from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()

import time

def set_background_color(event=None):
    clr = display.View.BackgroundColor()
    color_alice = Quantity_Color(Quantity_NOC_ALICEBLUE)
    color_cyan = Quantity_Color(Quantity_NOC_CYAN1)
    color_black = Quantity_Color(Quantity_NOC_BLACK)

    display.View.SetBackgroundColor(color_alice)
    print 'Background color set to ALICEBLUE'
    display.Repaint()
    time.sleep(1)
    display.View.SetBackgroundColor(color_black)
    print 'Background color set to BLACK'
    display.Repaint()
    time.sleep(1)
    display.View.SetBackgroundColor(color_cyan)
    print 'Background color set to CYAN1'
    display.Repaint()
    time.sleep(1)
    print 'resetting the color to original color'
    display.View.SetBackgroundColor(clr)

def set_background_image(event=None):
    image = 'water_stained_brickwork.bmp'
    display.SetBackgroundImage(image)

def set_layer(event=None):
    view = display.View.View().GetObject()
    window = view.Window().GetObject()
    w,h = window.Size()
    w,h = 20,20
    print 'h,w',h,w

    view_mgr = view.ViewManager()
    layer = Visual3d_Layer(view_mgr, Aspect_TOL_OVERLAY, True)
    #a,b,c,d = layer.GetScreenRect()
    layer.SetViewport(w,h)
    layer.SetOrtho(0,w,h,0)

    layer.Clear()
    layer.Begin()
    
   
    print "ok"
    layer.SetTextAttributes( Graphic3d_NOF_ASCII_ITALIC_COMPLEX, Aspect_TODT_NORMAL, Quantity_Color(Quantity_NOC_ORANGE ))
    print "ok2"
    layer.DrawText('PythonOCC R*cks!!!',0,0,5)
    print "ok3"
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
    display.Test()
    display.Repaint()



if __name__ == '__main__':
    set_layer()
    add_menu('background')
    add_function_to_menu('background', set_background_image )
    add_function_to_menu('background', set_background_color )
    add_function_to_menu('background', set_layer )
    start_display()

