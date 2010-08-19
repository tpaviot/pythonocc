#!/usr/bin/env python

##Copyright 2009-2010 Thomas Paviot (tpaviot@gmail.com)
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

import sys
import os, os.path
from OCC import VERSION
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
    from Xlib import display as display_xlib, X
    HAVE_XLIB = True
except:
    HAVE_XLIB = False
# Then define the default backend
if HAVE_WX:
    DEFAULT_BACKEND = 'wx'
elif HAVE_QT:
    DEFAULT_BACKEND = 'qt'
elif HAVE_XLIB:
    DEFAULT_BACKEND = 'x'
else:
    raise AssertionError('No backend.')
# By default, used backend is the default_backend
USED_BACKEND = DEFAULT_BACKEND

def set_backend(str_backend):
    ''' Overload the default used backend
    '''
    global USED_BACKEND
    # make str_backend case unsensitive
    str_backend = str_backend.lower()
    if str_backend not in ['wx','qt','x']:
        raise AssertionError('Backend must either be "wx", "qt" or "x"')
    elif str_backend == 'qt' and not HAVE_QT:
        raise Assertion('PyQt library not installed or not found.')
    elif str_backend == 'wx' and not HAVE_WX:
        raise Assertion('wxPython library not installed or not found.')
    elif str_backend == 'x' and not HAVE_XLIB:
        raise Assertion('python-xlib library not installed or not found.')
    else:
        USED_BACKEND = str_backend

def get_bg_abs_filename():
    ''' Returns the absolute file name for the file default_background.bmp
    '''
    occ_package = sys.modules['OCC']
    bg_abs_filename = os.path.join(occ_package.__path__[0],'Display','default_background.bmp')
    if not os.path.isfile(bg_abs_filename):
        raise NameError('No image background file found.')
    else:
        return bg_abs_filename

def safe_yield():
    if USED_BACKEND == 'wx':
        wx.SafeYield()
    elif USED_BACKEND == 'qt':
        #QtCore.processEvents()
        QtGui.QApplication.processEvents()
            
def init_display():
    global display, add_menu, add_function_to_menu, start_display, app, win
    # wxPython based simple GUI
    if USED_BACKEND == 'wx':
        from wxDisplay import wxViewer3d
        
        class AppFrame(wx.Frame):
            def __init__(self, parent):
                wx.Frame.__init__(self, parent, -1, "pythonOCC-%s 3d viewer ('wx' backend)"%VERSION, style=wx.DEFAULT_FRAME_STYLE,size = (640,480))
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
                assert callable(_callable), 'the function supplied is not callable'
                try:
                    self._menus[menu_name].Append(_id, _callable.__name__.replace('_', ' ').lower())
                except KeyError:
                    raise ValueError('the menu item %s does not exist' % (menu_name))
                self.Bind(wx.EVT_MENU, _callable, id=_id)
        app = wx.PySimpleApp()
        wx.InitAllImageHandlers()
        win = AppFrame(None)
        win.Show(True)
        wx.SafeYield()
        win.canva.InitDriver()
        app.SetTopWindow(win)
        display = win.canva._display
        display.SetBackgroundImage(get_bg_abs_filename())
        def add_menu(*args, **kwargs):
            win.add_menu(*args, **kwargs)
        def add_function_to_menu(*args, **kwargs):
            win.add_function_to_menu(*args, **kwargs)
        def start_display():
            app.MainLoop()
        
    # PyQt based simple GUI
    elif USED_BACKEND == 'qt':
        from qtDisplay import qtViewer3d
        class MainWindow(QtGui.QMainWindow):
            def __init__(self, *args):
                apply(QtGui.QMainWindow.__init__,(self,)+args)
                self.canva = qtViewer3d(self)
                self.setWindowTitle("pythonOCC-%s 3d viewer ('qt' backend)"%VERSION)
                self.resize(1024,768)
                self.canva = qtViewer3d(self)
                self.setCentralWidget(self.canva)
                self.menuBar = self.menuBar()
                self._menus = {}
                self._menu_methods = {}

            def add_menu(self, menu_name):
                _menu = self.menuBar.addMenu("&"+menu_name)
                self._menus[menu_name]=_menu
            def add_function_to_menu(self, menu_name, _callable):
                assert callable(_callable), 'the function supplied is not callable'
                try:
                    _action = QtGui.QAction(_callable.__name__.replace('_', ' ').lower(), self)
                    self.connect(_action, QtCore.SIGNAL("triggered()"), _callable)
                    self._menus[menu_name].addAction(_action)
                except KeyError:
                    raise ValueError('the menu item %s does not exist' % (menu_name))
        app = QtGui.QApplication(sys.argv)
        win = MainWindow()
        win.show()
        win.canva.InitDriver()
        display = win.canva._display
        display.SetBackgroundImage(get_bg_abs_filename())        
        def add_menu(*args, **kwargs):
            win.add_menu(*args, **kwargs)
        def add_function_to_menu(*args, **kwargs):
            win.add_function_to_menu(*args, **kwargs)
        def start_display():
            app.exec_()
        #app.exec_()
    # python-xlib based simple GUI
    elif USED_BACKEND == 'X':
        from XDisplay import XOCCWindow
        win = XOCCWindow(display_xlib.Display(),"pythonOCC-%s 3d viewer ('python-xlib' backend)"%VERSION)
        display = win.occviewer
        # set background image
        display.SetBackgroundImage(get_bg_abs_filename())
        def add_menu(*args, **kwargs):
            print args#pass#frame.add_menu(*args, **kwargs)
        def add_function_to_menu(menu_title, function):
            #print args
            win.register_function(function)#functions.append(args[1])#pass#frame.add_function_to_menu(*args, **kwargs)
        def start_display():        
            win.MainLoop()
    else:
        print "No compliant GUI library found. You must have either wxPython, PyQt or python-xlib installed."
        sys.exit(0)
    return display, start_display, add_menu, add_function_to_menu
    
if __name__ == '__main__':
    set_backend('x')
    init_display()
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


