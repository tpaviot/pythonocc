# =============================================================================
# Packages to import
# =============================================================================
import wx
import sys

from OCC import VERSION
from OCC.Display.wxDisplay import wxViewer3d

# =============================================================================
# Functions called from some menu-items
# =============================================================================
def draw_nothing(event=None):
    pass

def exit(event=None):
    sys.exit()

# =============================================================================
# This is the Application Frame class for wx
# =============================================================================
class AppFrame(wx.Frame):
    def __init__(self, parent):
        wx.Frame.__init__(self, 
                          parent, 
                          -1, 
                        "pythonOCC-%s 3d viewer"%VERSION, 
                        style=wx.DEFAULT_FRAME_STYLE,
                        size = (640,480))
        self.canva = wxViewer3d(self)      
        self.menuBar = wx.MenuBar()
        self._menus = {}
        self._menu_methods = {}
    
    # Function for creating new menus like File, Edit, View, and so on
    # The stuff appearing at the top    
    def add_menu(self, menu_name):
        _menu = wx.Menu()
        self.menuBar.Append(_menu, "&"+menu_name)
        self.SetMenuBar(self.menuBar)
        self._menus[menu_name]=_menu

    # Function for creating new menu items like File-New, File-Exit, Edit-Copy, 
    # Edit-Cut, Edit-paste, and so on
    # The stuff appearing if a menu is selected
    def add_function_to_menu(self, menu_name, _callable):
        _id = wx.NewId()
        assert callable(_callable), 'the function supplied isnt callable'
        try:
            self._menus[menu_name].Append( \
                        _id, 
                        _callable.__name__.replace('_', ' ').lower() )
        except KeyError:
            raise ValueError, 'the menu item %s doesnt exist' % (menu_name) 
        self.Bind(wx.EVT_MENU, _callable, id=_id)


# =============================================================================
# Called from Main-part. Calls itself frame methods.
# =============================================================================
def add_menu(*args, **kwargs):
    frame.add_menu(*args, **kwargs)
    
def add_function_to_menu(*args, **kwargs):
    frame.add_function_to_menu(*args, **kwargs)

def start_display():    
    '''
    call the mainloop
    '''
    global app
    app.MainLoop()
    
# =============================================================================
# Main-part
# If this script is running as a main script, i.e. it is directly called
# by Python the following is executed.
# =============================================================================
if __name__ == '__main__':
    # Create Application - with wx.PySimpleApp() we do not need an OnInit
    app = wx.PySimpleApp()
    wx.InitAllImageHandlers()
    # Create Application Frame
    frame = AppFrame(None)
    frame.Show(True)
    wx.SafeYield()
    frame.canva.InitDriver()
    app.SetTopWindow(frame)
    display = frame.canva._display
    # Show a background image
    display.SetBackgroundImage("bg.bmp")  
    # This is the place where we hook our functionality to menus
    # ----------------------------------------------------------
    add_menu('File')
    add_function_to_menu('File',  exit)
    add_menu('Draw')
    add_function_to_menu('Draw', draw_nothing)
    
    start_display()
