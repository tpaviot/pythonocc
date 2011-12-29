#!/usr/bin/env python
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


# Draft implementation of a custom editor for Enthought Traits GUI,
# simply assign the editor to a Traited list of Topo_DS shapes and off you go.

__author__ = 'Henrik Rudstrom'

# OCC
from OCC.gp import gp_Trsf, gp_Vec
from OCC.TopLoc import TopLoc_Location
from OCC.BRepPrimAPI import BRepPrimAPI_MakeCylinder
from OCC.Display import OCCViewer
# enthought traits
from traits.has_traits import HasTraits
from traitsui.item import Item
from traitsui.view import View
from traits.trait_types import Any, Button, List, Instance, Str, Bool
from traitsui.editor import Editor
from traitsui.editor_factory import EditorFactory
from traits.etsconfig.api import ETSConfig

# determine on which toolkit we're on
# at some point perhaps worth extending to pyside?
HAVE_WX = False if ETSConfig.toolkit == 'qt' else True
# conditionally load the right traitviewer
if HAVE_WX:
    from traitviewer_wx import OCCTraitViewerWx as OCCTraitViewer
else:
    from traitviewer_qt import OCCTraitViewerQt as OCCTraitViewer
# stdlib
import random

class OCCEditor(Editor):
    shapes = List(Any)
    selection = List(Any)
    display = Instance(OCCViewer)
    initialized = Bool
    border_size = 1


    ################ UGLY ################
    import wx
    layout_style = wx.ALL

    
    def init ( self, parent):
        self.control = OCCTraitViewer(self, self.selection)
        self.sync_value(self.name, 'shapes', 'both', is_list=True)
        if self.factory.selection:
            self.sync_value(self.factory.selection, 'selection', 'both', is_list=True)
        if self.factory.display:
            self.sync_value(self.factory.display, 'display', 'both')
    
    def _shapes_changed(self, name, nothing, change):
        '''update shapes when list is replaced'''
        self.control._display.EraseAll()
        for s in change:
            self.control._display.DisplayShape(s)
            
    def _shapes_items_changed(self, name, nothing, change):
        '''update display when the list is modified'''
        for s in change.added:
            self.control._display.DisplayShape(s)
        for s in change.removed:
            self.control._display.EraseShape(s)



class ToolkitEditorFactory ( EditorFactory ):
    selection = Str
    display = Str
    def _get_simple_editor_class(self):
        return OCCEditor

OCCEditorFactory = ToolkitEditorFactory

if __name__ == '__main__':
    #Todo move this to examples
    class Example(HasTraits):
        shapes = List

        add_stuff = Button
        remove_stuff = Button

        #these are synced with the OCCEditor, name is refered to in OCCEditorFactory
        selection = List
        display = Instance(OCCViewer)

        view = View(
            #set editor for the shapelist
            #optional selection and display can set to the string name of the display instance and selection list
            Item('shapes', editor=OCCEditorFactory(selection='selection', display='display'), show_label=False),


            Item('add_stuff', show_label=False),
            Item('remove_stuff', show_label=False),
            width= 0.8,
            height=0.8,
            resizable=True
        )

        def _selection_items_changed(self, name, undefined, list_change):
            print "selection trait changed", list_change.added, self.display

        def _add_stuff_changed(self, old, new):
            for i in xrange(20):
                brep = BRepPrimAPI_MakeCylinder(random.random()*50, random.random()*50).Shape()
                trsf = gp_Trsf()
                trsf.SetTranslation(gp_Vec(random.random()*100, random.random()*100, random.random()*100))
                brep.Move(TopLoc_Location(trsf))
                self.shapes.append(brep)

        def _remove_stuff_changed(self, old, new):
            for shape in self.selection:
                self.shapes.remove(shape)

    Example(shapes=[]).configure_traits()
