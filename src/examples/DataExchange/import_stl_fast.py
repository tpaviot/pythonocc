##Copyright 2009-2011 Thomas Paviot (tpaviot@gmail.com)
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

from OCC.DataExchange.STL_fast import get_fast_stl_mesh_from_path
from OCC.Display.SimpleGui import *

# open/parse STL file and get the resulting TopoDS_Shape instance
stl_shape = get_fast_stl_mesh_from_path("../data/STL/venus.stl")
print dir(stl_shape)

# Then display the shape
display, start_display, add_menu, add_function_to_menu = init_display()
display.Context.Display(stl_shape.GetHandle())
start_display()
