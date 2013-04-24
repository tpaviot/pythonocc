#!/usr/bin/env python

##Copyright 2009-2011 Jelle Feringa (jelleferinga@gmail.com)
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

from OCC.gp import *
from OCC.Geom import *
from OCC.FairCurve import *

from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()
from OCC.Utils.Construct import make_edge

import math, time

def error_code(n):
    errors = {0:"FairCurve_OK",
              1:"FairCurve_NotConverged",
              2:"FairCurve_InfiniteSliding",
              3:"FairCurve_NullHeight",
              }
    return errors[n]

def batten_curve( pt1, pt2, height, slope, angle1, angle2):
    fc = FairCurve_MinimalVariation(pt1, pt2, height, slope)
    fc.SetConstraintOrder1(2)
    fc.SetConstraintOrder2(2)
    fc.SetAngle1(angle1)
    fc.SetAngle2(angle2)
    fc.SetHeight(height)
    fc.SetSlope(slope)
    fc.SetFreeSliding(True)
    print fc.DumpToString()
    status = fc.Compute()
    print (error_code(status[0]), error_code(status[1]))
    return fc.Curve()

def faircurve(event=None):
    pt1 = gp_Pnt2d(0,0)
    pt2 = gp_Pnt2d(0,120)
    height = 100.
    slope = 0.3
    pl = Geom_Plane(gp_Pln())
    for i in range(0, 40, 1):
        # TODO: the parameter slope needs to be visualized
        bc = batten_curve(pt1, pt2, height, i/100., math.radians(i), math.radians(-i))
        display.EraseAll()
        display.DisplayShape(make_edge(bc, pl.GetHandle()), update=True)
        time.sleep(0.21)

if __name__ == "__main__":
    add_menu('fair curve')
    add_function_to_menu('fair curve', faircurve)
    start_display()












