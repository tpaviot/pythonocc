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

import sys, os
import wx
from OCC.Display.wxDisplay import wxViewer3d
from OCC import VERSION
import time

class ViewerFrame(wx.MDIChildFrame):
     def __init__(self, parent):
        wx.MDIChildFrame.__init__(self, parent, -1, "", style=wx.DEFAULT_FRAME_STYLE,size = (640,480))
        self.canva = wxViewer3d(self)
            
     def LoadFile(self,filename):
        extension = os.path.basename(filename).split(".").pop().lower()
        start_time = time.time()
        if extension =="step" or extension == "stp":
            from OCC.DataExchange.STEP import STEPImporter
            stepReader = STEPImporter(str(filename))
            stepReader.read_file()
            shape = stepReader.get_shapes()
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
        self.SetTitle("CAD Viewer - pythonOCC %s:%s"%(VERSION,filename))
        duration = end_time-start_time
        print "%s STEP file loaded and displayed in %f seconds."%(filename,duration)
        
class AppFrame(wx.MDIParentFrame):
    def __init__(self, parent):
        wx.MDIParentFrame.__init__(self, parent, -1, "CAD Viewer MDI - pythonOCC %s"%VERSION, style=wx.DEFAULT_FRAME_STYLE,size = (800,600))
        # Creating Menu
        menuBar = wx.MenuBar()
        menu1 = wx.Menu()
        menu1.Append(101, "&Open", "Open a STEP file")
        menu1.Append(102, "&Exit", "Exit application")     
        self.Bind(wx.EVT_MENU, self.OnOpen, id=101)
        self.Bind(wx.EVT_MENU, self.OnExit, id=102)
        menu2 = wx.Menu()
        menu2.Append(103, "&About", "")
        self.Bind(wx.EVT_MENU, self.OnAbout, id=103)
        menuBar.Append(menu1, "&File")
        menuBar.Append(menu2, "&Help")
        self.SetMenuBar(menuBar)
       
    def OnOpen(self,event):
        # Choose file dialog
        dlg = wx.FileDialog(
            self, message="Choose a STEP",
            defaultDir=os.getcwd(), 
            defaultFile="",
            wildcard="",#STEP file (*.step)|*.step|STL files (*.stl)|*.stl|IGES files (*.iges)|*.iges| All files (*.*)|*.*|" ,
            style=wx.OPEN | wx.MULTIPLE | wx.CHANGE_DIR
            )
        if dlg.ShowModal() == wx.ID_OK:
            paths = dlg.GetPaths()
            # create another child frame
            new_frame = ViewerFrame(self)
            new_frame.Show(True)
            new_frame.canva.InitDriver()
            wx.SafeYield()
            new_frame.LoadFile(paths[0])
            
    def OnAbout(self, event):
        info = wx.AboutDialogInfo()    
        info.Name = "CAD Viewer"
        info.Version = VERSION
        info.Copyright = "(C) 2008-2011 Thomas Paviot"
        info.Description = """CAD Viewer is part of pythonOCC, an free set of Python bindings to OpenCascade library.
        This sample can open and display STEP, STL and IGES CAD files."""
        info.WebSite = ("http://www.pythonocc.org", "pythonOCC home page")
        info.Developers = [ "Thomas Paviot (tpaviot@gmail.com)"]
        info.License = """This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>."""
        wx.AboutBox(info)
        
    def OnExit(self,event):
        sys.exit(0)

if __name__=="__main__":
    app = wx.PySimpleApp()
    wx.InitAllImageHandlers()
    frame = AppFrame(None)
    frame.Show(True)
    app.SetTopWindow(frame)
    app.MainLoop()            
