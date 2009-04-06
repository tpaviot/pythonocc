
from OCC.GEOMImpl import *
from OCC.SGEOM import GEOM_Parameter

docId = 100 #an integer
#
# Create engine
#
myEngine = GEOMImpl_Gen()
###
### Create 2 points 'P1' and 'P2'
###
prim_operations = myEngine.GetI3DPrimOperations(docId)
prim_operations.StartOperation() #for undo/redo
basic_operations = myEngine.GetIBasicOperations(docId)
####### Create point 1
x1 = GEOM_Parameter(1.0)
y1 = GEOM_Parameter(2.0)
z1 = GEOM_Parameter(1.0)
P1 = basic_operations.MakePointXYZ(x1,y1,z1).GetObject()
P1.SetName("Point 1")
####### Create point 2
x2 = GEOM_Parameter(2.0)
y2 = GEOM_Parameter(2.0)
z2 = GEOM_Parameter(2.0)
P2 = basic_operations.MakePointXYZ(x2,y2,z2).GetObject()
P2.SetName("Point 2")
####### Create a box from these points
Box = prim_operations.MakeBoxTwoPnt(P1.GetHandle(),P2.GetHandle())
prim_operations.FinishOperation()

