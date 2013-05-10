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

from __future__ import print_function

import os
import sys
import math
import itertools

from OCC.AIS import AIS_MultipleConnectedInteractive
from OCC.TopoDS import TopoDS_Shape
from OCC.Utils.Common import to_string, color
from OCC.Utils.Construct import gp_Dir
from OCC.KBE.types_lut import topo_lut
from OCC.TopAbs import TopAbs_VERTEX, TopAbs_EDGE, TopAbs_FACE, TopAbs_SHELL, TopAbs_SOLID
import OCC.Visualization
import OCC.V3d
import OCC.AIS
import OCC.Quantity
import OCC.Visual3d
from OCC.Prs3d import Prs3d_Arrow, Prs3d_Presentation, Prs3d_TextAspect, Prs3d_Text
from OCC.Quantity import Quantity_Color, Quantity_NOC_ORANGE
from OCC.Graphic3d import Graphic3d_NOM_SATIN

def set_CSF_GraphicShr():
    "Sets the CSF_GraphicShr env var"
    from ctypes import util
    os.environ['CSF_GraphicShr'] = util.find_library('TKOpenGl')

if not (sys.platform == 'win32'):
    set_CSF_GraphicShr()

modes = itertools.cycle([TopAbs_FACE, TopAbs_EDGE, TopAbs_VERTEX,
                         TopAbs_SHELL, TopAbs_SOLID, ])

class BaseDriver(object):
    """
    The base driver class
    """
    def __init__(self, window_handle):
        self._window_handle = window_handle
        self._inited = False
        self._local_context_opened = False
        self._context_handle = None
        self._viewer_handle = None
        self._view_handle = None
        self._context = None
        self._viewer = None
        self._view = None
        self._selected_shape = None
        self._selected_shapes = []       
    
    def move_to(self, x, y):
        self._context.MoveTo(x, y, self._view_handle)
      
    def fit_all(self):
        self._view.ZFitAll()
        self._view.FitAll()
    
    def set_window(self, window_handle):
        self._window_handle = window_handle
        
    def create(self, create_default_lights = True):
        if sys.platform!='win32':
            try:
                os.environ['DISPLAY']
            except KeyError:
                raise AssertionError("Please set the DISPLAY environment variable.")
        self.Init(self._window_handle)
        self._context_handle = self.GetContext()
        self._viewer_handle = self.GetViewer()
        self._view_handle = self.GetView()
        self._context = self._context_handle.GetObject()
        self._viewer = self._viewer_handle.GetObject()
        if create_default_lights:
            self._viewer.SetDefaultLights()
            self._viewer.SetLightOn()
        self._view = self._view_handle.GetObject()
        self._inited = True
        # some preferences;
        # the selected elements gray by default... a pretty poor choice I think...
        self._context.SelectionColor(Quantity_NOC_ORANGE)
        
        # nessecary for text rendering
        self._struct_mgr = self._context.MainPrsMgr().GetObject().StructureManager()

