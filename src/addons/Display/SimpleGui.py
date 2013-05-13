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

import sys
import os, os.path
from OCC import VERSION


def get_backend():
    """

    loads a backend
    backends are loaded in order of preference
    since python comes with Tk included, but that PySide or PyQt4 is much preferred
    ( which is a bias of the PythonOCC developers )

    """

    # Check PyQt
    try:
        from PyQt4 import QtCore, QtGui
        return 'pyqt4'
    except:
        pass

    try:
        from PySide import QtCore, QtGui
        return 'pyside'
    except:
        pass
    # Check wxPython
    try:
        import wx
        return 'wx'
    except:
        pass

    # use Tk backend as a fall back...
    else:
        try:
            import Tkinter
            return 'tkinter'
        except:
            raise ValueError("No compliant GUI library found. You must have either PySide, PyQt4, wxPython or Tkinter installed.")
            sys.exit(1)

def get_bg_abs_filename():
    ''' Returns the absolute file name for the file default_background.bmp
    '''
    occ_package = sys.modules['OCC']
    bg_abs_filename = os.path.join(occ_package.__path__[0],'Display','default_background.bmp')
    if not os.path.isfile(bg_abs_filename):
        raise NameError('No image background file found.')
    else:
        return bg_abs_filename

def init_display(backend_str = None):
    global display, add_menu, add_function_to_menu, start_display, app, win, USED_BACKEND

    if not backend_str:
        USED_BACKEND = get_backend()
    elif backend_str in ['wx','pyqt4','pyside','tkinter']:
        USED_BACKEND = backend_str
    else:
        raise ValueError("You should pass either 'wx','pyqt4','pyside' or'tkinter' to the init_display function.")
        sys.exit(1)
    # wxPython based simple GUI
    if USED_BACKEND == 'wx':
        import wx
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
    elif USED_BACKEND == 'pyqt4' or USED_BACKEND=='pyside':

        # dont really get why its nessecary to import yet again... sigh...
        if USED_BACKEND == 'pyqt4':
            from PyQt4 import QtGui, QtCore
        else:
            from PySide import QtGui, QtCore

        from qtDisplay import qtViewer3d
        class MainWindow(QtGui.QMainWindow):
            def __init__(self, *args):
                apply(QtGui.QMainWindow.__init__,(self,)+args)
                self.canva = qtViewer3d(self)
                self.setWindowTitle("pythonOCC-%s 3d viewer ('qt' backend)"%VERSION)
                self.resize(1024,768)
                self.setCentralWidget(self.canva)
                if not sys.platform == 'darwin':
                    self.menu_bar = self.menuBar()
                else:
                    # create a parentless menubar
                    # see: http://stackoverflow.com/questions/11375176/qmenubar-and-qmenu-doesnt-show-in-mac-os-x?lq=1
                    # noticeable is that the menu ( alas ) is created in the topleft of the screen, just
                    # next to the apple icon
                    # still does ugly things like showing the "Python" menu in bold
                    self.menu_bar = QtGui.QMenuBar()
                self._menus = {}
                self._menu_methods = {}
                # place the window in the center of the screen, at half the screen size
                self.centerOnScreen()

            def centerOnScreen (self):
                '''Centers the window on the screen.'''
                resolution = QtGui.QDesktopWidget().screenGeometry()
                self.move(
                            (resolution.width() / 2) - (self.frameSize().width() / 2),
                            (resolution.height() / 2) - (self.frameSize().height() / 2)
                )

            def add_menu(self, menu_name):
                _menu = self.menu_bar.addMenu("&"+menu_name)
                self._menus[menu_name]=_menu
                
            def add_function_to_menu(self, menu_name, _callable):
                assert callable(_callable), 'the function supplied is not callable'
                try:
                    _action = QtGui.QAction(_callable.__name__.replace('_', ' ').lower(), self)
                    # if not, the "exit" action is now shown...
                    # Qt is trying so hard to be native cocoa'ish that its a nuisance
                    _action.setMenuRole(QtGui.QAction.NoRole)
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
            win.raise_() # make the application float to the top
            app.exec_()

    elif USED_BACKEND == 'tkinter':
        import Tkinter
        from tkDisplay import tkViewer3d
        app = Tkinter.Tk()
        win = tkViewer3d(app)
        win.InitDriver()
        display = win._display
        def start_display():
            app.mainloop()
        def add_menu(*args, **kwargs):
            pass
        def add_function_to_menu(*args, **kwargs):
            pass
    return display, start_display, add_menu, add_function_to_menu
    
if __name__ == '__main__':
    init_display('tkinter')
    from OCC.BRepPrimAPI import *
    def sphere(event=None):
        display.DisplayShape(BRepPrimAPI_MakeSphere(1).Shape(), update=True)
    def cube(event=None):
        display.DisplayShape(BRepPrimAPI_MakeBox(1,1,1).Shape(), update=True)
    def exit(event=None):
        sys.exit()    
    add_menu('primitives')
    add_function_to_menu('primitives',  sphere)
    add_function_to_menu('primitives',  cube)
    add_function_to_menu('primitives',  exit)
    start_display()


