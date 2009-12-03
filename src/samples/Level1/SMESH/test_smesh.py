# This is a simple port of Fotis'code to python
# see: http://www.opencascade.org/org/forum/thread_14890/

from OCC.BRepPrimAPI import *
from OCC.TopAbs import *
from OCC.TopExp import *
from OCC.TopoDS import *
from OCC.SMESH import *
from OCC.StdMeshers import *
from OCC.MeshVS import *

from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()
#Create the shape to mesh
aShape = BRepPrimAPI_MakeSphere(40).Shape()
#aShape = BRepPrimAPI_MakeTorus(400,40).Shape()

aMeshGen = SMESH_Gen()
aMesh = aMeshGen.CreateMesh(0,True)

an1DHypothesis = StdMeshers_Arithmetic1D(0,0,aMeshGen)
an1DHypothesis.SetLength(1.,False)
an1DHypothesis.SetLength(5.,True)
an1DAlgo = StdMeshers_Regular_1D(1,0,aMeshGen)

a2dHypothseis = StdMeshers_QuadranglePreference(2,0,aMeshGen)
a2dAlgo = StdMeshers_Quadrangle_2D(3,0,aMeshGen)

#Calculate mesh
aMesh.ShapeToMesh(aShape)

exp3 = TopExp_Explorer(aMesh.GetShapeToMesh(), TopAbs_EDGE)
while exp3.More():
    print "bouzou"
#    aMesh.AddHypothesis(exp3.Current(),0)
    #aMesh.RebuildPropagationChains()
    break

#Assign hyptothesis to mesh
aMesh.AddHypothesis(aShape,0)
aMesh.AddHypothesis(aShape,1)
aMesh.AddHypothesis(aShape,2)
aMesh.AddHypothesis(aShape,3)

#Compute the data
aMeshGen.Compute(aMesh,aMesh.GetShapeToMesh())

# Export the data
aMesh.ExportDAT("_TEST.DAT")

# Display the data
aDS = SMESH_MeshVSLink(aMesh)
aMeshVS = MeshVS_Mesh(True)
DMF = 1 # to wrap!
MeshVS_BP_Mesh       =  5 # To wrap!

aPrsBuilder = MeshVS_MeshPrsBuilder(aMeshVS.GetHandle(),DMF,aDS.GetHandle(),0,MeshVS_BP_Mesh)
aMeshVS.SetDataSource(aDS.GetHandle())
aMeshVS.AddBuilder(aPrsBuilder.GetHandle(),True)


context = display.Context
context.Display(aMeshVS.GetHandle())
context.Deactivate(aMeshVS.GetHandle())
display.DisplayShape(aShape)
start_display()



