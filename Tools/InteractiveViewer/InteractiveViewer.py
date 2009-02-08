#!/usr/bin/env python

##Copyright 2008 Thomas Paviot
##
##thomas.paviot@free.fr
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
import browser
import urllib

try:
    THISPATH = os.path.dirname(os.path.abspath(__file__))
    IS_EXE = False
except:
    THISPATH = os.path.dirname(os.path.abspath(sys.argv[0]))
    IS_EXE = True
if THISPATH.endswith("zip"):
    THISPATH = os.path.dirname(THISPATH)
    IS_EXE = True

import wx
import wx.aui
import wx.py
from wxDisplay import GraphicsCanva3D
import time
from OCC import STEPControl, StlAPI, IGESControl, TopoDS, BRep, BRepTools

VERSION = "1.0pre3"

def CreateMaskedBitmap(fname, h=16, w=16):
    '''Ceate a masked bitmap where the mask colour is pink.'''
    try:
        img = wx.Bitmap(fname)
        img.SetHeight(h)
        img.SetWidth(w)
        img_mask = wx.Mask(img, wx.Colour(255, 0, 255))
        img.SetMask(img_mask)
        return img
    except:
        return None

def GetRecentFiles(fname):
    '''Open a text file which contains details of the previously opened files.'''
    if os.path.isfile(fname):
        f = open(fname, 'r')
        files = f.read()
        f.close()
        result = []
        for f in files.split('\n'):
            if os.path.isfile(f):
                result.append(f)
        return result
    else: return []

def SaveRecentFiles(filelist, fname):
    '''Save the recent file list to the text file.'''
    if filelist:
        f = open(fname, 'w')
        counter=0
        for filename in filelist:
            if os.path.isfile(filename) and counter<10:
                f.write("%s\n" % filename)
                counter+=1
        f.flush
        f.close

def SaveLayout(maximised, position, size, perspective, fname):
    """Save the application window layout to a file."""
    f = open(fname, 'w')
    f.write("%s\n"%str(maximised))
    f.write("%s\n"%str(position))
    f.write("%s\n"%str(size))
    f.write(perspective)
    f.flush()
    f.close()

def LoadLayout(fname):
    """Read the application layout from a file."""
    try:
        f = open(fname, 'r')
        data = f.read().split("\n")
        maximised = eval(data[0])
        position = list(eval(data[1]))
        if position[0]<0:
            position[0] = 0
        if position[1]<0:
            position[1] = 0
        size = list(eval(data[2]))
        if size[0]<100:
            size[0] = 100
        if size[1]<100:
            size[1] = 100
        perspective = data[3]
        f.close()
        return maximised, position, size, perspective
    except:
        pass
    
def YesNo(parent, question, caption='Yes or no?'): 
    dlg = wx.MessageDialog(parent, question, caption, wx.YES_NO | wx.ICON_QUESTION) 
    result = dlg.ShowModal() == wx.ID_YES 
    dlg.Destroy() 
    return result 
    
