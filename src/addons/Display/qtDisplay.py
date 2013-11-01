#!/usr/bin/env python

##Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)
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

import os,sys
from PyQt4 import QtCore, QtGui, QtOpenGL
import OCCViewer

class point(object):
   def __init__(self,obj=None):
       self.x = 0
       self.y = 0
       if obj is not None:
           self.set(obj)

   def set(self,obj):
       self.x = obj.x()
       self.y = obj.y()

class qtBaseViewer(QtOpenGL.QGLWidget):
    ''' The base Qt Widget for an OCC viewer
    '''
    def __init__(self, parent = None):
        QtOpenGL.QGLWidget.__init__(self,parent)
        # self.initializeGL()
        # self.initializeOverlayGL()
        self._display = None
        self._inited = False
        self.setMouseTracking(True) #enable Mouse Tracking
        self.setFocusPolicy(QtCore.Qt.WheelFocus)#Strong focus
        # On X11, setting this attribute will disable all double buffering
        self.setAttribute(QtCore.Qt.WA_PaintOnScreen)
        # setting this flag implicitly disables double buffering for the widget
        self.setAttribute(QtCore.Qt.WA_NoSystemBackground)

    def GetHandle(self):
        return int(self.winId())
    
    def resizeEvent(self, event):
        if self._inited:
            self._display.OnResize()

    def paintEngine(self):
        return None

