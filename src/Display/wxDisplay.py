#!/usr/bin/env python

##Copyright 2008 Thomas Paviot
##
##thomas.paviot@free.fr.fr
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

import os
import sys
import wx
import OCCViewer
import wx.glcanvas

class wxViewer3d(wx.Panel):
    def __init__(self, parent):
        wx.Panel.__init__(self, parent)
 
        self.Bind( wx.EVT_SIZE , self.OnSize)
        self.Bind( wx.EVT_IDLE , self.OnIdle)
        self.Bind( wx.EVT_MOVE , self.OnMove)
        self.Bind( wx.EVT_SET_FOCUS , self.OnFocus)
        self.Bind( wx.EVT_KILL_FOCUS , self.OnLostFocus)
        self.Bind( wx.EVT_MAXIMIZE , self.OnMaximize)

        self.Bind( wx.EVT_LEFT_DOWN , self.OnLeftDown)
        self.Bind( wx.EVT_RIGHT_DOWN , self.OnRightDown)
        self.Bind( wx.EVT_MIDDLE_DOWN , self.OnMiddleDown)
        self.Bind( wx.EVT_LEFT_UP , self.OnLeftUp)
        self.Bind( wx.EVT_RIGHT_UP , self.OnRightUp)
        self.Bind( wx.EVT_MIDDLE_UP , self.OnMiddleUp)
        self.Bind( wx.EVT_MOTION , self.OnMotion)
        self.Bind( wx.EVT_KEY_DOWN ,self.OnKeyDown)

        self._drawbox = False
        self._zoom_area = False
        self._select_area = False
        
        self._3dDisplay = None
        self._inited = False
        self._leftisdown = False
        self._middleisdown = False
        self._rightisdown = False
        self._selection = None
        if sys.platform=='win32':
            self.InitViewer3d()

    def InitViewer3d(self):
        try:
            os.environ["CSF_GraphicShr"]
        except KeyError:
            raise "Please set the CSF_GraphicShr environment variable."
        self._3dDisplay = OCCViewer.Viewer3d(self.GetHandle())
        self._3dDisplay.Create()
        self._3dDisplay.DisplayTriedron()
        self._3dDisplay.SetModeShaded()
        self._inited = True
       
    def OnKeyDown(self,evt):
        key_code = evt.GetKeyCode()
        print key_code
        if key_code==87:#"W"
            self._3dDisplay.SetModeWireFrame()
        elif key_code==83:#"S"
            self._3dDisplay.DisableAntiAliasing()
            self._3dDisplay.SetModeShaded()
        elif key_code==65:#"A"
            self._3dDisplay.EnableAntiAliasing()
        elif key_code==66:#"B"
            self._3dDisplay.DisableAntiAliasing()
        elif key_code==81:#"Q"
            self._3dDisplay.SetModeQuickHLR()
        elif key_code==69:#"E"
            self._3dDisplay.SetModeExactHLR()
        elif key_code == 70:#"F"
            self._3dDisplay.ExportToImage("essai.BMP")
        elif key_code == 71:#"G"
            self._3dDisplay.SetBackgroundImage("carrelage1.gif")
        elif key_code == 72:#"G"
            self._3dDisplay.SetSelectionModeVertex()
            
              
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
        if self._drawbox:
            pass
        elif self._inited:
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
            
    def ZoomAll(self, evt):
        self._3dDisplay.Zoom_FitAll()

    def Repaint(self, evt):
       if self._inited:
            self._3dDisplay.Repaint()
            
    def OnLeftDown(self, evt):
        self.SetFocus()
        self.dragStartPos = evt.GetPosition()
        self._3dDisplay.StartRotation(self.dragStartPos.x,self.dragStartPos.y) 

    def OnLeftUp(self,evt):
        pt = evt.GetPosition()
        if self._select_area:
            [Xmin, Ymin, dx, dy] = self._drawbox
            selected_shapes = self._3dDisplay.Select(Xmin,Ymin,Xmin+dx,Ymin+dy)
            self._select_area = False 
        else:
            if self._3dDisplay.Select(pt.x,pt.y):
                selected_shape = self._3dDisplay.GetSelectedShape()
                print selected_shape,selected_shape.ShapeType()
        
    def OnRightUp(self,evt):
        if self._zoom_area:
            [Xmin, Ymin, dx, dy] = self._drawbox
            self._3dDisplay.ZoomArea(Xmin, Ymin, Xmin+dx, Ymin+dy)
            self._zoom_area = False
           
    def OnMiddleUp(self,evt):
        pass
        
    def OnRightDown(self, evt):
        self.dragStartPos = evt.GetPosition()
        self._3dDisplay.StartRotation(self.dragStartPos.x,self.dragStartPos.y)
              
    def OnMiddleDown(self, evt):
        self.dragStartPos = evt.GetPosition()
        self._3dDisplay.StartRotation(self.dragStartPos.x,self.dragStartPos.y) 
        
    def DrawBox(self, event):
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
        
    def OnMotion(self, evt):
        pt = evt.GetPosition()
        # ROTATE
        if (evt.LeftIsDown() and not evt.ShiftDown()):
            dx = pt.x - self.dragStartPos.x
            dy = pt.y - self.dragStartPos.y
            self._3dDisplay.Rotation(pt.x,pt.y)
            self._drawbox = False
        # DYNAMIC ZOOM
        elif (evt.RightIsDown() and not evt.ShiftDown()):
            self._3dDisplay.Repaint()
            self._3dDisplay.DynamicZoom(abs(self.dragStartPos.x), abs(self.dragStartPos.y), abs(pt.x), abs(pt.y))
            self.dragStartPos.x = pt.x 
            self.dragStartPos.y = pt.y
            self._drawbox = False
        # PAN
        elif evt.MiddleIsDown():
            dx = pt.x - self.dragStartPos.x
            dy = pt.y - self.dragStartPos.y
            self.dragStartPos.x = pt.x 
            self.dragStartPos.y = pt.y
            self._3dDisplay.Pan(dx,-dy)
            self._drawbox = False
        # DRAW BOX
        elif (evt.RightIsDown() and evt.ShiftDown()): # ZOOM WINDOW
            self._zoom_area = True
            self.DrawBox(evt)
        elif (evt.LeftIsDown() and evt.ShiftDown()): # SELECT AREA
            self._select_area = True
            self.DrawBox(evt) 
        else:
            self._drawbox = False
            self._3dDisplay.MoveTo(pt.x,pt.y)

if __name__=="__main__":
    class AppFrame(wx.Frame):
        def __init__(self, parent):
            wx.Frame.__init__(self, parent, -1, "wxDisplay3d sample", style=wx.DEFAULT_FRAME_STYLE,size = (640,480))
            #self.runTests()
            self.canva = wxViewer3d(self)
            
        def runTests(self):
            self.canva._3dDisplay.Test()
            
    app = wx.PySimpleApp()
    wx.InitAllImageHandlers()
    frame = AppFrame(None)
    if sys.platform=='win32':
        frame.Show(True)
    else:
        frame.Show(True)
        wx.SafeYield() #under Linux, frame must be shown before Display3D is initialized
        frame.canva.InitViewer3d()
    frame.runTests()
    app.SetTopWindow(frame)
    app.MainLoop()            
