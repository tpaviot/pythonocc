#!/usr/bin/env python

##Copyright 2010 Henrik Rudstrom (hrudstrom@googlemail.com)
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

from enthought.traits.has_traits import HasTraits

from enthought.traits.ui.item import Item
from enthought.traits.ui.view import View
from enthought.traits.trait_types import Any, Int, Bool, Button, Event, Str,\
    Instance, List
from enthought.traits.ui.editors.custom_editor import CustomEditor
from OCC.Display.qtDisplay import qtViewer3d
from OCC.BRepPrimAPI import BRepPrimAPI_MakeCylinder
import enthought.traits.ui.qt4
from enthought.traits.ui.editor import Editor
from enthought.traits.ui.editor_factory import EditorFactory
from OCC.gp import gp_Trsf, gp_Vec
from OCC.TopLoc import TopLoc_Location
import random

import sys
from PyQt4 import QtCore, QtGui, Qt

class OCCTraitViewer(qtViewer3d):
    def __init__(self, editor=None,selection=None, **kwargs):
        super(OCCTraitViewer, self).__init__(**kwargs)
        self.editor = editor
        if selection:
            self.selection = selection
        elif hasattr(editor, 'selection'):
            self.selection = editor.selection
        else:
            self.selection = []
        self._initialized = False
        self._shape_map = {}
        self.setSizePolicy(Qt.QSizePolicy(Qt.QSizePolicy.Expanding, Qt.QSizePolicy.Expanding));
        self.setMinimumHeight(200)
        self.setMinimumWidth(320)

    def paintEvent(self, event):
        # Display can only be initialized when window is shown.
        # Showing windows etc is all magically done by traits
        # Initializing on the first paint event.
        # (resizeEvent and showEvent are too early)
        if not self._initialized:
            self.InitDriver()
            self._initialized = True
            self.editor.initialized = True

        super(OCCTraitViewer, self).paintEvent(event)
    
    def add_shape_to_viewer(self,shape_to_display):
        ais_shape_handle = self._display.DisplayShape(shape_to_display)
        self._shape_map[shape_to_display] = ais_shape_handle
        
    def erase_shape_from_viewer(self,shape):
        if shape not in self._shape_map:
             raise Exception("shape not in shapemap")
        self._display.Context.Erase(self._shape_map[shape])
        del self._shape_map[shape]

    def mouseReleaseEvent(self, event):
        super(OCCTraitViewer, self).mouseReleaseEvent(event)
        #not the nicest solution but heck.
        if len(self.selection) < 1:
            self.selection.append(self._display.selected_shape)
        else: 
            self.selection[0] = self._display.selected_shape
         
class OCCEditor(Editor):
    shapes = List(Any)
    selection = List(Any)
    
    def init ( self, parent):
        self.control = OCCTraitViewer(self.selection)
        self.sync_value(self.name, 'shapes', 'both', is_list=True)
        self.sync_value(self.factory.selection, 'selection', 'both', is_list=True)
    
    def _shapes_items_changed(self, name, nothing, change):
        for s in change.added:
            self.control.add_shape_to_viewer(s)
        for s in change.removed:
            self.control.erase_shape_from_viewer(s)

class ToolkitEditorFactory ( EditorFactory ):
    selection = Any
    def _get_simple_editor_class(self):
        return OCCEditor

OCCEditorFactory = ToolkitEditorFactory
if __name__ == '__main__':
    class Example(HasTraits):
        shapes = List
        selection = List
        add_random_cylinder = Button
        remove_cylinder = Button
        view = View(
            Item('shapes', editor=OCCEditorFactory(selection='selection'), show_label=False),
            Item('add_random_cylinder', show_label=False),
            Item('remove_cylinder', show_label=False),
            width= 0.8, 
            height=0.8, 
            resizable=True
        )
        
        def _selection_items_changed(self, name, undefined, list_change):
            print "selection trait changed", list_change.added
        
        def _add_random_cylinder_changed(self, old, new):
            brep = BRepPrimAPI_MakeCylinder(random.random()*50, random.random()*50).Shape()
            trsf = gp_Trsf()
            trsf.SetTranslation(gp_Vec(random.random()*100, random.random()*100, random.random()*100))
            brep.Move(TopLoc_Location(trsf))
            self.shapes.append(brep)
     
        def _remove_cylinder_changed(self, old, new):
            for s in self.selection:
                if s is None: 
                    continue
                self.shapes.remove(s)
                
    Example(shapes=[]).configure_traits()
