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

import os, os.path

import OCC.Visualization
import OCC.V3d
import OCC.AIS
import OCC.TopoDS

import sys

class Texture(object):
    """
    This class encapsulates the necessary texture properties:
    Filename, toScaleU, etc.
    """
    def __init__(self, filename):
        if not os.path.isfile(filename):
            raise "File doesn't exist"
        self._filename = os.path._getfullpathname(filename) #required for OCC
        self._toScaleU = 1.0
        self._toScaleV = 1.0
        self._toRepeatU = 1.0
        self._toRepeatV = 1.0
        self._originU = 0.0
        self._originV = 0.0
        
    def TextureScale(self,toScaleU, toScaleV):
        self._toScaleU = toScaleU
        self._toScaleV = toScaleV
        
    def TextureRepeat(self,toRepeatU, toRepeatV):
        self._toRepeatU = toRepeatU
        self._toRepeatV = toRepeatV
        
    def TextureOrigin(self, originU, originV):
        self._originU = originU
        self._originV = originV
    
    def GetProperties(self):
        return (self._filename,\
                self._toScaleU,self._toScaleV,\
                self._toRepeatU, self._toRepeatV,\
                self._originU, self._originV)
        
class Viewer3d(OCC.Visualization.Display3d):
    def __init__(self, window_handle ):
        OCC.Visualization.Display3d.__init__(self)
        self._window_handle = window_handle
        self._inited = False
        self._local_context_opened = False
        self.AISContext_handle = None
        self.V3dViewer_handle = None
        self.V3dView_handle = None
        self.AISContext = None
        self.V3dViewer = None
        self.V3dView = None
        self._objects_displayed = []#list to save in memory displayed objects
        
    def Create(self):
        try:
            os.environ["CSF_GraphicShr"]
        except KeyError:
            raise "Please set the CSF_GraphicShr environment variable."
        if sys.platform!='win32':
            try:
                os.environ['DISPLAY']
            except KeyError:
                raise "Please set the DISPLAY environment variable."
        self.Init(self._window_handle)
        self.AISContext_handle = self.GetContext()
        self.V3dViewer_handle = self.GetV3dViewer()
        self.V3dView_handle = self.GetV3dView()
        self.AISContext = self.AISContext_handle.GetObject()
        self.V3dViewer = self.V3dViewer_handle.GetObject()
        self.V3dView = self.V3dView_handle.GetObject()
        self._inited = True
    
    def MoveTo(self,X,Y):
        self.AISContext.MoveTo(X,Y,self.V3dView_handle)
        
    def OnResize(self):
        self.V3dView.MustBeResized()

    def ResetView(self):
        self.V3dView.Reset()
        
    def FitAll(self):
        self.V3dView.ZFitAll()
        self.V3dView.FitAll()
    
    def Repaint(self):
        self.V3dViewer.Redraw()
        
    def SetModeWireFrame(self):
        self.V3dView.SetComputedMode(False)
        self.AISContext.SetDisplayMode(OCC.AIS.AIS_WireFrame)

    def SetModeShaded(self):
        self.V3dView.SetComputedMode(False)
        self.V3dView.SetAntialiasingOff()
        self.AISContext.SetDisplayMode(OCC.AIS.AIS_Shaded)
     
    def SetModeQuickHLR(self):
        self.V3dView.SetComputedMode(True)
        self.AISContext.SetDisplayMode(OCC.AIS.AIS_QuickHLR)
    
    def SetModeExactHLR(self):
        self.V3dView.SetComputedMode(True)
        self.AISContext.SetDisplayMode(OCC.AIS.AIS_ExactHLR)
    
    def View_Top(self):
        self.V3dView.SetProj(OCC.V3d.V3d_Zpos) 

    def View_Bottom(self):
        self.V3dView.SetProj(OCC.V3d.V3d_Zneg)
        
    def View_Left(self):
        self.V3dView.SetProj(OCC.V3d.V3d_Xneg)

    def View_Right(self):
        self.V3dView.SetProj(OCC.V3d.V3d_Xpos)

    def View_Front(self):
        self.V3dView.SetProj(OCC.V3d.V3d_Yneg)

    def View_Rear(self):
        self.V3dView.SetProj(OCC.V3d.V3d_Ypos)

    def View_Iso(self):
        self.V3dView.SetProj(OCC.V3d.V3d_XposYnegZpos)
        
    def ExportToImage(self,Filename):
        self.V3dView.Dump(Filename)

    def SetBackgroundImage(self, Filename, Stretch = True):
        if (Stretch):
            self.V3dView.SetBackgroundImage(Filename, OCC.Aspect.Aspect_FM_STRETCH, True)
        else:
            self.V3dView.SetBackgroundImage(Filename, OCC.Aspect.Aspect_FM_NONE, True )

    def DisplayShape(self,shape,material=None,texture=None):
        if material:#careful: != operator segfaults
            self.V3dView.SetSurfaceDetail(OCC.V3d.V3d_TEX_ALL)
            shape_to_display = OCC.AIS.AIS_TexturedShape(shape)
            shape_to_display.SetMaterial(material)
            if texture:
                filename, toScaleU, toScaleV, toRepeatU, toRepeatV, originU, originV = texture.GetProperties()
                shape_to_display.SetTextureFileName(OCC.TCollection.TCollection_AsciiString(filename))
                shape_to_display.SetTextureMapOn()
                shape_to_display.SetTextureScale(True, toScaleU, toScaleV)
                shape_to_display.SetTextureRepeat(True, toRepeatU, toRepeatV)
                shape_to_display.SetTextureOrigin(True, originU, originV)
                shape_to_display.SetDisplayMode(3);
        else:
            shape_to_display = OCC.AIS.AIS_Shape(shape)
        self._objects_displayed.append(shape_to_display)
        self.AISContext.Display(shape_to_display.GetHandle())
        self.FitAll()
    
    def DisplayTriedron(self):
        self.V3dView.TriedronDisplay(OCC.Aspect.Aspect_TOTP_RIGHT_LOWER, OCC.Quantity.Quantity_NOC_WHITE, 0.08,  OCC.V3d.V3d_WIREFRAME)
        self.Repaint()
    
    def EnableAntiAliasing(self):
        self.V3dView.SetAntialiasingOn()
        self.Repaint()

    def DisableAntiAliasing(self):
        self.V3dView.SetAntialiasingOff()
        self.Repaint()
    
    def RemoveAll(self):
        self._objects_displayed = []
        self.AISContext.EraseAll()
        
    def Tumble(self,NumImages,Animation = True):
        self.V3dView.Tumble(NumImages, Animation)
        
    def Pan(self,Dx,Dy):
        self.V3dView.Pan(Dx,Dy)
    
    def SetSelectionMode(self,mode = OCC.TopAbs.TopAbs_FACE):
        self.AISContext.CloseAllContexts()
        self.AISContext.OpenLocalContext()
        self.AISContext.ActivateStandardMode(mode)
    
    def OpenLocalContext(self):
        if not self._local_context_opened:
            self.AISContext.OpenLocalContext()
            self._local_context_opened = True
        
    def SetSelectionModeVertex(self):
        #self.AISContext.CloseAllContexts()
        #self.AISContext.OpenLocalContext()
        self.OpenLocalContext()
        self.AISContext.ActivateStandardMode(OCC.TopAbs.TopAbs_VERTEX)
        
    def SetSelectionModeEdge(self):
        #self.AISContext.CloseAllContexts()
        #self.AISContext.OpenLocalContext()
        self.OpenLocalContext()
        self.AISContext.ActivateStandardMode(OCC.TopAbs.TopAbs_EDGE)
        
    def SetSelectionModeFace(self):
        #self.AISContext.CloseAllContexts()
        #self.AISContext.OpenLocalContext()
        self.OpenLocalContext()
        self.AISContext.ActivateStandardMode(OCC.TopAbs.TopAbs_FACE)        
        
    def SetSelectionModeShape(self):
        self.AISContext.CloseAllContexts()
        self.AISContext.OpenLocalContext()
        self.AISContext.ActivateStandardMode(OCC.TopAbs.TopAbs_SHAPE)        
    
    def SetSelectionModeNeutral(self):
        self.AISContext.CloseAllContexts()
        
    def Select(self,X,Y):
        self.AISContext.Select()
        self.AISContext.InitSelected()
        print self.AISContext.MoreSelected()
        if self.AISContext.MoreSelected():
            if self.AISContext.HasSelectedShape():
                print "Something selected"
                selected_shape = self.AISContext.SelectedShape()
                print selected_shape
        else:
            print "Nothing selected"
            selected_shape = None
        
    def Rotation(self,X,Y):
        self.V3dView.Rotation(X,Y)
    
    def DynamicZoom(self,X1,Y1,X2,Y2):
        self.V3dView.Zoom(X1,Y1,X2,Y2)
    
    def ZoomArea(self,X1,Y1,X2,Y2):
        self.V3dView.WindowFit(X1,Y1,X2,Y2)
    
    def Zoom(self,X,Y):
        self.V3dView.Zoom(X,Y)
    
    def StartRotation(self,X,Y):
        self.V3dView.StartRotation(X,Y)

