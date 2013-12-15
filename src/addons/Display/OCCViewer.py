#!/usr/bin/env python

##Copyright 2008-2013 Thomas Paviot (tpaviot@gmail.com)
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

import os
import sys
import math
import itertools

from OCC.AIS import AIS_MultipleConnectedInteractive
from OCC.TopoDS import *
from OCC.Utils.Common import to_string, color
from OCC.Utils.Construct import gp_Dir
from OCC.KBE.types_lut import topo_lut
import OCC.Visualization
import OCC.V3d
import OCC.AIS
import OCC.Quantity
import OCC.TopoDS
import OCC.Visual3d
from OCC import Prs3d
from OCC.Prs3d import Prs3d_Arrow
from OCC.Quantity import Quantity_Color, Quantity_NOC_ORANGE
from OCC.Graphic3d import Graphic3d_NOM_SATIN


def set_CSF_GraphicShr():
    "Sets the CSF_GraphicShr env var"
    from ctypes import util
    os.environ['CSF_GraphicShr'] = util.find_library('TKOpenGl')

if not (sys.platform == 'win32'):
    set_CSF_GraphicShr()

modes = itertools.cycle([TopAbs.TopAbs_FACE, TopAbs.TopAbs_EDGE,
                         TopAbs.TopAbs_VERTEX,
                         TopAbs.TopAbs_SHELL, TopAbs.TopAbs_SOLID, ])


