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
from OCC.BRepAlgoAPI import *

#
# Create Box
#
axe = gp_Ax2(gp_Pnt(10,10,10),gp_Dir(1,2,1))
Box = BRepPrimAPI_MakeBox(axe,60,80,100).Shape()
#
# Create wedge
#
Wedge = BRepPrimAPI_MakeWedge(60.,100.,80.,20.).Shape()
#
# Common surface
#
CommonSurface = BRepAlgoAPI_Common(Box,Wedge).Shape()
           
if 'display' in dir():
    import time
    display.EraseAll()
    display.DisplayShape(Box)
    display.DisplayShape(Wedge)
    time.sleep(2)
    display.EraseAll()
    display.DisplayShape(CommonSurface)
