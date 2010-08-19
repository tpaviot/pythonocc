##Copyright 2009-2010 Thomas Paviot (thomas.paviot@free.fr)
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

from OCC.Utils.DataExchange.IGES import IGESExporter
from OCC.BRepPrimAPI import *

# First create a simple shape to export
my_box_shape = BRepPrimAPI_MakeBox(50,50,50).Shape()
my_sphere_shape = BRepPrimAPI_MakeSphere(20).Shape()

# Export to STEP
my_iges_exporter = IGESExporter("result_export_multi.iges",format="5.3")
my_iges_exporter.AddShape(my_box_shape)
my_iges_exporter.AddShape(my_sphere_shape)
my_iges_exporter.WriteFile()
