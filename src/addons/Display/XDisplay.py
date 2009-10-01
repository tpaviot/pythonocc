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
    from Xlib import display, X, XK
except:
    print "python-xlib must be installed. Check http://sf.net/projects/python-xlib"
    sys.exit(0)
import OCCViewer

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
                              X.Button1MotionMask |
                              X.ResizeRedirectMask)
                )
            self.WM_DELETE_WINDOW = self.d.intern_atom('WM_DELETE_WINDOW')
            self.WM_PROTOCOLS = self.d.intern_atom('WM_PROTOCOLS')
    
            self.window.set_wm_name('pythonOCC Xlib')
            self.window.set_wm_icon_name('pythonOCC Xlib')
            self.InitDriver()
            self.window.map()
        
        #def AddMenu(self):
       #     self.menu = 
        
        def InitDriver(self):
            self.occviewer = OCCViewer.Viewer3d(self.window.id)
            self.occviewer.Create()
            self.occviewer.DisplayTriedron()
            self.occviewer.SetModeShaded()
            #self.occviewer.Test()
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
                elif e.type == X.Expose:
                  print "Expose event"
                  self.occviewer.OnResize()#Repaint()#for o in self.objects:
                   #   o.expose(e)
                # Left button pressed, start to draw
                elif e.type == X.ButtonPress and e.detail == 1:
                    print "Left click"
                    current = MoveEvent(self, e)
                    #self.objects.append(current)
                # Middle button pressed, start to draw
                elif e.type == X.ButtonPress and e.detail == 2:
                    print "Middle click"
                    current = MoveEvent(self, e)
                    #self.objects.append(current)
                elif e.type == X.ButtonPress and e.detail == 3:
                    print "Right click"
                    current = MoveEvent(self, e)
                    #self.objects.append(current)
                # Left button released
                elif e.type == X.ButtonRelease and e.detail == 1 and current:
                   current.finish(e)
                   current = None
                elif e.type == X.KeyPress:
                    print "Key pressed"
                    #print dir(e)
                    k = KeyEvent(self,e)
                    #print e.detail
                    #print e
               # Mouse movement with button pressed
                elif e.type == X.MotionNotify and current:
                   current.motion(e)
                elif e.type == X.ClientMessage:
                   if e.client_type == self.WM_PROTOCOLS:
                       fmt, data = e.data
                       if fmt == 32 and data[0] == self.WM_DELETE_WINDOW:
                           sys.exit(0)
                elif e.type == X.ResizeRequest:
                    print "Resize!!"
                    self.window.map()
                    self.occviewer.OnResize()
                    self.occviewer.Repaint()
                    
class KeyEvent:
    def __init__(self,win,ev):
        self.occviewer = win.occviewer
        self.key_code = win.d.keycode_to_keysym(ev.detail, 0)
        self._setup_keymap()
        self._process_key_event()
        
    def _setup_keymap(self):    
        def set_shade_mode():
            self.occviewer.DisableAntiAliasing()
            self.occviewer.SetModeShaded()
        self._key_map = {
        ord('w'): self.occviewer.SetModeWireFrame,
        ord('s'): set_shade_mode,
        ord('a'): self.occviewer.EnableAntiAliasing,
        ord('b'): self.occviewer.DisableAntiAliasing,
        ord('q'): self.occviewer.SetModeQuickHLR,
        ord('e'): self.occviewer.SetModeExactHLR,
        ord('f'): self.occviewer.FitAll,
        #ord('F'): self._display.ExportToImage("essai.BMP"),
        #ord('F'): self._display.SetBackgroundImage("carrelage1.gif"),
        ord('g'): self.occviewer.SetSelectionModeFace
        }                 
        
    def _process_key_event(self):
        try:
            self._key_map[self.key_code]()
        except:
            print 'unrecognized key', self.key_code
        
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
    d = display.Display()
    w = XOCCWindow(d)
    w.MainLoop()           

if __name__=="__main__":
    Test3d()