if __name__=="__main__":
    import wx
    class AppFrame(wx.Frame):
        def __init__(self, parent):
            wx.Frame.__init__(self, parent, -1, "wxDisplay3d sample", style=wx.DEFAULT_FRAME_STYLE,size = (640,480))
            self.viewer3d = Viewer3d(self.GetHandle())
            menuBar = wx.MenuBar()
            menu = wx.Menu()
            menu.Append(101,"Test 1")
            self.Bind(wx.EVT_MENU,self.RunTest1,id = 101)
            menu.Append(102,"Test 2")
            self.Bind(wx.EVT_MENU,self.RunTest2,id = 102)
            menu.Append(103,"Test 3")
            self.Bind(wx.EVT_MENU,self.RunTest3,id = 103)
            menu.Append(104,"Test 4")
            self.Bind(wx.EVT_MENU,self.RunTest4,id = 104)
            menuBar.Append(menu, "&Tests")
            self.SetMenuBar(menuBar)
            
        def RunTest1(self, event):
            box = OCC.BRepPrimAPI.BRepPrimAPI_MakeBox(10,20,30)
            box_shape = box.Shape()
            self.viewer3d.DisplayShape(box_shape)
            
        def RunTest2(self, event):
            c = self.viewer3d.AISContext.NbCurrents()        
            print "NbCurrents:%i"%c
            
        def RunTest3(self, event):
            pass
        
        def RunTest4(self, event):
            pass
        
        def testTexure(self):
            material = OCC.Graphic3d_MaterialAspect(OCC.Graphic3d.Graphic3d_NOM_GOLD)
            #
            # Creating Texture
            #
            texture = Texture("carrelage1.gif")
            box = OCC.BRepPrimAPI.BRepPrimAPI_MakeBox(10,20,30).Shape()
            self.viewer3d.DisplayShape(box_shape,material,texture)
    
    app = wx.PySimpleApp()
    wx.InitAllImageHandlers()
    frame = AppFrame(None)
    frame.Show(True)
    wx.SafeYield()
    frame.viewer3d.Create()
    frame.viewer3d.SetSelectionMode()
    app.SetTopWindow(frame)
    app.MainLoop()          
    