class Viewer3d(BaseDriver, OCC.Visualization.Display3d):
    def __init__(self, window_handle ):
        BaseDriver.__init__(self,window_handle)
        OCC.Visualization.Display3d.__init__(self)
        self._selected_shape = None

    def set_double_buffer(self, onoroff):
        """enables double buffering
        when shapes are moved in the viewer
        a very shaky picture is drawn, since double buffering [ a rudimentary OGL capability ]
        is disabled by default. Which is a bad default choice, fixed here..."""
        self._view.Window().GetObject().SetDoubleBuffer(bool(onoroff))

    def on_resize(self):
        self._view.MustBeResized()

    def reset_view(self):
        self._view.Reset()
    
    def repaint(self):
        self._viewer.Redraw()
        
    def set_mode_wire_frame(self):
        self._view.SetComputedMode(False)
        self._context.SetDisplayMode(OCC.AIS.AIS_WireFrame)

    def set_mode_shaded(self):
        self._view.SetComputedMode(False)
        if sys.platform=='win32':
            self._view.SetAntialiasingOff()
        self._context.SetDisplayMode(OCC.AIS.AIS_Shaded)
     
    def set_mode_quick_HLR(self):
        self._view.SetComputedMode(True)
        self._context.SetDisplayMode(OCC.AIS.AIS_QuickHLR)
    
    def set_mode_exact_HLR(self):
        self._view.SetComputedMode(True)
        self._context.SetDisplayMode(OCC.AIS.AIS_ExactHLR)
        
    def set_orthographic(self, _bool):
        '''
        sets whether this view is a orthographic or perspective view
        @param _bool:
        '''
        pass
        
    def view_top(self):
        self._view.SetProj(OCC.V3d.V3d_Zpos) 

    def view_bottom(self):
        self._view.SetProj(OCC.V3d.V3d_Zneg)
        
    def View_Left(self):
        self._view.SetProj(OCC.V3d.V3d_Xneg)

    def view_right(self):
        self._view.SetProj(OCC.V3d.V3d_Xpos)

    def view_front(self):
        self._view.SetProj(OCC.V3d.V3d_Yneg)

    def view_rear(self):
        self._view.SetProj(OCC.V3d.V3d_Ypos)

    def view_iso(self):
        self._view.SetProj(OCC.V3d.V3d_XposYnegZpos)
        
    def export_to_image(self, filename):
        self._view.Dump(filename)

    def set_background_image(self, filename, stretch = True):
        if not os.path.isfile(filename):
            raise IOError("image file %s not found."%filename)
        if stretch:
            self._view.SetBackgroundImage(filename, OCC.Aspect.Aspect_FM_STRETCH, True)
        else:
            self._view.SetBackgroundImage(filename, OCC.Aspect.Aspect_FM_NONE, True )

    def display_vector(self, vec, pnt, update=False):
        if self._inited:
            aPresentation = Prs3d_Presentation(self._struc_mgr)
            arrow = Prs3d_Arrow()
            arrow.Draw(
                aPresentation.GetHandle(),
                (pnt.as_vec() + vec).as_pnt(),
                gp_Dir(vec),
                math.radians(20),
                vec.Magnitude()
            )
            aPresentation.Display()
            # it would be more coherent if a AIS_InteractiveObject would be returned
            if update:
                self.repaint()
            return aPresentation

    def display_message(self,point,text_to_write, message_color=None, update=False):
        """
        :point: a gp_Pnt instance
        :text_to_write: a string
        :message_color: triple with the range 0-1
        """
        aPresentation = Prs3d_Presentation(self._struc_mgr)
        text_aspect = Prs3d_TextAspect()

        if message_color is not None:
            text_aspect.SetColor(color(*message_color))

        text = Prs3d_Text()
        text.Draw(aPresentation.GetHandle(),
                     text_aspect.GetHandle(),
                          to_string(text_to_write),
                               point)
        aPresentation.Display()
        # TODO: it would be more coherent if a AIS_InteractiveObject would be returned
        if update:
            self.repaint()
        return aPresentation


    def display_shape(self, shapes, material=None, texture=None, color=None, transparency=None, update=False):
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
                    self._view.SetSurfaceDetail(OCC.V3d.V3d_TEX_ALL)
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
                # TODO: can we use .Set to attach all TopoDS_Shapes to this AIS_Shape instance?
                shape_to_display = OCC.AIS.AIS_Shape(shape)

            ais_shapes.append(shape_to_display.GetHandle())

        if not SOLO:
            #===============================================================================
            # computing graphic properties is expensive
            # if an iterable is found, so cluster all TopoDS_Shape under a AIS_MultipleConnectedInteractive
            #===============================================================================
            shape_to_display = AIS_MultipleConnectedInteractive()
            for i in ais_shapes:
                shape_to_display.Connect(i)

        #===============================================================================
        # set the graphic properties
        #===============================================================================

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
                self._context.SetColor(shp, color, 0)

        if transparency:
            shape_to_display.SetTransparency(transparency)
        if update:
            # only update when explicitely told to do so
            self._context.Display(shape_to_display.GetHandle(), True)
            # especially this call takes up a lot of time...
            self.fit_all()
        else:
            self._context.Display(shape_to_display.GetHandle(), False)

        if SOLO:
            return ais_shapes[0]
        else:
            return shape_to_display


    def DisplayColoredShape(self, shapes, color='YELLOW', update=False, ):
        if isinstance(color, str):
            dict_color = {'WHITE':OCC.Quantity.Quantity_NOC_WHITE,
                          'BLUE':OCC.Quantity.Quantity_NOC_BLUE1,
                          'RED':OCC.Quantity.Quantity_NOC_RED,
                          'GREEN':OCC.Quantity.Quantity_NOC_GREEN,
                          'YELLOW':OCC.Quantity.Quantity_NOC_YELLOW,
                          'CYAN':OCC.Quantity.Quantity_NOC_CYAN1,
                          'WHITE':OCC.Quantity.Quantity_NOC_WHITE,
                          'BLACK':OCC.Quantity.Quantity_NOC_BLACK,
                          'ORANGE':OCC.Quantity.Quantity_NOC_ORANGE, }
            clr = Quantity_Color( dict_color[color] )
        elif isinstance(color, Quantity_Color):
            clr = color
        else:
            raise ValueError('color should either be a string ( "BLUE" ) or a Quantity_Color(0.1, 0.8, 0.1) got %s' % color)

        return  self.DisplayShape(shapes, color=clr, update=update)


    def display_triedron(self):
        self._view.TriedronDisplay(OCC.Aspect.Aspect_TOTP_RIGHT_LOWER, OCC.Quantity.Quantity_NOC_BLACK, 0.08,  OCC.V3d.V3d_WIREFRAME)
        self.repaint()
    
    def enable_antialiasing(self):
        self._view.SetAntialiasingOn()
        self.repaint()

    def disable_antialiasing(self):
        self._view.SetAntialiasingOff()
        self.repaint()
    
    def erase_all(self):
        self._objects_displayed = []
        # nessecary to remove text added by DisplayMessage
        self._context.PurgeDisplay()
        self._context.EraseAll()
        
    def tumble(self, num_images, animation = True):
        self._view.Tumble(num_images, animation)
        
    def pan(self, dx, dy):
        self._view.Pan(dx, dy)
    
    def set_selection_mode(self, mode=None):
        self._context.CloseAllContexts()
        self._context.OpenLocalContext()
        topo_level = modes.next()
        print('current topology selection mode:', topo_lut[topo_level])
        if mode is None:
            self._context.ActivateStandardMode(topo_level)
        else:
            self._context.ActivateStandardMode(mode)
        self._context.UpdateSelected()
    
    def set_selection_mode_vertex(self):
        self.SetSelectionMode(OCC.TopAbs.TopAbs_VERTEX)

    def set_selection_mode_edge(self):
        self.SetSelectionMode(OCC.TopAbs.TopAbs_EDGE)

    def set_selection_mode_face(self):
        self.SetSelectionMode(OCC.TopAbs.TopAbs_FACE)

    def set_selection_mode_shape(self):
        self._context.CloseAllContexts()

    def set_selection_mode_neutral(self):
        self._context.CloseAllContexts()
    
    def get_selected_shapes(self):
        return self._selected_shapes
    
    def get_selected_shape(self):
        """
        Returns the current selected shape
        """
        return self._selected_shape
    
    def select_area(self, x_min, y_min, x_max, y_max):
        self._context.Select( x_min, y_min, x_max, y_max, self._view_handle)
        self._context.InitSelected()
        # reinit the selected_shapes list
        self._selected_shapes = []
        while self._context.MoreSelected():
            if self._context.HasSelectedShape(): 
                self._selected_shapes.append(self._context.SelectedShape())
            self._context.NextSelected()
        print("Current selection (%i instances):"%len(self._selected_shapes),self._selected_shapes)

    def Select(self):
        self._context.Select()
        self._context.InitSelected()
        if self._context.MoreSelected():
            if self._context.HasSelectedShape():
                self._selected_shape = self._context.SelectedShape()
                print("Current selection (single):", self._selected_shape)
        else:
            self._selected_shape = None

    def shift_select(self):
        self._context.ShiftSelect()
        self._context.InitSelected()
        self._selected_shapes = []
        while self._context.MoreSelected():
            if self._context.HasSelectedShape():
                self._selected_shapes.append(self._context.SelectedShape())
            self._context.NextSelected()
        # hilight newly selected unhighlight those no longer selected
        self._context.UpdateSelected()
        print("Current selection (%i instances):"%len(self._selected_shapes), self._selected_shapes)

    def rotation(self, X, Y):
        self._view.Rotation(X, Y)
    
    def dynamic_zoom(self,X1 ,Y1, X2, Y2):
        self._view.Zoom(X1, Y1, X2, Y2)
        
    def zoom_factor(self, zoom_factor):
        self._view.SetZoom(zoom_factor)
    
    def zoom_area(self, x1, y1, x2, y2):
        self._view.WindowFit(x1, y1, x2, y2)
    
    def zoom(self, x, y):
        self._view.Zoom(x, y)
    
    def start_rotation(self, x, y):
        self._view.StartRotation(x, y)
