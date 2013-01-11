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

import os, os.path, types
import sys
import subprocess
from ctypes import util

import OCC.Visualization
import OCC.V3d
import OCC.V2d
import OCC.AIS
import OCC.AIS2D
import OCC.Quantity
import OCC.TopoDS
import OCC.Visual3d
import OCC.NIS
import OCC.Prs3d

from OCC.TopoDS import *


def set_CSF_GraphicShr():
    # Sets the CSF_GraphicShr env var if not already set up
    if not os.environ.has_key('CSF_GraphicShr'):
        os.environ['CSF_GraphicShr'] = util.find_library('TKOpenGl')

if not (sys.platform == 'win32'):
    set_CSF_GraphicShr()

class BaseDriver(object):
    """
    The base driver class for both Driver2d and Driver3d classes
    """
    def __init__(self, window_handle):
        self._window_handle = window_handle
        self._inited = False
        self._local_context_opened = False
        self.Context_handle = None
        self.Viewer_handle = None
        self.View_handle = None
        self.Context = None
        self.Viewer = None
        self.View = None
        self.selected_shape = None
        self.selected_shapes = []       
    
    def MoveTo(self,X,Y):
        self.Context.MoveTo(X,Y,self.View_handle)
      
    def FitAll(self):
        self.View.ZFitAll()
        self.View.FitAll()
    
    def SetWindow(self,window_handle):
        self._window_handle = window_handle
        
    def Create(self, create_default_lights = True):
        if sys.platform!='win32':
            try:
                os.environ['DISPLAY']
            except KeyError:
                raise AssertionError("Please set the DISPLAY environment variable.")
        self.Init(self._window_handle)
        self.Context_handle = self.GetContext()
        self.Viewer_handle = self.GetViewer()
        self.View_handle = self.GetView()
        self.Context = self.Context_handle.GetObject()
        self.Viewer = self.Viewer_handle.GetObject()
        if create_default_lights:
            self.Viewer.SetDefaultLights()
            self.Viewer.SetLightOn()
        self.View = self.View_handle.GetObject()
        self._inited = True
        
        # nessecary for text rendering
        try:
            self._struc_mgr = self.Context.MainPrsMgr().GetObject().StructureManager()
        except:
            pass
        
