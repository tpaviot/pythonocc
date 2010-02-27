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

from OCC.Utils.DataExchange.STEP import STEPImporter

from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()

my_step_importer = STEPImporter("Hayon_C3.stp")
my_step_importer.ReadFile()
print "Number of shapes:%i"%my_step_importer.GetNbrShapes()
the_shapes = my_step_importer.GetShapes()
print the_shapes
the_compound = my_step_importer.GetCompound()
display.DisplayShape(the_shapes)
start_display()
