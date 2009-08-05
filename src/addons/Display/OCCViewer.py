#!/usr/bin/env python
from OCC.TopoDS import *

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

import os, os.path, types

import OCC.Visualization
import OCC.V3d
import OCC.V2d
import OCC.AIS
import OCC.AIS2D
import OCC.Quantity
import OCC.TopoDS
import OCC.Visual3d

from OCC import Prs3d

try:
    import OCC.NIS
    HAVE_NIS = False
except ImportError:
    HAVE_NIS = False

import sys

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
        #self._objects_displayed = []#list to save in memory displayed objects        
    
    def MoveTo(self,X,Y):
        self.Context.MoveTo(X,Y,self.View_handle)
      
    def FitAll(self):
        self.View.ZFitAll()
        self.View.FitAll()
    
    def SetWindow(self,window_handle):
        self._window_handle = window_handle
        
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
        self.Context_handle = self.GetContext()
        self.Viewer_handle = self.GetViewer()
        self.View_handle = self.GetView()
        self.Context = self.Context_handle.GetObject()
        self.Viewer = self.Viewer_handle.GetObject()
        self.View = self.View_handle.GetObject()
        self._inited = True
        
        # nessecary for text rendering
        try:
            self._struc_mgr = self.Context.MainPrsMgr().GetObject().StructureManager()
        except:
            pass

    
        
class Viewer2d(BaseDriver, OCC.Visualization.Display2d):   
    def __init__(self, window_handle ):
        BaseDriver.__init__(self,window_handle)
        OCC.Visualization.Display2d.__init__(self)        
    
    def OnResize(self):
        self.View.MustBeResized(OCC.V2d.V2d_TOWRE_ENLARGE_SPACE)
    
    def DisplayShape(self, shapes, material=None, texture=None, ):
        ais_shapes = []
        if issubclass(shapes.__class__, TopoDS_Shape):
            shapes = [shapes]
            SOLO = True
        else:
            SOLO = False
            
        for shape in shapes:
            if material:#careful: != operator segfaults
                #print 'material', material
                self.View.SetSurfaceDetail(OCC._TEX_ALL)
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
                    ais_shapes.append(shape_to_display.GetHandle())
            else:
                shape_to_display = OCC.AIS.AIS_Shape(shape)
                ais_shapes.append(shape_to_display.GetHandle())
            self.Context.Display(shape_to_display.GetHandle())
            self.FitAll()
        if SOLO:
            return ais_shapes[0]
        else:
            return ais_shapes

if HAVE_NIS:
    class NISViewer3d(BaseDriver, OCC.Visualization.NISDisplay3d):
        def __init__(self, window_handle ):
            BaseDriver.__init__(self,window_handle)
            OCC.Visualization.NISDisplay3d.__init__(self)
              
        def OnResize(self):
            self.View.MustBeResized()
        
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

    def SetBackgroundImage(self, Filename, Stretch = True):
        if (Stretch):
            self.View.SetBackgroundImage(Filename, OCC.Aspect.Aspect_FM_STRETCH, True)
        else:
            self.View.SetBackgroundImage(Filename, OCC.Aspect.Aspect_FM_NONE, True )
            
    def DisplayMessage(self,point,text_to_write):
        """
        point: a gp_Pnt instance
        text_to_write: a string
        """
        #print dir(self.View)
#        self.view_manager = self.View.View().GetObject().ViewManager()
        #print view_manager
        #self.myLayer= OCC.Visual3d.Visual3d_Layer(self.view_manager,OCC.Aspect.Aspect_TOL_OVERLAY, False)
        #myLayer.SetViewport(640,480)
        #myLayer.SetOrtho(0,640,480,0,OCC.Aspect.Aspect_TypeOfConstraint-1)
        #self.myLayer.Begin()
        #self.myLayer.DrawText("Thomas",320,240,1)
        #self.myLayer.End()


        #self.View.Redraw()
#     myLayer->SetViewport(w,h);
#     myLayer->SetOrtho(0,w,h,0,(Aspect_TypeOfConstraint) -1);
#     
#     // then you could draw on the given layer
#     myLayer->Begin();
#     
#     // draw some text
#     Standard_CString aString = "TEST";
#     int xPos = w/2;
#     int yPos = h/2;
#     int textSize = 1;
#     myLayer->DrawText(aString, xPos, yPos, textSize);// !!!!! CRASH ERROR !!!!!!!!
#     
#     // draw a polyline
#     Standard_Real wn = 2.0, hn = (2.0/Standard_Real(w))*Standard_Real(h);
#     Standard_Real x1 = -0.9, x2= x1+wn-.2, y1 = -0.9, y2=y1+hn-.2;
#     myLayer->BeginPolyline();
#     myLayer->AddVertex(x1, y1, Standard_False);
#     myLayer->AddVertex(x2, y2);
#     myLayer->ClosePrimitive();
#     
#     // draw a filled box
#     myLayer->SetColor(Quantity_NOC_RED);
#     myLayer->DrawRectangle(xPos,yPos,12,12);
#     
#          
#          // and close the layer and redraw
#     myLayer->End();
#     myView->Redraw();
#        V1 = OCC.BRepBuilderAPI.BRepBuilderAPI_MakeVertex(point)
#        aisShape = OCC.AIS.AIS_Shape(V1.Vertex())
#        aDrawer = aisShape.Attributes()
        
        # TODO - should be imported!
        def to_string_extended(_str):
            from OCC.TCollection import TCollection_ExtendedString as String
            return String(_str)
        
        aPresentation = Prs3d.Prs3d_Presentation(self._struc_mgr)
        text_aspect = Prs3d.Prs3d_TextAspect()
        Prs3d.Prs3d_Text().Draw(aPresentation.GetHandle(),
                                 text_aspect.GetHandle(),
                                  to_string_extended(text_to_write),
                                   point)
        aPresentation.Display()
        # it would be more coherent if a AIS_InteractiveObject would be returned
        return aPresentation