class AppFrame(wx.Frame):
    def __init__(self, parent):
        wx.Frame.__init__(self, parent, -1, "pythonOCC Interactive Console %s"%VERSION, style=wx.DEFAULT_FRAME_STYLE,size = (1024,768))
        
        self._mgr = wx.aui.AuiManager()
        self._mgr.SetManagedWindow(self) 

        self._recentfiles = GetRecentFiles(os.path.join(THISPATH, "recentfiles"))
        self.canva = GraphicsCanva3D(self)
        self._mgr.AddPane(self.canva, wx.aui.AuiPaneInfo().Name("Canvas").Caption("Canvas").MaximizeButton().BestSize(wx.Size(300,100)).MinSize(wx.Size(300,100)).CenterPane())
        
        nb = wx.aui.AuiNotebook(self, -1)
        self.notebook = nb
        self._createbrowser()
        self._createpythonshell()
        nb.SetSelection(0)

        start_help_height = self.GetSize()[1]/3
        self._mgr.AddPane(nb, wx.aui.AuiPaneInfo().Name("Help").BestSize(wx.Size(500,500)).MinSize(wx.Size(400, start_help_height)).Right())

        self.tb = self.CreateRightToolbar()        
        self._mgr.AddPane(self.tb, wx.aui.AuiPaneInfo().Name("View").Caption("View").ToolbarPane().Top().TopDockable(True).BottomDockable(True))

        self._mgr.Update()
        self._mgr.GetPane("Help").MinSize((-1,-1)) # now make it so that the help pane can be resized

        self.DefaultPerspective = self._mgr.SavePerspective()
        # Load Layout
        tmp = LoadLayout(os.path.join(THISPATH, "layout"))
        if tmp:
            maximised, position, size, perspective = tmp
            self.LoadedPerspective = perspective
            self._mgr.LoadPerspective(self.LoadedPerspective)
            self._mgr.Update()
            self.SetSize(size)
            self.SetPosition(position)
            if maximised:
                self.Maximize()
        self.statusbar = self.CreateStatusBar(1, wx.ST_SIZEGRIP)

        # Creating Menu
        menuBar = wx.MenuBar()
        FileMenu = wx.Menu()
        
        file_id = wx.NewId()
        FileMenu.Append(file_id, "&Open", "Open a STEP file")
        self.Bind(wx.EVT_MENU, self.OnOpen, id=file_id)

        FileMenu.AppendSeparator()
        saveasbmp_id = wx.NewId()
        FileMenu.Append(saveasbmp_id, "Save as &image\tAlt-I", "Saves the current view as an image.")
        self.Bind(wx.EVT_MENU, self.SaveAsImage, id=saveasbmp_id)
        FileMenu.AppendSeparator()
        
        execpy_id = wx.NewId()
        FileMenu.Append(execpy_id, "Execute Script", "Execute a Python script in the current session.")
        self.Bind(wx.EVT_MENU, self.ExecPyFile, id=execpy_id)
        FileMenu.AppendSeparator()
        
        exit_id = wx.NewId()
        FileMenu.Append(exit_id, "&Exit", "Exit application")
        self.Bind(wx.EVT_MENU, self.OnExit, id=exit_id)

        self.filehistory = wx.FileHistory()
        self.filehistory.UseMenu(FileMenu)
        print self._recentfiles
        if len(self._recentfiles)>0:
            for f in reversed(self._recentfiles):
                self.filehistory.AddFileToHistory(f)
        self.Bind(wx.EVT_MENU_RANGE, self.OnClickRecentFile, id=wx.ID_FILE1, id2=wx.ID_FILE9)
        
        menuBar.Append(FileMenu, "&File")
        # View menu
        viewmenu = wx.Menu()
        restoreperspectiveID = wx.NewId()
        viewmenu.Append(restoreperspectiveID, u'Restore default layout', 'Restore the UI to the default layout.')
        self.Bind(wx.EVT_MENU, self.OnRestoreDefaultPerspective, id=restoreperspectiveID)       
        viewmenu.AppendSeparator()
        v_Top = wx.NewId()
        viewmenu.Append(v_Top, "Top\tAlt-1", "Top View")
        self.Bind(wx.EVT_MENU, self.View_Top, id=v_Top)
        v_Bottom = wx.NewId()
        viewmenu.Append(v_Bottom, "Bottom\tAlt-2", "Bottom View")
        self.Bind(wx.EVT_MENU, self.View_Bottom, id=v_Bottom)
        v_Left = wx.NewId()
        viewmenu.Append(v_Left, "Left\tAlt-3", "Left View")
        self.Bind(wx.EVT_MENU, self.View_Left, id=v_Left)
        v_Right = wx.NewId()
        viewmenu.Append(v_Right, "Right\tAlt-4", "Right View")
        self.Bind(wx.EVT_MENU, self.View_Right, id=v_Right)
        v_Front = wx.NewId()
        viewmenu.Append(v_Front, "Front\tAlt-5", "Front View")
        self.Bind(wx.EVT_MENU, self.View_Front, id=v_Front)
        v_Rear = wx.NewId()
        viewmenu.Append(v_Rear, "Rear\tAlt-6", "Rear View")
        self.Bind(wx.EVT_MENU, self.View_Rear, id=v_Rear)
        v_Iso = wx.NewId()
        viewmenu.Append(v_Iso, "Iso\tAlt-7", "Iso View")
        self.Bind(wx.EVT_MENU, self.View_Iso, id=v_Iso)
        z = wx.NewId()
        viewmenu.Append(z, "Zoom &All\tAlt-A", "Zoom All")
        self.Bind(wx.EVT_MENU, self._zoomall, id=z)
        menuBar.Append(viewmenu, "&View")

        # Selection menu
        selection_menu = wx.Menu()
        s_vertex = wx.NewId()
        selection_menu.Append(s_vertex, u'Vertex', 'Select vertices.')
        self.Bind(wx.EVT_MENU, self.OnSelectionVertex, id=s_vertex)
        s_edge = wx.NewId()
        selection_menu.Append(s_edge, u'Edge', 'Select edges.')
        self.Bind(wx.EVT_MENU, self.OnSelectionEdge, id=s_edge)
        s_face = wx.NewId()
        selection_menu.Append(s_face, u'Face', 'Select faces.')
        self.Bind(wx.EVT_MENU, self.OnSelectionFace, id=s_face)
        s_neutral = wx.NewId()
        selection_menu.Append(s_neutral, u'Neutral', 'Switch back to global shapes selction.')
        self.Bind(wx.EVT_MENU, self.OnSelectionNeutral, id=s_neutral)
        menuBar.Append(selection_menu, "&Selection")

        # DisplayMode menu
        displaymode_menu = wx.Menu()
        d_wireframe = wx.NewId()
        displaymode_menu.Append(d_wireframe, u'Wireframe', 'Switch to wireframe mode.')
        self.Bind(wx.EVT_MENU, self.OnDisplayModeWireframe, id=d_wireframe)
        d_shaded = wx.NewId()
        displaymode_menu.Append(d_shaded, u'Shaded', 'Switch to shaded mode.')
        self.Bind(wx.EVT_MENU, self.OnDisplayModeShaded, id=d_shaded)
        displaymode_menu.AppendSeparator()
        d_qhlr = wx.NewId()
        displaymode_menu.Append(s_face, u'Quick HLR', 'Switch to Quick Hidden Line Removal mode.')
        self.Bind(wx.EVT_MENU, self.OnDisplayModeQHLR, id=d_qhlr)
        d_ehlr = wx.NewId()
        displaymode_menu.Append(s_neutral, u'Exact HLR', 'Switch to Exact Hidden Line Removal mode.')
        self.Bind(wx.EVT_MENU, self.OnDisplayModeEHLR, id=d_ehlr)
        displaymode_menu.AppendSeparator()
        d_aon = wx.NewId()
        displaymode_menu.Append(d_aon, u'AntiAliasing On', 'Enable antialiasing.')
        self.Bind(wx.EVT_MENU, self.OnAntialiasingOn, id=d_aon)
        d_aoff = wx.NewId()
        displaymode_menu.Append(d_aoff, u'Antialiasing Off', 'Disable antialiasing.')
        self.Bind(wx.EVT_MENU, self.OnAntialiasingOff, id=d_aon)
        menuBar.Append(displaymode_menu, "&Display mode")
        
        self.SetMenuBar(menuBar)
        self.Bind(wx.EVT_CLOSE, self.OnClose)
        self._refreshui()

    def CreateRightToolbar(self):
        tb = wx.ToolBar(self, -1, wx.DefaultPosition, wx.DefaultSize, wx.TB_FLAT | wx.TB_NODIVIDER ) #| wx.TB_VERTICAL )

        tb.SetToolBitmapSize((24, 24))
        zoom_all = CreateMaskedBitmap(os.path.join(THISPATH, 'icons', 'zoom_all.bmp'), 24, 24)
        pointer = CreateMaskedBitmap(os.path.join(THISPATH, 'icons', 'pointer.bmp'), 24, 24)
        zoom = CreateMaskedBitmap(os.path.join(THISPATH, 'icons', 'zoom.bmp'), 24, 24)
        pan = CreateMaskedBitmap(os.path.join(THISPATH, 'icons', 'pan.bmp'), 24, 24)
        rotate = CreateMaskedBitmap(os.path.join(THISPATH, 'icons', 'rotate.bmp'), 24, 24)
        
        zoom_allID = wx.NewId()
        tb.AddTool(id=zoom_allID, bitmap=zoom_all, 
                       shortHelpString="Zoom All",
                       longHelpString="Zoom out to show all of the visible geometry.")
        self.Bind(wx.EVT_TOOL, self._zoomall, id=zoom_allID)

        self.PointerID = wx.NewId()
        tb.AddCheckTool(id=self.PointerID, bitmap=pointer, 
                       shortHelp="Pointer",
                       longHelp="Select.")
        self.Bind(wx.EVT_TOOL, self._pointer, id=self.PointerID)

        self.zoomID = wx.NewId()
        tb.AddCheckTool(id=self.zoomID, bitmap=zoom , 
                       shortHelp="Dynamic Zoom",
                       longHelp="Dynamically zoom in and out when the mouse moves.")
        self.Bind(wx.EVT_TOOL, self._dynamiczoom, id=self.zoomID)

        self.panID = wx.NewId()
        tb.AddCheckTool(id=self.panID, bitmap=pan, 
                       shortHelp="Pan",
                       longHelp="Pan the view as when the mouse moves.")
        self.Bind(wx.EVT_TOOL, self._pan, id=self.panID)

        self.rotateID = wx.NewId()
        tb.AddCheckTool(id=self.rotateID, bitmap=rotate, 
                       shortHelp="Rotate",
                       longHelp="Dynamically rotate the view when the mouse moves.")
        self.Bind(wx.EVT_TOOL, self._rotate, id=self.rotateID)
        
        tb.Realize()
        
        return tb

    def ExecPyFile(self, event):
        if not hasattr(self, "workingdir"):
            self.workingdir = "."
        dlg=wx.FileDialog(self, "Execute Script", self.workingdir, "",
                         "Python Files (*.py)|*.py|All Files (*.*)|*.*",
                         wx.OPEN)
        if dlg.ShowModal()<>wx.ID_OK:
            dlg.Destroy()
            return False
        
        fullpathname = dlg.GetPath()
        self.workingdir = os.path.dirname(fullpathname)
        
        wx.BeginBusyCursor()
        try:
            if self.pyshell:
                locals = self.pyshell.interp.locals
            else:
                locals = None
            execfile(fullpathname, locals)
        except Exception, errno:
            msg = "Error in script [%s]\n%s"%(fullpathname, errno)
            dlg = wx.MessageDialog(self, msg, "Method Error", wx.OK | wx.ICON_INFORMATION) 
            dlg.ShowModal() 
            dlg.Destroy() 
            msg = "Unable to execute script [%s]"%(fullpathname)
        wx.EndBusyCursor()
        
    def OnRestoreDefaultPerspective(self, event):
        """Restore the UI to the default layout."""
        self._mgr.LoadPerspective(self.DefaultPerspective)
        has_help_pane = False
        has_py_pane = False
        for i in range(self.notebook.PageCount):
            pagetext = self.notebook.GetPageText(i)
            if pagetext=="Help":
                has_help_pane = True
            if pagetext=="Python":
                has_py_pane = True
        if not has_help_pane:
            self._createbrowser()
        if not has_py_pane:
            self._createpythonshell()

    def _clearall(self, event):
        self.canva._3dDisplay.EraseAll()

    def _refreshui(self):
        setpointer = True
        if self.canva.DynaZoom or self.canva.DynaPan or self.canva.DynaRotate:
            setpointer = False
        self.tb.ToggleTool(self.PointerID, setpointer)
        self.tb.ToggleTool(self.zoomID, self.canva.DynaZoom)
        self.tb.ToggleTool(self.panID, self.canva.DynaPan)
        self.tb.ToggleTool(self.rotateID, self.canva.DynaRotate)
        self.canva.SetDynaCursor()
      
    def SaveAsImage(self, event):
        if not hasattr(self, "workingdir"):
            self.workingdir = "."
        dlg=wx.FileDialog(self, "Save", self.workingdir, "Image.bmp",
                         "Bitmap file (*.bmp)|*.bmp|All Files (*.*)|*.*",
                         wx.SAVE | wx.HIDE_READONLY )
        if dlg.ShowModal()!=wx.ID_OK:
            dlg.Destroy()
            return False
        else:
            self.canva._3dDisplay.Repaint()
            imagefilename = dlg.GetPath()
            dlg.Destroy()   
            if imagefilename:
                self.canva._3dDisplay.Repaint()
                self.canva.SaveAsImage(str(imagefilename))
        
    def OnRestoreDefaultPerspective(self, event):
        """Restore the UI to the default layout."""
        self._mgr.LoadPerspective(self.DefaultPerspective)
        has_help_pane = False
        has_py_pane = False
        for i in range(self.notebook.PageCount):
            pagetext = self.notebook.GetPageText(i)
            if pagetext=="Help":
                has_help_pane = True
            if pagetext=="Python":
                has_py_pane = True
        if not has_help_pane:
            self._createbrowser()
        if not has_py_pane:
            self._createpythonshell()

    def _createbrowser(self):
        url = os.path.join(THISPATH, "doc", "index.html")
        b = browser.Browser(self.notebook, url)
        self.browser = b
        help_icon = CreateMaskedBitmap(os.path.join(THISPATH, 'icons', 'help.png'), 16, 16)
        self.notebook.AddPage(b, "Help", True, help_icon)
        
    def _createpythonshell(self):
        intronote = "Interactive Python Shell for pythonOCC."
        py = wx.py.shell.Shell(self.notebook, -1, introText=intronote)
        py.interp.locals["self"] = self
        py.interp.locals["canvas"] = self.canva
        if sys.platform=='win32':
            py.interp.locals["display"] = self.canva._3dDisplay
        py_icon = CreateMaskedBitmap(os.path.join(THISPATH, 'icons', 'py.png'), 16, 16)
        self.notebook.AddPage(py, "Python shell", True, py_icon)
        self.pyshell = py
        
    def View_Top(self, event):
        self.canva._3dDisplay.View_Top()

    def View_Bottom(self, event):
        self.canva._3dDisplay.View_Bottom()

    def View_Left(self, event):
        self.canva._3dDisplay.View_Left()
        
    def View_Right(self, event):
        self.canva._3dDisplay.View_Right()
        
    def View_Front(self, event):
        self.canva._3dDisplay.View_Front()
        
    def View_Rear(self, event):
        self.canva._3dDisplay.View_Rear()
        
    def View_Iso(self, event):
        self.canva._3dDisplay.View_Iso()

    def OnSelectionVertex(self, event):
        self.canva._3dDisplay.SetSelectionModeVertex()

    def OnSelectionEdge(self, event):
        self.canva._3dDisplay.SetSelectionModeEdge()

    def OnSelectionFace(self, event):
        self.canva._3dDisplay.SetSelectionModeFace()

    def OnSelectionNeutral(self, event):
        self.canva._3dDisplay.SetSelectionModeNeutral()
    
    def OnDisplayModeWireframe(self, event):
        self.canva._3dDisplay.SetModeWireFrame()
    
    def OnDisplayModeShaded(self, event):
        self.canva._3dDisplay.SetModeShaded()
    
    def OnDisplayModeQHLR(self, event):
        self.canva._3dDisplay.SetModeQuickHLR()
    
    def OnDisplayModeEHLR(self, event):
        self.canva._3dDisplay.SetModeExactHLR()
    
    def OnAntialiasingOn(self, event):
        self.canva._3dDisplay.EnableAntiAliasing()
    
    def OnAntialiasingOff(self, event):
        self.canva._3dDisplay.DisableAntiAliasing()

    def _zoomall(self, event):
        self.canva.SetTogglesToFalse(event)
        self.canva.ZoomAll()
        self._refreshui()

    def _pointer(self, event):
        self.canva.SetTogglesToFalse(event)
        self._refreshui()
        
    def _dynamiczoom(self, event):
        self.canva.SetTogglesToFalse(event)
        self.canva.DynaZoom = True
        self._refreshui()
        
    def _pan(self, event):
        self.canva.SetTogglesToFalse(event)
        self.canva.DynaPan = True
        self._refreshui()
    
    def _rotate(self, event):
        self.canva.SetTogglesToFalse(event)
        self.canva.DynaRotate = True
        self._refreshui()
        
    def OnOpen(self,event):
        # Choose file dialog
        if not hasattr(self, "_workingdir"):
            self._workingdir = "."
        wild = "STEP (*.step)|*.step|"     \
           "IGES (*.iges)|*.iges|" \
           "STL (*.stl)|*.stl|"    \
           "BRep (*.brep)|*.brep|"   \
           "All files (*.*)|*.*"
        dlg = wx.FileDialog(
            self, message="Choose a file",
            defaultDir=self._workingdir, 
            defaultFile="",
            wildcard = wild,
            style=wx.OPEN | wx.CHANGE_DIR
            )
        if dlg.ShowModal()<>wx.ID_OK:
            dlg.Destroy()
            return
        path = dlg.GetPath()
        self._workingdir = os.path.dirname(path)
        self._addRecentFileToList(path)
        dlg.Destroy()
        self.LoadFile(path)
        
    def OnClickRecentFile(self, event):
        # get the file based on the menu ID
        fileNum = event.GetId() - wx.ID_FILE1
        fname = self.filehistory.GetHistoryFile(fileNum)
        self.LoadFile(fname)
        
    def LoadFile(self, filename):
        extension = os.path.basename(filename).split(".").pop().lower()
        start_time = time.time()
        if extension =="step" or extension == "stp":
            stepReader = STEPControl.STEPControl_Reader()
            stepReader.ReadFile(str(filename))
            numTranslated = stepReader.TransferRoots()
            shape = stepReader.OneShape()
        elif extension == "stl":
            shape = TopoDS.TopoDS_Shape()
            stl_reader = StlAPI.StlAPI_Reader()
            stl_reader.Read(shape,str(filename))
        elif extension =="iges" or extension =="igs":
            i  = IGESControl.IGESControl_Controller()
            i.Init()
            iges_reader = IGESControl.IGESControl_Reader()
            iges_reader.ReadFile(str(filename))
            iges_reader.TransferRoots()
            shape = iges_reader.OneShape()
        elif extension == "brep":
            shape = TopoDS.TopoDS_Shape()
            builder = BRep.BRep_Builder()
            BRepTools.BRepTools().Read(shape,str(filename),builder)
        else:
            return True
        self.canva._3dDisplay.DisplayShape(shape)
        wx.SafeYield()
        self.canva._3dDisplay.Tumble(314)
        end_time = time.time()
        self.SetTitle("pythonOCC Interactive Console %s:%s"%(VERSION,filename))
        duration = end_time-start_time
        print "%s STEP file loaded and displayed in %f seconds."%(filename,duration)
        
    def OnExit(self, event):
        self.OnClose(event)
        
    def OnClose(self, event):
        SaveRecentFiles(self._recentfiles, os.path.join(THISPATH, "recentfiles"))
        print "Closing window."
        if YesNo(self, u"Are you sure?", caption=u'Exit application.'):
            self._mgr.UnInit()
            self.Destroy()             
        
    def _addRecentFileToList(self, fname):
        while fname in self._recentfiles:
            self._recentfiles.remove(fname)
        self._recentfiles.insert(0, fname)
        self.filehistory.AddFileToHistory(fname)
    
if __name__=="__main__":
    app = wx.PySimpleApp()
    wx.InitAllImageHandlers()
    frame = AppFrame(None)
    if sys.platform=='win32':
        frame.Show(True)
    else:
        frame.Show(True)
        wx.SafeYield()
        frame.canva.Init3dViewer()
        frame.pyshell.interp.locals["display"] = frame.canva._3dDisplay        
    app.SetTopWindow(frame)
    app.MainLoop()            
