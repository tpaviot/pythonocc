from OCC.gp import *
from OCC.BRepPrimAPI import *
from OCC.BRepAlgoAPI import *

#
# Create Box
#
axe = gp_Ax2(gp_Pnt(10,10,10),gp_Dir(1,2,1))
Box = BRepPrimAPI_MakeBox(axe,60,80,100)
Box_s = Box.Shape()
#
# Create wedge
#
Wedge = BRepPrimAPI_MakeWedge(60.,100.,80.,20.)
Wedge_s = Wedge.Shape()
#
# Common surface
#
CommonSurface = BRepAlgoAPI_Common(Box_s,Wedge_s)
CommonSurface_s = CommonSurface.Shape()
           
if 'display' in dir():
    import time
    display.EraseAll()
    display.DisplayShape(Box_s)
    display.DisplayShape(Wedge_s)
    time.sleep(2)
    display.EraseAll()
    display.DisplayShape(CommonSurface_s)
