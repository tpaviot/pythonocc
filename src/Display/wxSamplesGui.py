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

import wx
from wxDisplay import wxViewer3d


class AppFrame(wx.Frame):
    def __init__(self, parent):
        wx.Frame.__init__(self, parent, -1, "pythonOCC sample", style=wx.DEFAULT_FRAME_STYLE,size = (640,480))
        self.canva = wxViewer3d(self)

app = wx.PySimpleApp()
wx.InitAllImageHandlers()
frame = AppFrame(None)
frame.Show(True)
wx.SafeYield()
frame.canva.InitDriver()
app.SetTopWindow(frame)
display = frame.canva._display

def StartDisplay():
    '''
    call the mainloop
    '''
    global app
    app.MainLoop()
