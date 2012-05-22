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

import sys,os, os.path
from OCC import VERSION

#===============================================================================
# TODO: resizing of the window is only performed on QT...
#===============================================================================

global USED_BACKEND
USED_BACKEND = None

def load_gui_toolkit():
    # a little biase if you have traitsui, than lets use that backend
    # Check PyQt4
    try:
        global QtCore, QtGui
        from PyQt4 import QtCore, QtGui
        print 'using PyQt4 as SimpleGui toolkit'
        return 'qt'
    except Exception:
        pass

    # check wx
    try:
        global wx
        import wx
        print 'using wx as SimpleGui toolkit'
        return 'wx'
    except Exception:
        pass

    # Check python-xlib
    try:
        global display_xlib, X
        from Xlib import display as display_xlib, X
        print 'using Xlib as SimpleGui toolkit'
        return 'x'
    except Exception:
        raise AssertionError('No GUI toolkit found. you will need either PyQt4, wx, or Xlib. the latter is osx / linux only')

def get_bg_abs_filename():
    '''
    returns the absolute file name for the file default_background.bmp
    :raises: NameError when the file is not found
    '''
    occ_package = sys.modules['OCC']
    bg_abs_filename = os.path.join(occ_package.__path__[0],'Display','default_background.bmp')
    if not os.path.isfile(bg_abs_filename):
        raise NameError('No image background file found.')
    else:
        return bg_abs_filename

def safe_yield():
    global USED_BACKEND
    if USED_BACKEND == 'wx':
        wx.SafeYield()
    elif USED_BACKEND == 'qt':
        #QtCore.processEvents()
        QtGui.QApplication.processEvents()
            
def init_display(screenX=1024, screenY=768):
    """
    initializes the display
    
    :param screenX: screen resolution y axis
    :param screenY: screen resolution y axis
    :return: OCCViewer.Viewer3d instance
    """
    global display, add_menu, add_function_to_menu, start_display, app, win, USED_BACKEND
    USED_BACKEND = load_gui_toolkit()
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
                self.resize(screenX,screenY)
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
    elif USED_BACKEND == 'x':
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


