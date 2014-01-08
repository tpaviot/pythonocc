from OCC.Display.SimpleGui import init_display

__author__ = 'jelle'

import functools

from OCC.Utils.Construct import *
from OCC.Partition import *
from OCC.TopAbs import *
from OCC.TopoDS import *
from OCC.Utils.Topology import Topo
from OCC.KBE.base import Display

liX = make_line(gp_Pnt(-10,0,0), gp_Pnt(10,0,0))
liY = make_line(gp_Pnt(0,-10,0), gp_Pnt(0,10,0))
liZ = make_line(gp_Pnt(0,0,-10), gp_Pnt(0,0,10))

box = make_box(gp_Pnt(-20,-20,-20), gp_Pnt(20,20,20))

pl1 = make_closed_polygon(gp_Pnt(-10,-10,0),
                           gp_Pnt(10,-10,0),
                            gp_Pnt(10,10,0),
                             gp_Pnt(-10,10,0),
                                )

pl2 = make_closed_polygon(gp_Pnt(0,-10,-10),
                           gp_Pnt(0,10,-10),
                            gp_Pnt(0,10,10),
                             gp_Pnt(0,-10,10),
                                )


f1 = make_face(pl1)
f2 = make_face(pl2)

spl = Partition_Spliter()
spl.AddShape(f1)
spl.AddTool(f2)
spl.Compute(TopAbs_SHAPE)
shp = spl.Shape()

# start gui
display, start_display, add_menu, add_function_to_menu = init_display()


# move the results a little such that we can clearly see it
shp = translate_topods_from_vector(shp, gp_Vec(30,0,0))

# add the result to the viewer, in black
tp = Topo(shp)
for i in tp.edges():
    display.DisplayColoredShape(i, "BLACK")

display.DisplayShape((pl1,pl2))
display.DisplayShape((f1,f2))

display.FitAll()

start_display()
