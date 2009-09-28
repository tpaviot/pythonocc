#!/usr/bin/env python

##Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)
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

import os
import sys
try:
    from Xlib import display, X, Xutil
except:
    print "python-xlib must be installed. Check http://sf.net/projects/python-xlib"
    sys.exit(0)
import OCCViewer
    
class XViewer3d(object):
    def __init__(self, *kargs):
        self._drawbox = False
        self._zoom_area = False
        self._select_area = False
        self._inited = False
        self._leftisdown = False
        self._middleisdown = False
        self._rightisdown = False
        self._selection = None

    def InitDriver(self):
        try:
            os.environ["CSF_GraphicShr"]
        except KeyError:
            raise "Please set the CSF_GraphicShr environment variable."
        self._display = OCCViewer.NISViewer3d(self.GetHandle())
        self._display.Create()
        self._display.DisplayTriedron()
        self._display.SetModeShaded() 

class XOCCWindow:
        def __init__(self, display):
            self.d = display
            self.objects = []
            # Find which screen to open the window on
            self.screen = self.d.screen()
            self.window = self.screen.root.create_window(
                50, 50, 640, 480, 2,
                self.screen.root_depth,
                X.InputOutput,
                X.CopyFromParent,
                event_mask = (X.ExposureMask |
                              X.StructureNotifyMask |
                              X.ButtonPressMask |
                              X.KeyPressMask|
                              X.ButtonReleaseMask |
                              X.Button1MotionMask)
                )
            self.WM_DELETE_WINDOW = self.d.intern_atom('WM_DELETE_WINDOW')
            self.WM_PROTOCOLS = self.d.intern_atom('WM_PROTOCOLS')
    
            self.window.set_wm_name('pythonOCC Xlib')
            self.window.set_wm_icon_name('pythonOCC')
            #self.window.set_wm_class('draw', 'XlibExample')
    
            self.window.set_wm_protocols([self.WM_DELETE_WINDOW])
            self.window.set_wm_hints(flags = Xutil.StateHint,
                                     initial_state = Xutil.NormalState)
    
            self.window.set_wm_normal_hints(flags = (Xutil.PPosition | Xutil.PSize
                                                     | Xutil.PMinSize),
                                            min_width = 20,
                                            min_height = 20)
    
            # Map the window, making it visible
            self.window.map()
            self.InitDriver()
        
        def InitDriver(self):
            self.occviewer = OCCViewer.Viewer3d(self.window.id)
            self.occviewer.Create()
            self.occviewer.DisplayTriedron()
            self.occviewer.SetModeShaded()
            self.occviewer.Test()
            self._driver_inited = True
        # Main MainLoop, handling events
        
        def MainLoop(self):
            current = None
            while True:
                e = self.d.next_event()
                # Window has been destroyed, quit
                if e.type == X.DestroyNotify:
                    sys.exit(0)    
                # Some part of the window has been exposed,
                # redraw all the objects.
                if e.type == X.Expose:
                  print "Expose event"
                  self.occviewer.OnResize()#Repaint()#for o in self.objects:
                   #   o.expose(e)
                # Left button pressed, start to draw
                if e.type == X.ButtonPress and e.detail == 1:
                    print "Left click"
                    current = MoveEvent(self, e)
                    self.objects.append(current)
                # Middle button pressed, start to draw
                if e.type == X.ButtonPress and e.detail == 2:
                    print "Middle click"
                    current = MoveEvent(self, e)
                    self.objects.append(current)
                if e.type == X.ButtonPress and e.detail == 3:
                    print "Right click"
                    current = MoveEvent(self, e)
                    self.objects.append(current)
                # Left button released
                if e.type == X.ButtonRelease and e.detail == 1 and current:
                   current.finish(e)
                   current = None
                if e.type == X.KeyPress:
                    print "Key pressed"
                    #print e
               # Mouse movement with button pressed
                if e.type == X.MotionNotify and current:
                   current.motion(e)
                if e.type == X.ClientMessage:
                   if e.client_type == self.WM_PROTOCOLS:
                       fmt, data = e.data
                       if fmt == 32 and data[0] == self.WM_DELETE_WINDOW:
                           sys.exit(0)

class MoveEvent:
       def __init__(self, win, ev):
           self.win = win
           self.lastx = ev.event_x
           self.lasty = ev.event_y
           self.time = ev.time
           self.last = None
   
       def motion(self, ev):
           events = self.win.window.get_motion_events(self.time, ev.time)
           self.time = ev.time
           delta_x = ev.event_x -self.lastx
           delta_y = ev.event_y - self.lasty
           self.lastx = ev.event_x
           self.lasty = ev.event_y
           self.win.occviewer.Rotation(ev.event_x,ev.event_y)
           
       def finish(self,evt):
           print "Release mouse button"
           
def Test3d():
    w = XOCCWindow(display.Display())
    w.MainLoop()           

if __name__=="__main__":
    Test3d()
