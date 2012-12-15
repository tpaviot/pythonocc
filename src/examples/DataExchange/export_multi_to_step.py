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

from OCC.Utils.DataExchange.STEP import STEPExporter
from OCC.BRepPrimAPI import *

# First create a simple shape to export
my_box_shape = BRepPrimAPI_MakeBox(50,50,50).Shape()
my_sphere_shape = BRepPrimAPI_MakeSphere(20).Shape()

# Export to STEP
my_step_exporter = STEPExporter("result_export_multi.stp")
my_step_exporter.add_shape(my_box_shape)
my_step_exporter.add_shape(my_sphere_shape)
my_step_exporter.write_file()
