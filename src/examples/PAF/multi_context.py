##Copyright 2010 Thomas Paviot (tpaviot@gmail.com)
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

from OCC.PAF.Context import ParametricModelingContext
from OCC.PAF.Parametric import Parameters

# First context / first parameterized box
p = Parameters()            # Create a parameters set
context1 = ParametricModelingContext(p)     # Create and initialize a parametric context
p.X1, p.Y1, p.Z1, p.X2, p.Y2, p.Z2 = 12,70,12,30,30,30
my_pnt1 = context1.basic_operations.MakePointXYZ(p.X1,p.Y1,p.Z1, name="Pnt1", show=True)
my_pnt2 = context1.basic_operations.MakePointXYZ(p.X2,p.Y2,p.Z2, name="Pnt2", show=True)
my_box1 = context1.prim_operations.MakeBoxTwoPnt(my_pnt1,my_pnt2,name="Box1", show=True)

# Second context / second parameterized box
p2 = Parameters()
context2 = ParametricModelingContext(p2)
p2.X1, p2.Y1, p2.Z1, p2.X2, p2.Y2, p2.Z2 = 16,80,20,40,25,50
my_pnt3 = context2.basic_operations.MakePointXYZ(p2.X1,p2.Y1,p2.Z1, name="Pnt3", show=True)
my_pnt4 = context2.basic_operations.MakePointXYZ(p2.X2,p2.Y2,p2.Z2, name="Pnt4", show=True)
my_box2 = context2.prim_operations.MakeBoxTwoPnt(my_pnt3,my_pnt4,name="Box2", show=True)

# Display contexts
from OCC.Display.SimpleGui import init_display
display, start_display, add_menu, add_function_to_menu = init_display()
context1.set_display(display)
context2.set_display(display)
start_display()
