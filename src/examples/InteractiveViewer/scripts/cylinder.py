#!/usr/bin/env python

import math
from OCC.BRepPrimAPI import BRepPrimAPI_MakeCylinder
from OCC.IGESControl import IGESControl_Writer, IGESControl_Controller
from OCC.gp import *
#
# Make the 1st cylinder
#
cyl1 = BRepPrimAPI_MakeCylinder(50, 200)
cyl1_shape = cyl1.Shape()
#
# Make the 2nd cylinder
#
cyl2 = BRepPrimAPI_MakeCylinder(gp_Ax2(gp_Pnt(200, 200, 0),
                                gp_Dir(0, 0, 1)), 40, 110,
                                210*math.pi/180)
cyl2_shape = cyl2.Shape()
#
# Export result to IGES file
#
i = IGESControl_Controller()
i.Init()
iges_writer = IGESControl_Writer()
iges_writer.AddShape(cyl1_shape)
iges_writer.AddShape(cyl2_shape)
iges_writer.Write("./cylinder.iges")