class Viewer3d(BaseDriver, OCC.Visualization.Display3d):
    def __init__(self, window_handle ):
        BaseDriver.__init__(self,window_handle)
        OCC.Visualization.Display3d.__init__(self)
        self.selected_shape = None
                
    def OnResize(self):
        self.View.MustBeResized()

    def ResetView(self):
        self.View.Reset()
    
    def Repaint(self):
        self.Viewer.Redraw()
        
    def SetModeWireFrame(self):
        self.View.SetComputedMode(False)
        self.Context.SetDisplayMode(OCC.AIS.AIS_WireFrame)

    def SetModeShaded(self):
        self.View.SetComputedMode(False)
        if sys.platform=='win32':
            self.View.SetAntialiasingOff()
        self.Context.SetDisplayMode(OCC.AIS.AIS_Shaded)
     
    def SetModeQuickHLR(self):
        self.View.SetComputedMode(True)
        self.Context.SetDisplayMode(OCC.AIS.AIS_QuickHLR)
    
    def SetModeExactHLR(self):
        self.View.SetComputedMode(True)
        self.Context.SetDisplayMode(OCC.AIS.AIS_ExactHLR)
        
    def SetOrthographic(self, _bool):
        '''
        sets whether this view is a orthographic or perspective view
        @param _bool:
        '''
        pass
        
    def View_Top(self):
        self.View.SetProj(OCC.V3d.V3d_Zpos) 

    def View_Bottom(self):
        self.View.SetProj(OCC.V3d.V3d_Zneg)
        
    def View_Left(self):
        self.View.SetProj(OCC.V3d.V3d_Xneg)

    def View_Right(self):
        self.View.SetProj(OCC.V3d.V3d_Xpos)

    def View_Front(self):
        self.View.SetProj(OCC.V3d.V3d_Yneg)

    def View_Rear(self):
        self.View.SetProj(OCC.V3d.V3d_Ypos)

    def View_Iso(self):
        self.View.SetProj(OCC.V3d.V3d_XposYnegZpos)
        
    def ExportToImage(self,Filename):
        self.View.Dump(Filename)

    def SetBackgroundImage(self, filename, Stretch = True):
        if not os.path.isfile(filename):
            raise IOError("image file %s not found."%filename)
        if (Stretch):
            self.View.SetBackgroundImage(filename, OCC.Aspect.Aspect_FM_STRETCH, True)
        else:
            self.View.SetBackgroundImage(filename, OCC.Aspect.Aspect_FM_NONE, True )
            
    def DisplayMessage(self,point,text_to_write, update=True):
        """
        point: a gp_Pnt instance
        text_to_write: a string
        """
        # TODO - should be imported!
        def to_string_extended(_str):
            from OCC.TCollection import TCollection_ExtendedString as String
            return String(_str)
        
        aPresentation = OCC.Prs3d.Prs3d_Presentation(self._struc_mgr)
        text_aspect = OCC.Prs3d.Prs3d_TextAspect()
        OCC.Prs3d.Prs3d_Text().Draw(aPresentation.GetHandle(),
                                 text_aspect.GetHandle(),
                                  to_string_extended(text_to_write),
                                   point)
        aPresentation.Display()
        # it would be more coherent if a AIS_InteractiveObject would be returned
        if update:
            self.Repaint()
        return aPresentation

    def DisplayShape(self, shapes, material=None, texture=None, update=False):
        '''
        '''
        
        if issubclass(shapes.__class__, TopoDS_Shape):
            shapes = [shapes]
            SOLO = True
        else:
            SOLO = False
            
        ais_shapes = []

        for shape in shapes:
            if material or texture:#careful: != operator segfaults
                self.View.SetSurfaceDetail(OCC.V3d.V3d_TEX_ALL)
                shape_to_display = OCC.AIS.AIS_TexturedShape(shape)
                if material:
                    shape_to_display.SetMaterial(material)
                if texture:
                    filename, toScaleU, toScaleV, toRepeatU, toRepeatV, originU, originV = texture.GetProperties()
                    shape_to_display.SetTextureFileName(OCC.TCollection.TCollection_AsciiString(filename))
                    shape_to_display.SetTextureMapOn()
                    shape_to_display.SetTextureScale(True, toScaleU, toScaleV)
                    shape_to_display.SetTextureRepeat(True, toRepeatU, toRepeatV)
                    shape_to_display.SetTextureOrigin(True, originU, originV)
                    shape_to_display.SetDisplayMode(3);
                ais_shapes.append(shape_to_display.GetHandle())
            else:
                shape_to_display = OCC.AIS.AIS_Shape(shape)
                ais_shapes.append(shape_to_display.GetHandle())
            if update:
                # only update when explicitely told to do so
                self.Context.Display(shape_to_display.GetHandle(), True)
                # especially this call takes up a lot of time...
                self.FitAll()
            else:
                self.Context.Display(shape_to_display.GetHandle(), False)
            
        if SOLO:
            return  ais_shapes[0]
        else:
            return ais_shapes

    def DisplayColoredShape(self, shapes, color='YELLOW', update=True, ):
        ais_shapes = []

        if isinstance(color, str):
            dict_color = {'WHITE':OCC.Quantity.Quantity_NOC_WHITE,
                          'BLUE':OCC.Quantity.Quantity_NOC_BLUE1,
                          'RED':OCC.Quantity.Quantity_NOC_RED,
                          'GREEN':OCC.Quantity.Quantity_NOC_GREEN,
                          'YELLOW':OCC.Quantity.Quantity_NOC_YELLOW,
                          # new
                          'CYAN':OCC.Quantity.Quantity_NOC_CYAN1,
                          'WHITE':OCC.Quantity.Quantity_NOC_WHITE,
                          'BLACK':OCC.Quantity.Quantity_NOC_BLACK,
                          'ORANGE':OCC.Quantity.Quantity_NOC_ORANGE, }
            color = dict_color[color]
        elif isinstance(color, OCC.Quantity.Quantity_Color):
            pass
        else:
            raise ValueError('color should either be a string ( "BLUE" ) or a Quantity_Color(0.1, 0.8, 0.1) got %s' % color)

        if issubclass(shapes.__class__, TopoDS_Shape):
            shapes = [shapes]
            SOLO = True
        else:
            SOLO = False
            
        for shape in shapes:
            shape_to_display = OCC.AIS.AIS_Shape(shape).GetHandle()
            self.Context.SetColor(shape_to_display,color,0)
            ais_shapes.append(shape_to_display)
            if update:
                self.Context.Display(shape_to_display, True)
                self.FitAll()
            else:
                # don't update the view when shape_to_display is added
                # comes in handy when adding lots and lots of objects 
                self.Context.Display(shape_to_display, False)
  
        if SOLO:
            return ais_shapes[0]
        else:
            return ais_shapes
        
    def DisplayTriedron(self):
        self.View.TriedronDisplay(OCC.Aspect.Aspect_TOTP_RIGHT_LOWER, OCC.Quantity.Quantity_NOC_BLACK, 0.08,  OCC.V3d.V3d_WIREFRAME)
        self.Repaint()
    
    def EnableAntiAliasing(self):
        self.View.SetAntialiasingOn()
        self.Repaint()

    def DisableAntiAliasing(self):
        self.View.SetAntialiasingOff()
        self.Repaint()
    
    def EraseAll(self):
        self._objects_displayed = []
        # nessecary to remove text added by DisplayMessage
        self.Context.PurgeDisplay()
        self.Context.EraseAll()
        
    def Tumble(self,NumImages,Animation = True):
        self.View.Tumble(NumImages, Animation)
        
    def Pan(self,Dx,Dy):
        self.View.Pan(Dx,Dy)
    
    def SetSelectionMode(self,mode = OCC.TopAbs.TopAbs_FACE):
        self.Context.CloseAllContexts()
        self.Context.OpenLocalContext()
        self.Context.ActivateStandardMode(mode)
        
    def SetSelectionModeVertex(self):
        self.Context.CloseAllContexts()
        self.Context.OpenLocalContext()
        self.Context.ActivateStandardMode(OCC.TopAbs.TopAbs_VERTEX)
        
    def SetSelectionModeEdge(self):
        self.Context.CloseAllContexts()
        self.Context.OpenLocalContext()
        self.Context.ActivateStandardMode(OCC.TopAbs.TopAbs_EDGE)
        
    def SetSelectionModeFace(self):
        self.Context.CloseAllContexts()
        self.Context.OpenLocalContext()
        self.Context.ActivateStandardMode(OCC.TopAbs.TopAbs_FACE)        
        
    def SetSelectionModeShape(self):
        self.Context.CloseAllContexts()
     
    def SetSelectionModeNeutral(self):
        self.Context.CloseAllContexts()
    
    def GetSelectedShapes(self):
        return self.selected_shapes
    
    def GetSelectedShape(self):
        """
        Returns the current selected shape
        """
        return self.selected_shape
    
    def SelectArea(self,Xmin,Ymin,Xmax,Ymax):
        self.Context.Select(Xmin,Ymin,Xmax,Ymax,self.View_handle)
        self.Context.InitSelected()
        # reinit the selected_shapes list
        self.selected_shapes = []
        while self.Context.MoreSelected():
            if self.Context.HasSelectedShape(): 
                self.selected_shapes.append(self.Context.SelectedShape())
            self.Context.NextSelected()
        print "Current selection (%i instances):"%len(self.selected_shapes),self.selected_shapes

    def Select(self,X,Y):
        self.Context.Select()
        self.Context.InitSelected()
        if self.Context.MoreSelected():
            if self.Context.HasSelectedShape():
                self.selected_shape = self.Context.SelectedShape()
                print "Current selection (single):",self.selected_shape
        else:
            self.selected_shape = None
    
    def Rotation(self,X,Y):
        self.View.Rotation(X,Y)
    
    def DynamicZoom(self,X1,Y1,X2,Y2):
        self.View.Zoom(X1,Y1,X2,Y2)
        
    def ZoomFactor(self,zoom_factor):
        self.View.SetZoom(zoom_factor)
    
    def ZoomArea(self,X1,Y1,X2,Y2):
        self.View.WindowFit(X1,Y1,X2,Y2)
    
    def Zoom(self,X,Y):
        self.View.Zoom(X,Y)
    
    def StartRotation(self,X,Y):
        self.View.StartRotation(X,Y)
    
