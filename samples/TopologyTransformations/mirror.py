from OCC.gp import *
from OCC.BRepPrimAPI import *
from OCC.BRepBuilderAPI import *

#
# Build original shape
#
S = BRepPrimAPI_MakeWedge(60.,100.,80.,20.)
OriginalShape= S.Shape()
#
# Define transformation
#
theTransformation = gp_Trsf()
PntCenterOfTheTransformation = gp_Pnt(110,60,60)
V = BRepBuilderAPI_MakeVertex(PntCenterOfTheTransformation)	
theTransformation.SetMirror(PntCenterOfTheTransformation);
#
# Apply transformation
#
myBRepTransformation = BRepBuilderAPI_Transform(OriginalShape,theTransformation)
TransformedShape = myBRepTransformation.Shape()

 

if 'display' in dir():
    display.EraseAll()
    display.DisplayColoredShape(OriginalShape,'GREEN')
    display.DisplayColoredShape(TransformedShape,'BLUE')
    display.DisplayShape(V.Vertex())
