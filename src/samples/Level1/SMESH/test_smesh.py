# This is a simple port of Fotis'code to python
# see: http://www.opencascade.org/org/forum/thread_14890/

from OCC.BRepPrimAPI import *
from OCC.TopAbs import *
from OCC.SMESH import *
from OCC.StdMeshers import *

#Create the shape to mesh
my_shape = BRepPrimAPI_MakeSphere(40).Shape()

aMeshGen = SMESH_Gen()
aMesh = aMeshGen.CreateMesh(0,True)

an1DHypothesis = StdMeshers_Arithmetic1D(0,0,aMeshGen)
an1DHypothesis.SetLength(10.,False)
an1DHypothesis.SetLength(50.,True)
an1DAlgo = StdMeshers_Regular_1D(1,0,aMeshGen)

a2dHypothseis = StdMeshers_QuadranglePreference(2,0,aMeshGen)
a2dAlgo = StdMeshers_Quadrangle_2D(3,0,aMeshGen)

#Calculate mesh
aMesh.ShapeToMesh(my_shape)


