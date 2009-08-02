#!/usr/bin/env python

##Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)
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

import sys, os
import wx
import time

import OCC
from OCC.Display.wxDisplay import wxViewer3d

class AppFrame(wx.Frame):
    def __init__(self, parent):
        wx.Frame.__init__(self, parent, -1, "CAD Viewer - pythonOCC%s"%OCC.VERSION, style=wx.DEFAULT_FRAME_STYLE,size = (640,480))
        self.canva = wxViewer3d(self)
        # Creating Menu
        menuBar = wx.MenuBar()
        menu1 = wx.Menu()
        menu1.Append(101, "&Open", "Open a CAD file")
        menu1.Append(102, "&Exit", "Exit application")
        self.Bind(wx.EVT_MENU, self.OnOpen, id=101)
        self.Bind(wx.EVT_MENU, self.OnExit, id=102)
        menuBar.Append(menu1, "&File")
        self.SetMenuBar(menuBar)
       
    def OnOpen(self,event):
        # Choose file dialog
        dlg = wx.FileDialog(
            self, message="Choose a STEP/IGES/STL/BRep file",
            defaultDir=os.getcwd(), 
            defaultFile="",
            wildcard="STEP file (*.step)|*.step|STL files (*.stl)|*.stl|IGES files (*.iges)|*.iges|All files (*.*)|*.*|" ,
            style=wx.OPEN | wx.MULTIPLE | wx.CHANGE_DIR
            )
        if dlg.ShowModal() == wx.ID_OK:
            paths = dlg.GetPaths()
            self.LoadFile(paths[0])
            
    def LoadFile(self,filename):
        extension = os.path.basename(filename).split(".").pop().lower()
        start_time = time.time()
        if extension =="step" or extension == "stp":
            from OCC import STEPControl
            stepReader = STEPControl.STEPControl_Reader()
            stepReader.ReadFile(str(filename))
            numTranslated = stepReader.TransferRoots()
            shape = stepReader.OneShape()
        elif extension == "stl":
            from OCC import TopoDS, StlAPI
            shape = TopoDS.TopoDS_Shape()
            stl_reader = StlAPI.StlAPI_Reader()
            stl_reader.Read(shape,str(filename))
        elif extension =="iges" or extension =="igs":
            from OCC import IGESControl
            i  = IGESControl.IGESControl_Controller()
            i.Init()
            iges_reader = IGESControl.IGESControl_Reader()
            iges_reader.ReadFile(str(filename))
            iges_reader.TransferRoots()
            shape = iges_reader.OneShape()
        elif extension == "brep":
            from OCC import TopoDS, BRep, BRepTools
            shape = TopoDS.TopoDS_Shape()
            builder = BRep.BRep_Builder()
            BRepTools.BRepTools().Read(shape,str(filename),builder)
        else:
            return True
        self.canva._display.DisplayShape(shape)
        end_time = time.time()
        self.SetTitle("CAD Viewer - pythonOCC %s:%s"%(OCC.VERSION,filename))
        duration = end_time-start_time
        print "%s STEP file loaded and displayed in %f seconds."%(filename,duration)
        
    def OnExit(self,event):
        sys.exit(0)

if __name__=="__main__":
    app = wx.PySimpleApp()
    wx.InitAllImageHandlers()
    frame = AppFrame(None)
    frame.Show(True)
    wx.SafeYield() #under Linux, frame must be shown before Display3D is initialized
    frame.canva.InitDriver()
    app.SetTopWindow(frame)
    app.MainLoop()            
