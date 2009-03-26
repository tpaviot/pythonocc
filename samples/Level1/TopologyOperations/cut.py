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
from OCC.BRepFilletAPI import *
from OCC.TopExp import *
from OCC.TopoDS import *
from OCC.TopAbs import *
from OCC.BRepAlgoAPI import *

#
# Create Box
#
Box = BRepPrimAPI_MakeBox(200,60,60).Shape()
#
# Create Sphere
#
Sphere = BRepPrimAPI_MakeSphere(gp_Pnt(100,20,20),80).Shape()
#
# Cut: the shere is cut 'by' the box
#
Cut = BRepAlgoAPI_Cut(Sphere,Box).Shape()
           
if 'display' in dir():
    import time
    display.EraseAll()
    display.DisplayShape(Box)
    display.DisplayShape(Sphere)
    time.sleep(2)
    display.EraseAll()
    display.DisplayShape(Cut)
