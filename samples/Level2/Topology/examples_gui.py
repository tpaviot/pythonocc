
import wx
from OCC.Display.wxDisplay import wxViewer3d


class AppFrame(wx.Frame):
    def __init__(self, parent):
        wx.Frame.__init__(self, parent, -1, "wxDisplay3d sample", style=wx.DEFAULT_FRAME_STYLE,size = (640,480))
        self.canva = wxViewer3d(self)
        print 'self.canva',self.canva


global app
app = wx.PySimpleApp()
wx.InitAllImageHandlers()
frame = AppFrame(None)
frame.Show(True)
wx.SafeYield()
frame.canva.InitDriver()
app.SetTopWindow(frame)
display = frame.canva._display



def loop():
    '''
    call the mainloop
    '''
    global app
    app.MainLoop()