class qtViewer3d(qtBaseViewer):
    def __init__(self, *kargs):
        qtBaseViewer.__init__(self, *kargs)
        self._drawbox = False
        self._zoom_area = False
        self._select_area = False
        self._inited = False
        self._leftisdown = False
        self._middleisdown = False
        self._rightisdown = False
        self._selection = None
        self._drawtext = True

    def InitDriver(self):
        self._display = OCCViewer.Viewer3d(self.GetHandle())
        self._display.Create()
        self._display.DisplayTriedron()
        self._display.SetModeShaded()
        self._inited = True
        # dict mapping keys to functions
        self._SetupKeyMap()

    def _SetupKeyMap(self):
        def set_shade_mode():
            self._display.DisableAntiAliasing()
            self._display.SetModeShaded()

        self._key_map = {
                         ord('W'): self._display.SetModeWireFrame,
                         ord('S'): set_shade_mode,
                         ord('A'): self._display.EnableAntiAliasing,
                         ord('B'): self._display.DisableAntiAliasing,
                         ord('Q'): self._display.SetModeQuickHLR,
                         ord('E'): self._display.SetModeExactHLR,
                         ord('F'): self._display.FitAll,
                         ord('G'): self._display.SetSelectionMode
                         }

    def keyPressEvent(self,event):
        code = event.key()
        if self._key_map.has_key(code):
            self._key_map[code]()
        else:
            print 'key',code,' not mapped to any function'

    def Test(self):
        if self._inited:
            self._display.Test()
    
    def focusInEvent(self, event):
        #print 'focus in!!'
        if self._inited:
            self._display.Repaint()

    def focusOutEvent(self, event):
        #print 'focus out'
        if self._inited:
            self._display.Repaint()
            #print 'repainted'

    def paintEvent(self, event):
        if self._inited:
            self._display.Repaint()
        if self._drawbox:
            painter = QtGui.QPainter(self)
            painter.setPen(QtGui.QPen(QtGui.QColor(0,0,0), 1))
            rect = QtCore.QRect(*self._drawbox)
            painter.drawRect(rect)
            painter.end()

    def ZoomAll(self, evt):
        self._display.Zoom_FitAll()

    def wheelEvent(self,event):
        if event.delta()>0:
            zoom_factor = 2
        else:
            zoom_factor = 0.5
        self._display.Repaint()
        self._display.ZoomFactor(zoom_factor)
             
    def dragMoveEvent(self,event):
        pass#print 'dragmove event'
        
    def mousePressEvent(self, event):
        #print 'mouse press event'
        self.setFocus()
        self.dragStartPos = point(event.pos())
        self._display.StartRotation(self.dragStartPos.x,self.dragStartPos.y)

    def mouseReleaseEvent(self, event):
        pt = point(event.pos())
        if event.button() == QtCore.Qt.LeftButton:
            pt = point(event.pos())
            if self._select_area:
                [Xmin, Ymin, dx, dy] = self._drawbox
                selected_shapes = self._display.SelectArea(Xmin,Ymin,Xmin+dx,Ymin+dy)
                self._select_area = False
            else:
                # multiple select if shift is pressed
                if QtCore.Qt.ShiftModifier:
                    self._display.ShiftSelect(pt.x,pt.y)
                else:
                # single select otherwise
                    self._display.Select(pt.x, pt.y)
        elif event.button() == QtCore.Qt.RightButton:
            if self._zoom_area:
                [Xmin, Ymin, dx, dy] = self._drawbox
                self._display.ZoomArea(Xmin, Ymin, Xmin+dx, Ymin+dy)
                self._zoom_area = False

    def DrawBox(self, event):
        tolerance = 2
        pt = point( event.pos() )
        dx = pt.x - self.dragStartPos.x
        dy = pt.y - self.dragStartPos.y
        if abs( dx ) <= tolerance and abs( dy ) <= tolerance:
            return
        self.repaint()
        self._drawbox = [self.dragStartPos.x, self.dragStartPos.y , dx, dy]
        
    def mouseMoveEvent(self, evt):
        pt = point(evt.pos())
        buttons = int(evt.buttons())
        modifiers = evt.modifiers()
        # ROTATE
        if (buttons == QtCore.Qt.LeftButton and not modifiers == QtCore.Qt.ShiftModifier):
            dx = pt.x - self.dragStartPos.x
            dy = pt.y - self.dragStartPos.y
            self._display.Rotation(pt.x,pt.y)
            self._drawbox = False
        # DYNAMIC ZOOM
        elif (buttons == QtCore.Qt.RightButton and not modifiers == QtCore.Qt.ShiftModifier):
            self._display.Repaint()
            self._display.DynamicZoom(abs(self.dragStartPos.x), abs(self.dragStartPos.y), abs(pt.x), abs(pt.y))
            self.dragStartPos.x = pt.x
            self.dragStartPos.y = pt.y
            self._drawbox = False
        # PAN
        elif buttons == QtCore.Qt.MidButton:
            dx = pt.x - self.dragStartPos.x
            dy = pt.y - self.dragStartPos.y
            self.dragStartPos.x = pt.x
            self.dragStartPos.y = pt.y
            self._display.Pan(dx,-dy)
            self._drawbox = False
        # DRAW BOX
        elif (buttons == QtCore.Qt.RightButton and modifiers == QtCore.Qt.ShiftModifier): # ZOOM WINDOW
            self._zoom_area = True
            self.DrawBox(evt)
        elif (buttons == QtCore.Qt.LeftButton and modifiers == QtCore.Qt.ShiftModifier): # SELECT AREA
            self._select_area = True
            self.DrawBox(evt)
        else:
            self._drawbox = False
            self._display.MoveTo(pt.x,pt.y)

def Test3d():
    class MainWindow(QtGui.QMainWindow):
        def __init__(self, *args):
            apply(QtGui.QMainWindow.__init__,(self,)+args)
            self.canva = qtViewer3d(self)
            self.setWindowTitle(self.tr("qtDisplay3d sample"))
            self.resize(640,480)
            self.canva = qtViewer3d(self)
            self.setCentralWidget(self.canva)
    app = QtGui.QApplication(sys.argv)
    win = MainWindow()
    win.show()
    win.canva.InitDriver()
    win.canva._display.Test()
    app.exec_()
    
def Test3d_bis():
    class AppFrame(QtGui.QWidget):
        def __init__(self, parent=None):
            QtGui.QWidget.__init__(self,parent)
            self.setWindowTitle(self.tr("qtDisplay3d sample"))
            self.resize(640, 480)
            self.canva = qtViewer3d(self)
            mainLayout = QtGui.QHBoxLayout()
            mainLayout.addWidget(self.canva)
            mainLayout.setMargin(0)
            self.setLayout(mainLayout)  
        
        def runTests(self):
            self.canva._display.Test()

    app = QtGui.QApplication(sys.argv)
    frame = AppFrame()
    frame.show()
    frame.canva.InitDriver()
    frame.runTests()
    sys.exit(app.exec_())

if __name__=="__main__":
    Test3d()
