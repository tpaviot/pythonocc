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
Box = BRepPrimAPI_MakeBox(200,60,60)
Box_s = Box.Shape()
#
# Create Sphere
#
Sphere = BRepPrimAPI_MakeSphere(gp_Pnt(100,20,20),80)
Sphere_s = Sphere.Shape()
#
# Cut: the shere is cut 'by' the box
#
Cut = BRepAlgoAPI_Cut(Sphere_s,Box_s)
Cut_s= Cut.Shape()
           
if 'display' in dir():
    import time
    display.EraseAll()
    display.DisplayShape(Box_s)
    display.DisplayShape(Sphere_s)
    time.sleep(2)
    display.EraseAll()
    display.DisplayShape(Cut_s)
