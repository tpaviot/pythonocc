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

from OCC.Utils.DataExchange.STL import STLImporter
from OCC.Display.SimpleGui import *

# open/parse STL file and get the resulting TopoDS_Shape instance
my_stl_importer = STLImporter("../../data/STL/venus.stl")
my_stl_importer.read_file()
the_shape = my_stl_importer.get_shape()

# Then display the shape
display, start_display, add_menu, add_function_to_menu = init_display()
display.DisplayShape(the_shape,color='RED')
start_display()
