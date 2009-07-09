#!/usr/bin/env python

##Copyright 2008-2009 Thomas Paviot
##
##tpaviot@gmail.com
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCasacde library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.

import sys
import os
import os.path
import wx
from OCC.Display.OCCViewer import Viewer3d
# --------------------------------------------------
try:
    THISPATH = os.path.dirname(os.path.abspath(__file__))
except:
    THISPATH = os.path.dirname(os.path.abspath(sys.argv[0]))
if THISPATH.endswith("zip"):
    THISPATH = os.path.dirname(THISPATH)
# --------------------------------------------------

class GraphicsCanva3D(wx.Panel):
    def __init__(self, parent):
        wx.Panel.__init__(self, parent)
 
        wx.EVT_SIZE(self, self.OnSize)
        wx.EVT_IDLE(self, self.OnIdle)
        wx.EVT_MOVE(self, self.OnMove)
        wx.EVT_SET_FOCUS(self, self.OnFocus)
        wx.EVT_KILL_FOCUS(self, self.OnLostFocus)
        wx.EVT_MAXIMIZE(self, self.OnMaximize)

        wx.EVT_LEFT_DOWN(self, self.OnLeftDown)
        #~ wx.EVT_LEFT_UP(self, self.OnLeftUp)
        wx.EVT_RIGHT_DOWN(self, self.OnRightDown)
        wx.EVT_MIDDLE_DOWN(self, self.OnMiddleDown)
        wx.EVT_RIGHT_UP(self, self.OnRightUp)
        wx.EVT_MIDDLE_UP(self, self.OnMiddleUp)
        wx.EVT_MOTION(self, self.OnMotion)
        wx.EVT_KEY_DOWN(self,self.OnKeyDown)

        self._3dDisplay = None
        self._inited = False
        self.DynaZoom = False
        self.DynaRotate = False
        self.DynaPan = False
        self.dragStartPos = None
        self._drawbox = None
        self._selection = None

        if sys.platform=='win32':
            self.Init3dViewer()

    def Init3dViewer(self):
        self._3dDisplay = Viewer3d(self.GetHandle())
        self._3dDisplay.Create()
        self._inited = True
        self._3dDisplay.SetBackgroundImage(os.path.join(THISPATH, "icons", "bg.bmp"))
        self._3dDisplay.DisplayTriedron()
        self._3dDisplay.SetModeShaded()      


    def OnKeyDown(self,evt):
        key_code = evt.GetKeyCode()
        if key_code==87:#"W"
            self._3dDisplay.SetModeWireFrame()
        elif key_code==83:#"S"
            self._3dDisplay.SetModeShaded()
        elif key_code==65:#"A"
            self._3dDisplay.EnableAntiAliasing()
        elif key_code==66:#"B"
            self._3dDisplay.DisableAntiAliasing()
              
    def OnSize(self, event):
        if self._inited:
            self._3dDisplay.OnResize()

    def OnMaximize(self, event):
        if self._inited:
            self._3dDisplay.Repaint()
        
    def OnMove(self, event):
        if self._inited:
            self._3dDisplay.Repaint()

    def OnIdle(self, event):
        if self._inited:
            self._3dDisplay.Repaint()

    def Test(self):
        if self._inited:
            self._3dDisplay.Test()
        
    def OnFocus(self, event):
        if self._inited:
            self._3dDisplay.Repaint()
        
    def OnLostFocus(self, event):
        if self._inited:
            self._3dDisplay.Repaint()

    def OnPaint(self, event):
        if self._inited:
            self._3dDisplay.Repaint()
            
    def ZoomAll(self):
        self._3dDisplay.FitAll()#Zoom_FitAll()

    def Repaint(self, evt):
       if self._inited:
            self._3dDisplay.Repaint()
            
    def OnLeftDown(self, evt):
        self.dragStartPos = evt.GetPosition()
        self._3dDisplay.StartRotation(self.dragStartPos.x,self.dragStartPos.y) 
        if self._3dDisplay.Select(self.dragStartPos.x, self.dragStartPos.y):
            selected_shape = self._3dDisplay.GetSelectedShape()

    def OnRightUp(self, event):
        self._inited = True
        self.SetDynaCursor()
        self._3dDisplay.Repaint()
        self._drawbox = False
        if event.ControlDown() and event.ShiftDown():
            pt = event.GetPosition()
            if ((abs(self.dragStartPos.x - pt.x)>1) or (abs(self.dragStartPos.y - pt.y)>1)): 
                self._3dDisplay.Zoom_Window(self.dragStartPos.x, self.dragStartPos.y, pt.x, pt.y)

    def OnRightDown(self, event):
        self.dragStartPos = event.GetPosition()
        self._3dDisplay.StartRotation(self.dragStartPos.x,self.dragStartPos.y)        
        self.SetTogglesToFalse(None)

    def SetTogglesToFalse(self, event):
        self.DynaZoom = False
        self.DynaPan = False
        self.DynaRotate = False
        
    def OnMiddleDown(self, event):
        self.dragStartPos = event.GetPosition()
        self._3dDisplay.StartRotation(self.dragStartPos.x,self.dragStartPos.y) 
        self.CentreDisplayToggle = True
        
    def OnMiddleUp(self, event):
        self.SetDynaCursor()
        if self.CentreDisplayToggle:
            self.dragStartPos = event.GetPosition()
            self._3dDisplay.SetCentre(self.dragStartPos.x, self.dragStartPos.y)

    def _zoomwin(self, event):
        self._inited = False
        tolerance = 2
        pt = event.GetPosition()
        dx = pt.x - self.dragStartPos.x
        dy = pt.y - self.dragStartPos.y
        
        if abs(dx) <= tolerance and abs(dy) <= tolerance:
            return
        dc = wx.ClientDC(self)
        dc.BeginDrawing()
        dc.SetPen(wx.Pen(wx.WHITE, 1, wx.DOT))
        dc.SetBrush(wx.TRANSPARENT_BRUSH)
        dc.SetLogicalFunction(wx.XOR)
        if self._drawbox:
            r = wx.Rect(*self._drawbox)
            dc.DrawRectangleRect(r)

        r = wx.Rect(self.dragStartPos.x, self.dragStartPos.y , dx, dy)
        dc.DrawRectangleRect(r)
        dc.EndDrawing()
        self._drawbox = [self.dragStartPos.x, self.dragStartPos.y , dx, dy]

    def SetDynaCursor(self, iconfile=""):
        """Set the cursor for zoom, pan or rotate."""
        if iconfile:
            img = wx.Bitmap(iconfile)
            img_mask = wx.Mask(img, wx.Colour(255, 0, 255))
            img.SetMask(img_mask)
            cursor = wx.CursorFromImage(wx.ImageFromBitmap(img))
        else:
            cursor = wx.StockCursor(wx.CURSOR_DEFAULT)
        self.SetCursor(cursor)


    def _dynazoom(self,event):
        self.SetDynaCursor(os.path.join(THISPATH, "icons", "zoom_cur.bmp"))
        pt = event.GetPosition()
        self._3dDisplay.Repaint()
        self._3dDisplay.DynamicZoom(abs(self.dragStartPos.x), abs(self.dragStartPos.y), abs(pt.x), abs(pt.y))
        self.dragStartPos.x = pt.x 
        self.dragStartPos.y = pt.y

    def _dynarotate(self, event):
        self.SetDynaCursor(os.path.join(THISPATH, "icons", "rotate_cur.bmp"))
        pt = event.GetPosition()
        dx = pt.x - self.dragStartPos.x
        dy = pt.y - self.dragStartPos.y
        self._3dDisplay.Rotation(pt.x,pt.y)

    def _dynapan(self, event):
        self.SetDynaCursor(os.path.join(THISPATH, "icons", "pan_cur.bmp"))
        pt = event.GetPosition()
        dx = pt.x - self.dragStartPos.x
        dy = pt.y - self.dragStartPos.y
        self.dragStartPos.x = pt.x 
        self.dragStartPos.y = pt.y
        self._3dDisplay.Repaint()
        self._3dDisplay.Pan(dx,-dy)
        
    def OnMotion(self, event):
        self.CentreDisplayToggle = False
        if self.DynaZoom and event.Dragging():
            self._dynazoom(event)
        if self.DynaRotate and event.Dragging():
            self._dynarotate(event)
        if self.DynaPan and event.Dragging():
            self._dynapan(event)
        if not event.Dragging() or (not event.RightIsDown() and not event.MiddleIsDown()):
            pt = event.GetPosition()
            self._3dDisplay.MoveTo(pt.x,pt.y)
            return
        elif event.Dragging() and event.RightIsDown() and event.ControlDown() and event.ShiftDown():
            # Zoom win
            self._zoomwin(event)
                
        elif (event.Dragging() and event.RightIsDown() and event.ControlDown()) or \
                (event.Dragging() and event.RightIsDown() and event.MiddleIsDown()):
            # Dyna Zoom
            self._dynazoom(event)
            
        elif (event.Dragging() and event.MiddleIsDown()) or \
                (event.Dragging() and event.RightIsDown() and event.ShiftDown()):
            # Rotate
            self._dynarotate(event)
            
        elif event.Dragging() and event.RightIsDown():
            # Pan
            self._dynapan(event)
        
    def SaveAsImage(self, filename):
        """Save the current canvas view to an image file."""
        self._3dDisplay.ExportToImage(filename)

if __name__=="__main__":
    from OCC.BRepPrimAPI import *
    class AppFrame(wx.Frame):
        def __init__(self, parent):
            wx.Frame.__init__(self, parent, -1, "wxDisplay3d sample", style=wx.DEFAULT_FRAME_STYLE,size = (640,480))
            self.canva = GraphicsCanva3D(self)
            S = BRepPrimAPI_MakeTorus(400,100)
            shape = S.Shape()
            self.canva._3dDisplay.DisplayShape(S.Shape())
    app = wx.PySimpleApp()
    wx.InitAllImageHandlers()
    frame = AppFrame(None)
    frame.Show(True)
    app.SetTopWindow(frame)
    app.MainLoop()            
