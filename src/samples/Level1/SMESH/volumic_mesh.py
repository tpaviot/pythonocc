##Copyright 2009 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

from OCC.BRepPrimAPI import *
from OCC.gp import *
from OCC.BRepAlgoAPI import *
from OCC.TopAbs import *
from OCC.TopExp import *
from OCC.TopoDS import *
from OCC.SMESH import *
from OCC.StdMeshers import *
from OCC.MeshVS import *

from OCC.Display.SimpleGui import 
display, start_display, add_menu, add_function_to_menu = init_display()

# First create a 'complex' shape (actually a boolean op between a box and a cylinder)
box = BRepPrimAPI_MakeBox(200,30,30).Shape()
sphere = BRepPrimAPI_MakeSphere(gp_Pnt(150,20,20),80).Shape()
aShape = BRepAlgoAPI_Cut(box,sphere).Shape()

# Create the Mesh
aMeshGen = SMESH_Gen()
aMesh = aMeshGen.CreateMesh(0,True)


# 1D
an1DHypothesis = StdMeshers_Arithmetic1D(0,0,aMeshGen)#discretization of the wire
an1DHypothesis.SetLength(5.,False) #the smallest distance between 2 points
an1DHypothesis.SetLength(10.,True) # the longest distance between 2 points
an1DAlgo = StdMeshers_Regular_1D(1,0,aMeshGen) # interpolation

# 2D
a2dHypothseis = StdMeshers_QuadranglePreference(2,0,aMeshGen) #define the boundary
a2dAlgo = StdMeshers_Quadrangle_2D(3,0,aMeshGen) # the 2D mesh

# 3D: Just uncomment the line to use the volumic mesher you want
a3dHypothesis = StdMeshers_Prism_3D(4,0,aMeshGen) #OK
#a3dHypothesis = StdMeshers_Hexa_3D(4,0,aMeshGen) #OK
#a3dHypothesis = StdMeshers_CompositeHexa_3D(4,0,aMeshGen) #Ok
#a3dHypothesis = StdMeshers_RadialPrism_3D(4,0,aMeshGen) # Don't work?

#Calculate mesh
aMesh.ShapeToMesh(aShape)

#Assign hyptothesis to mesh
aMesh.AddHypothesis(aShape,0)
aMesh.AddHypothesis(aShape,1)
aMesh.AddHypothesis(aShape,2)
aMesh.AddHypothesis(aShape,3)
aMesh.AddHypothesis(aShape,4)

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

