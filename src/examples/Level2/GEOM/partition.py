__author__ = 'jelle'

from OCC.Utils.Construct import *
from OCC.Partition import *
from OCC.TopAbs import *
from OCC.TopoDS import *
from OCC.Utils.Topology import Topo
from OCC.KBE.base import Display

liX = make_line(gp_Pnt(-10,0,0), gp_Pnt(10,0,0))
liY = make_line(gp_Pnt(0,-10,0), gp_Pnt(0,10,0))
liZ = make_line(gp_Pnt(0,0,-10), gp_Pnt(0,0,10))

box = make_cube(gp_Pnt(-20,-20,-20), gp_Pnt(20,20,20))

#wiXY = compound([liX,liY])
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
#spl.AddShape(f2)
#spl.AddShape(liY)
spl.AddTool(f2)
#spl.KeepShapesInside(pl1)
#spl.RemoveShapesInside(pl2)
spl.Compute(TopAbs_SHAPE)
shp = spl.Shape()

shp = translate_topods_from_vector(shp, gp_Vec(30,0,0))

disp = Display()

tp = Topo(shp)

for i in tp.edges():
    disp(i)




disp((pl1,pl2))
#disp.start_display()

import ipdb; ipdb.set_trace()

print spl


