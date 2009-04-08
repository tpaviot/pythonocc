##Copyright 2009 Thomas Paviot (thomas.paviot@free.fr)
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

from OCC.gp import *
from OCC.BRepPrimAPI import *
from OCC.BRepBuilderAPI import *

from OCC.Display.wxSamplesGui import display

def mirror(event=None):
    # Build original shape
    OriginalShape= BRepPrimAPI_MakeWedge(60.,100.,80.,20.).Shape()
    # Define transformation
    theTransformation = gp_Trsf()
    PntCenterOfTheTransformation = gp_Pnt(110.,60.,60.)
    V = BRepBuilderAPI_MakeVertex(PntCenterOfTheTransformation)	
    theTransformation.SetMirror(PntCenterOfTheTransformation);
    # Apply transformation
    myBRepTransformation = BRepBuilderAPI_Transform(OriginalShape,theTransformation)
    TransformedShape = myBRepTransformation.Shape() 
    
    display.EraseAll()
    display.DisplayColoredShape(OriginalShape,'GREEN')
    display.DisplayColoredShape(TransformedShape,'BLUE')
    display.DisplayShape(V.Vertex())

def exit(event=None):
    import sys; sys.exit()

if __name__ == '__main__':
    from OCC.Display.wxSamplesGui import start_display, add_function_to_menu, add_menu
    add_menu('topology transformations')
    add_function_to_menu('topology transformations', mirror)
    add_function_to_menu('topology transformations', exit)
    start_display()
    
