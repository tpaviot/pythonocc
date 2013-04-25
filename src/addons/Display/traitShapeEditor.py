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


from itertools import izip
import random, os

try:
    if os.environ["ETS_TOOLKIT"] == "wx":
        print "ETS_TOOLKIT variable has been set to wx, though this example explicitly uses the Qt backed\
        setting the backend to Qt4..."
except KeyError:
    pass

os.environ["ETS_TOOLKIT"] = "qt4"
# abstracts PyQt4 and PySide
from pyface.qt import QtGui

from traits.api import HasTraits, Any, Button, List, Instance, Str, Bool
from traitsui.api import Item, View, EditorFactory, Editor
from OCC.gp import gp_Trsf, gp_Vec
from OCC.TopLoc import TopLoc_Location
from OCC.Display.qtDisplay import qtViewer3d
from OCC.BRepPrimAPI import BRepPrimAPI_MakeCylinder
from OCC.Display import OCCViewer

class TraitOCCViewer3d(OCCViewer.Viewer3d):
    '''
    Custom OCCViewer that keeps a map of its Shapes -> AIS_Shapes
    '''
    def __init__(self, *args, **kwargs):
        OCCViewer.Viewer3d.__init__(self, *args, **kwargs)
        self.ShapeMap = {}

    def DisplayShape(self, shapes, **kwargs):
        if isinstance(shapes, (list, tuple)):
            ais_shapes = OCCViewer.Viewer3d.DisplayShape(self, shapes, **kwargs)
            for s, ais in izip(shapes, ais_shapes):
                self.ShapeMap[s] = ais
        else:
            ais = OCCViewer.Viewer3d.DisplayShape(self, shapes, **kwargs)
            self.ShapeMap[shapes] = ais


    def EraseShape(self, shape):
        if shape not in self.ShapeMap:
             raise Exception("shape not in shapemap")

        self.Context.Erase(self.ShapeMap[shape])
        del self.ShapeMap[shape]


class OCCTraitViewer(qtViewer3d):
    def __init__(self, editor=None, selection=None, **kwargs):
        super(OCCTraitViewer, self).__init__(**kwargs)
        self.editor = editor
        
        self._initialized = False
        self.setSizePolicy(QtGui.QSizePolicy(QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Expanding));
        self.setMinimumHeight(100)
        self.setMinimumWidth(150)
        
    
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

    def InitDriver(self):
        #need to override this to set custom Viewer
        self._display = TraitOCCViewer3d(self.GetHandle())
        self._display.Create()
        self._display.DisplayTriedron()
        self._display.SetModeShaded()
        self._inited = True
        # dict mapping keys to functions
        self._SetupKeyMap()
        
    def mouseReleaseEvent(self, event):
        super(OCCTraitViewer, self).mouseReleaseEvent(event)
        #not the nicest solution but heck.

        if len(self.editor.selection) < 1:
            self.editor.selection.append(self._display.selected_shape)
        else: 
            self.editor.selection[0] = self._display.selected_shape
         
class OCCEditor(Editor):
    shapes = List(Any)
    selection = List(Any)
    display = Instance(OCCViewer)
    initialized = Bool

    def init ( self, parent):
        self.control = OCCTraitViewer(self, self.selection)
        self.sync_value(self.name, 'shapes', 'both', is_list=True)
        if self.factory.selection:
            self.sync_value(self.factory.selection, 'selection', 'both', is_list=True)
        if self.factory.display:
            self.sync_value(self.factory.display, 'display', 'both')

    def set_size_policy(self, *args, **kwargs):
        """
        no idea what it does, but is called...
        i guess should give some hints...

        :param args:
        :param kwargs:
        """
        pass

    def _shapes_changed(self, name, nothing, change):
        '''update shapes when list is replaced'''
        self.control._display.EraseAll()
        for s in change:
            self.control._display.DisplayShape(s)
        self.control._display.FitAll()
            
    def _shapes_items_changed(self, name, nothing, change):
        '''update display when the list is modified'''
        for s in change.added:
            self.control._display.DisplayShape(s)
        for s in change.removed:
            self.control._display.EraseShape(s)
        self.control._display.FitAll()



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
            if len(self.selection) >= 1:
                for shape in self.selection:
                    self.shapes.remove(shape)
                self.selection = []
            else:
                print "nothing selected so removing an arbitrary number of shapes"
                for i in range(random.randint(1, 8)):
                    if len(self.shapes) > 0:
                        self.shapes.pop()
                    else:
                        print "you should add some if you want me to remove stuff..."

    Example(shapes=[]).configure_traits()
