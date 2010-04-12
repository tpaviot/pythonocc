##Copyright 2009 Thomas Paviot (tpaviot@gmail.com)
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

from OCC.Utils.DataExchange.STL import STLExporter
from OCC.BRepPrimAPI import *

# First create a simple shape to export
my_box_shape = BRepPrimAPI_MakeBox(50,50,50).Shape()

# Export to STL. If ASCIIMode is set to False, then binary format is used.
my_stl_exporter = STLExporter("result_export.stl",ASCIIMode=True)
my_stl_exporter.SetShape(my_box_shape)
my_stl_exporter.WriteFile()