#        self.Context.Display(anAIS.GetHandle())

        
#    def DisplayShape(self, , *shapes):
    def DisplayShape(self, shapes, material=None, texture=None, update=True):
        '''
        '''
        if issubclass(shapes.__class__, TopoDS_Shape):
            shapes = [shapes]
            SOLO = True
        else:
            SOLO = False
            
        ais_shapes = []

        for shape in shapes:
            if material:#careful: != operator segfaults
                #print 'material', material
                self.View.SetSurfaceDetail(OCC._TEX_ALL)
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
                    ais_shapes.append(shape_to_display.GetHandle())
            else:
                shape_to_display = OCC.AIS.AIS_Shape(shape)
                ais_shapes.append(shape_to_display.GetHandle())
                #self._objects_displayed.append(shape_to_display)
            self.Context.Display(shape_to_display.GetHandle())
            self.FitAll()
        if SOLO:
            return  ais_shapes[0]
        else:
            return ais_shapes

    def DisplayColoredShape(self, shapes, color='YELLOW', update=True, ):
        ais_shapes = []
        dict_color = {'WHITE':OCC.Quantity.Quantity_NOC_WHITE,
                      'BLUE':OCC.Quantity.Quantity_NOC_BLUE1,
                      'RED':OCC.Quantity.Quantity_NOC_RED,
                      'GREEN':OCC.Quantity.Quantity_NOC_GREEN,
                      'YELLOW':OCC.Quantity.Quantity_NOC_YELLOW,
                      # new
                      'CYAN':OCC.Quantity.Quantity_NOC_CYAN1,
                      'WHITE':OCC.Quantity.Quantity_NOC_WHITE,
                      'BLACK':OCC.Quantity.Quantity_NOC_BLACK,
                      'ORANGE':OCC.Quantity.Quantity_NOC_ORANGE,
                      
                      }

        if issubclass(shapes.__class__, TopoDS_Shape):
            shapes = [shapes]
            SOLO = True
        else:
            SOLO = False
            
        for shape in shapes:
            shape_to_display = OCC.AIS.AIS_Shape(shape).GetHandle()
            self.Context.SetColor(shape_to_display,dict_color[color],0)
            if update:
                self.Context.Display(shape_to_display, True)
            else:
                # don't update the view when shape_to_display is added
                # comes in handy when adding lots and lots of objects 
                self.Context.Display(shape_to_display, False)
            self.FitAll()
        ais_shapes.append(shape_to_display)
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
        self.Context.EraseAll()
        
    def Tumble(self,NumImages,Animation = True):
        self.View.Tumble(NumImages, Animation)
        
    def Pan(self,Dx,Dy):
        self.View.Pan(Dx,Dy)
    
    def SetSelectionMode(self,mode = OCC.TopAbs.TopAbs_FACE):
        self.Context.CloseAllContexts()
        self.Context.OpenLocalContext()
        self.Context.ActivateStandardMode(mode)
    
    def OpenLocalContext(self):
        if not self._local_context_opened:
            self.Context.OpenLocalContext()
            self._local_context_opened = True
        
    def SetSelectionModeVertex(self):
        self.OpenLocalContext()
        self.Context.ActivateStandardMode(OCC.TopAbs.TopAbs_VERTEX)
        
    def SetSelectionModeEdge(self):
        self.OpenLocalContext()
        self.Context.ActivateStandardMode(OCC.TopAbs.TopAbs_EDGE)
        
    def SetSelectionModeFace(self):
        self.OpenLocalContext()
        self.Context.ActivateStandardMode(OCC.TopAbs.TopAbs_FACE)        
        
    def SetSelectionModeShape(self):
        self.Context.CloseAllContexts()
        self.Context.OpenLocalContext()
        self.Context.ActivateStandardMode(OCC.TopAbs.TopAbs_SHAPE)        
    
    def SetSelectionModeNeutral(self):
        self.Context.CloseAllContexts()
    
    def GetSelectedShape(self):
        """
        Returns the current selected shape
        """
        return self.selected_shape
    
    def Select(self,X,Y):
        self.Context.Select()
        self.Context.InitSelected()
        if self.Context.MoreSelected():
            if self.Context.HasSelectedShape():
                self.selected_shape = self.Context.SelectedShape()
                print "Current selection:",self.selected_shape
        else:
            self.selected_shape = None
        
    def Rotation(self,X,Y):
        self.View.Rotation(X,Y)
    
    def DynamicZoom(self,X1,Y1,X2,Y2):
        self.View.Zoom(X1,Y1,X2,Y2)
    
    def ZoomArea(self,X1,Y1,X2,Y2):
        self.View.WindowFit(X1,Y1,X2,Y2)
    
    def Zoom(self,X,Y):
        self.View.Zoom(X,Y)
    
    def StartRotation(self,X,Y):
        self.View.StartRotation(X,Y)
    
