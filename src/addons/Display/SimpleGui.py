#!/usr/bin/env python

##Copyright 2009 Jelle Feringa (jelleferinga@gmail.com)
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

# First check which GUI library to use

# Check wxPython
try:
    import wx
    HAVE_WX = True
except:
    HAVE_WX = False
# Check PyQt
try:
    from PyQt4 import QtCore, QtGui
    HAVE_QT = True
except:
    HAVE_QT = False
# Check python-xlib
try:
    from Xlib import display as display_xlib
    from Xlib import X
    HAVE_XLIB = True
except:
    HAVE_XLIB = False
import sys

from OCC import VERSION

# wxPython based simple GUI
if HAVE_WX:
    from wxDisplay import wxViewer3d
    class AppFrame(wx.Frame):
        def __init__(self, parent):
            wx.Frame.__init__(self, parent, -1, "pythonOCC-%s 3d viewer"%VERSION, style=wx.DEFAULT_FRAME_STYLE,size = (640,480))
            self.canva = wxViewer3d(self)      
            self.menuBar = wx.MenuBar()
            self._menus = {}
            self._menu_methods = {}
            
        def add_menu(self, menu_name):
            _menu = wx.Menu()
            self.menuBar.Append(_menu, "&"+menu_name)
            self.SetMenuBar(self.menuBar)
            self._menus[menu_name]=_menu
    
        def add_function_to_menu(self, menu_name, _callable):
            # point on curve
            _id = wx.NewId()
            assert callable(_callable), 'the function supplied isnt callable'
            try:
                self._menus[menu_name].Append(_id, _callable.__name__.replace('_', ' ').lower())
            except KeyError:
                raise ValueError, 'the menu item %s doesnt exist' % (menu_name) 
            self.Bind(wx.EVT_MENU, _callable, id=_id)
    app = wx.PySimpleApp()
    wx.InitAllImageHandlers()
    frame = AppFrame(None)
    frame.Show(True)
    wx.SafeYield()
    frame.canva.InitDriver()
    app.SetTopWindow(frame)
    display = frame.canva._display
    display.SetBackgroundImage("./bg.bmp")
    def add_menu(*args, **kwargs):
        frame.add_menu(*args, **kwargs)
    def add_function_to_menu(*args, **kwargs):
        frame.add_function_to_menu(*args, **kwargs)
    def start_display():
        global app
        app.MainLoop()
    
# PyQt based simple GUI
elif HAVE_QT:
    print "Qt based"
# python-xlib based simple GUI
elif HAVE_XLIB:
    from XDisplay import XOCCWindow
    w = XOCCWindow(display_xlib.Display())
    display = w.occviewer
    # set background image
    display.SetBackgroundImage("carrelage1.gif")
    def add_menu(*args, **kwargs):
        print args#pass#frame.add_menu(*args, **kwargs)
    def add_function_to_menu(menu_title, function):
        #print args
        w.register_function(function)#functions.append(args[1])#pass#frame.add_function_to_menu(*args, **kwargs)
    def start_display():        
        w.MainLoop()
else:
    print "No compliant GUI library found. You must have either wxPython, PyQt or python-xlib installed."
    sys.exit(0)
    
if __name__ == '__main__':
    from OCC.BRepPrimAPI import *
    def sphere(event=None):
        display.DisplayShape(BRepPrimAPI_MakeSphere(1).Shape())
        
    def cube(event=None):
        display.DisplayShape(BRepPrimAPI_MakeBox(1,1,1).Shape())
        
    def exit(event=None):
        sys.exit()
    
    add_menu('primitives')
    add_function_to_menu('primitives',  sphere)
    add_function_to_menu('primitives',  cube)
    add_function_to_menu('primitives',  exit)
    start_display()


