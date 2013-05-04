#!/usr/bin/env python

##Copyright 2010 Henrik Rudstrom (hrudstrom@googlemail.com)
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

import random

from OCC.Display.traitDisplay import OCCEditorFactory
from OCC.BRepPrimAPI import *
from OCC.gp import gp_Trsf, gp_Vec
from OCC.TopLoc import TopLoc_Location
from OCC.Display.qtDisplay import qtViewer3d
from OCC.Display import OCCViewer

from traits.api import HasTraits, Any, Button, List, Instance, Str, Bool
from traitsui.api import Item, View

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
        else:
            print "nothing selected so removing an arbitrary number of shapes"
            for i in range(random.randint(1, 8)):
                if len(self.shapes) > 0:
                    self.shapes.pop()
                else:
                    print "you should add some if you want me to remove stuff..."

Example(shapes=[]).configure_traits()
