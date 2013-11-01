##Copyright 2009 Thomas Paviot (tpaviot@gmail.com)
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

from OCC.DataExchange.STEP import StepOCAF_Export
from OCC.BRepPrimAPI import *

# First create a simple shape to export
my_box_shape = BRepPrimAPI_MakeBox(50,50,50).Shape()
my_sphere_shape = BRepPrimAPI_MakeSphere(20).Shape()

# Export to STEP
my_step_exporter = StepOCAF_Export("result_export_multi.stp")
my_step_exporter.set_color(1,0,0) # red
my_step_exporter.set_layer('red')
my_step_exporter.add_shape(my_box_shape)
my_step_exporter.set_color(0,1,0) # green
my_step_exporter.set_layer('green')
my_step_exporter.add_shape(my_sphere_shape)
my_step_exporter.write_file()
