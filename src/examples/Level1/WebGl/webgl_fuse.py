##Copyright 2011 Thomas Paviot (tpaviot@gmail.com)
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

from OCC.Display.WebGl import webgl_renderer
from OCC.BRepPrimAPI import *
from OCC.Utils.Construct import *
    
def fuse(event=None):
    box1 = BRepPrimAPI_MakeBox(20,10,10).Shape()
    sphere = translate_topods_from_vector(BRepPrimAPI_MakeSphere(10).Shape(),gp_Vec(.5,.5,0))
    box1 = translate_topods_from_vector(box1,gp_Vec(.5,.5,0) )
    fuse = BRepAlgoAPI_Fuse(box1,sphere).Shape()
    my_renderer = webgl_renderer.WebGlRenderer()
    my_renderer.DisplayShape(fuse)

if __name__ == '__main__':
    fuse()