class BaseDriver(object):
    """
    The base driver class
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

    def MoveTo(self, X, Y):
        self.Context.MoveTo(X, Y, self.View_handle)

    def FitAll(self):
        self.View.ZFitAll()
        self.View.FitAll()

    def SetWindow(self, window_handle):
        self._window_handle = window_handle

    def Create(self, create_default_lights=True):
        if sys.platform != 'win32':
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
        # some preferences;
        # the selected elements gray by default
        self.Context.SelectionColor(Quantity_NOC_ORANGE)

        # nessecary for text rendering
        self._struc_mgr = self.Context.MainPrsMgr().GetObject().StructureManager()


class Viewer3d(BaseDriver, OCC.Visualization.Display3d):
    def __init__(self, window_handle):
        BaseDriver.__init__(self, window_handle)
        OCC.Visualization.Display3d.__init__(self)
        self.selected_shape = None

    def SetDoubleBuffer(self, on_or_off):
        """enables double buffering when shapes are moved in the viewer
        a very shaky picture is drawn, since double buffering
        is disabled by default. fixed here..."""
        self.View.Window().GetObject().SetDoubleBuffer(bool(on_or_off))

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
        if sys.platform == 'win32':
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
        raise AssertionError("SetOrthographic method not yet implemented.")

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

    def ExportToImage(self, image_filename):
        self.View.Dump(image_filename)

    def SetBackgroundImage(self, image_filename, stretch=True):
        if not os.path.isfile(image_filename):
            raise IOError("image file %s not found." % image_filename)
        if (Stretch):
            self.View.SetBackgroundImage(image_filename, OCC.Aspect.Aspect_FM_STRETCH, True)
        else:
            self.View.SetBackgroundImage(image_filename, OCC.Aspect.Aspect_FM_NONE, True )

    def DisplayVector(self, vec, pnt, update=False):
        if self._inited:
            aPresentation = Prs3d.Prs3d_Presentation(self._struc_mgr)
            arrow = Prs3d_Arrow()
            arrow.Draw(
                aPresentation.GetHandle(),
                (pnt.as_vec() + vec).as_pnt(),
                gp_Dir(vec),
                math.radians(20),
                vec.Magnitude()
            )
            aPresentation.Display()
            # it would be more coherent if a AIS_InteractiveObject
            # would be returned
            if update:
                self.Repaint()
            return aPresentation

    def DisplayMessage(self, point, text_to_write, message_color=None, update=False):
        """
        :point: a gp_Pnt instance
        :text_to_write: a string
        :message_color: triple with the range 0-1
        """
        aPresentation = Prs3d.Prs3d_Presentation(self._struc_mgr)
        text_aspect = Prs3d.Prs3d_TextAspect()

        if message_color is not None:
            text_aspect.SetColor(color(*message_color))

        text = Prs3d.Prs3d_Text()
        text.Draw(aPresentation.GetHandle(),
                  text_aspect.GetHandle(),
                  to_string(text_to_write),
                  point)
        aPresentation.Display()
        # @TODO: it would be more coherent if a AIS_InteractiveObject
        # is be returned
        if update:
            self.Repaint()
        return aPresentation


    def DisplayShape(self, shapes, material=None, texture=None, color=None, transparency=None, update=False):
        '''
        '''
        if issubclass(shapes.__class__, TopoDS_Shape):
            shapes = [shapes]
            SOLO = True
        else:
            SOLO = False

        ais_shapes = []

        for shape in shapes:
            if material or texture:
                if texture:
                    self.View.SetSurfaceDetail(OCC.V3d.V3d_TEX_ALL)
                    shape_to_display = OCC.AIS.AIS_TexturedShape(shape)
                    filename, toScaleU, toScaleV, toRepeatU, toRepeatV, originU, originV = texture.GetProperties()
                    shape_to_display.SetTextureFileName(OCC.TCollection.TCollection_AsciiString(filename))
                    shape_to_display.SetTextureMapOn()
                    shape_to_display.SetTextureScale(True, toScaleU, toScaleV)
                    shape_to_display.SetTextureRepeat(True, toRepeatU, toRepeatV)
                    shape_to_display.SetTextureOrigin(True, originU, originV)
                    shape_to_display.SetDisplayMode(3)
                elif material:
                    shape_to_display = OCC.AIS.AIS_Shape(shape)
                    shape_to_display.SetMaterial(material)
            else:
                # TODO: can we use .Set to attach all TopoDS_Shapes
                # to this AIS_Shape instance?
                shape_to_display = OCC.AIS.AIS_Shape(shape)

            ais_shapes.append(shape_to_display.GetHandle())

        if not SOLO:
            # computing graphic properties is expensive
            # if an iterable is found, so cluster all TopoDS_Shape under
            # an AIS_MultipleConnectedInteractive
            shape_to_display = AIS_MultipleConnectedInteractive()
            for i in ais_shapes:
                shape_to_display.Connect(i)

        # set the graphic properties
        if material is None:
            #The default material is too shiny to show the object
            #color well, so I set it to something less reflective
            shape_to_display.SetMaterial(Graphic3d_NOM_SATIN)

        if color:
            if isinstance(color, Quantity_Color):
                pass
            elif isinstance(color, (tuple, list)):
                from OCC.Utils.Common import color as quantity_color
                color = quantity_color(*color)

            for shp in ais_shapes:
                self.Context.SetColor(shp, color, 0)

        if transparency:
            shape_to_display.SetTransparency(transparency)
        if update:
            # only update when explicitely told to do so
            self.Context.Display(shape_to_display.GetHandle(), True)
            # especially this call takes up a lot of time...
            self.FitAll()
        else:
            self.Context.Display(shape_to_display.GetHandle(), False)

        if SOLO:
            return ais_shapes[0]
        else:
            return shape_to_display

    def DisplayColoredShape(self, shapes, color='YELLOW', update=False, ):
        if isinstance(color, str):
            dict_color = {'WHITE': OCC.Quantity.Quantity_NOC_WHITE,
                          'BLUE': OCC.Quantity.Quantity_NOC_BLUE1,
                          'RED': OCC.Quantity.Quantity_NOC_RED,
                          'GREEN': OCC.Quantity.Quantity_NOC_GREEN,
                          'YELLOW': OCC.Quantity.Quantity_NOC_YELLOW,
                          'CYAN': OCC.Quantity.Quantity_NOC_CYAN1,
                          'WHITE': OCC.Quantity.Quantity_NOC_WHITE,
                          'BLACK': OCC.Quantity.Quantity_NOC_BLACK,
                          'ORANGE': OCC.Quantity.Quantity_NOC_ORANGE, }
            clr = Quantity_Color(dict_color[color])
        elif isinstance(color, Quantity_Color):
            clr = color
        else:
            raise ValueError('color should either be a string ( "BLUE" ) or a Quantity_Color(0.1, 0.8, 0.1) got %s' % color)

        return self.DisplayShape(shapes, color=clr, update=update)

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

    def Tumble(self, num_images, animation=True):
        self.View.Tumble(num_images, animation)

    def Pan(self, dx, dy):
        self.View.Pan(dx, dy)

    def SetSelectionMode(self, mode=None):
        self.Context.CloseAllContexts()
        self.Context.OpenLocalContext()
        topo_level = modes.next()
        print 'current topology selection mode:', topo_lut[topo_level]
        if mode is None:
            self.Context.ActivateStandardMode(topo_level)
        else:
            self.Context.ActivateStandardMode(mode)
        self.Context.UpdateSelected()

    def SetSelectionModeVertex(self):
        self.SetSelectionMode(OCC.TopAbs.TopAbs_VERTEX)

    def SetSelectionModeEdge(self):
        self.SetSelectionMode(OCC.TopAbs.TopAbs_EDGE)

    def SetSelectionModeFace(self):
        self.SetSelectionMode(OCC.TopAbs.TopAbs_FACE)

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

    def SelectArea(self,Xmin, Ymin, Xmax, Ymax):
        self.Context.Select(Xmin, Ymin, Xmax, Ymax,self.View_handle)
        self.Context.InitSelected()
        # reinit the selected_shapes list
        self.selected_shapes = []
        while self.Context.MoreSelected():
            if self.Context.HasSelectedShape():
                self.selected_shapes.append(self.Context.SelectedShape())
            self.Context.NextSelected()
        print "Current selection (%i instances):" % len(self.selected_shapes), self.selected_shapes

    def Select(self, X, Y):
        self.Context.Select()
        self.Context.InitSelected()
        if self.Context.MoreSelected():
            if self.Context.HasSelectedShape():
                self.selected_shape = self.Context.SelectedShape()
                print "Current selection (single):",self.selected_shape
        else:
            self.selected_shape = None

    def ShiftSelect(self, X, Y):
        self.Context.ShiftSelect()
        self.Context.InitSelected()

        self.selected_shapes = []
        while self.Context.MoreSelected():
            if self.Context.HasSelectedShape():
                self.selected_shapes.append(self.Context.SelectedShape())
            self.Context.NextSelected()
        # hilight newly selected unhighlight those no longer selected
        self.Context.UpdateSelected()
        print "Current selection (%i instances):" % len(self.selected_shapes), self.selected_shapes

    def Rotation(self, X, Y):
        self.View.Rotation(X, Y)

    def DynamicZoom(self, X1, Y1, X2, Y2):
        self.View.Zoom(X1, Y1, X2, Y2)

    def ZoomFactor(self, zoom_factor):
        self.View.SetZoom(zoom_factor)

    def ZoomArea(self, X1, Y1, X2, Y2):
        self.View.WindowFit(X1, Y1, X2, Y2)

    def Zoom(self, X, Y):
        self.View.Zoom(X, Y)

    def StartRotation(self, X, Y):
        self.View.StartRotation(X, Y)
