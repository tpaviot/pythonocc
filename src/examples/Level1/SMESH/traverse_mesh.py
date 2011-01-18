##Copyright 2010 Thomas Paviot (tpaviot@gmail.com)
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
from OCC.TopAbs import *
from OCC.TopExp import *
from OCC.TopoDS import *
from OCC.SMESH import *
from OCC.StdMeshers import *
from OCC.MeshVS import *

#Create the shape to mesh

aShape = BRepPrimAPI_MakeBox(10,20,40).Shape()

aMeshGen = SMESH_Gen()
aMesh = aMeshGen.CreateMesh(0,True)

def ComputeMesh(MEFISTO2=False):
    an1DHypothesis = StdMeshers_Arithmetic1D(0,0,aMeshGen)
    #print dir(an1DHypothesis)
    #print an1DHypothesis.SaveTo()
    
    an1DHypothesis.SetLength(1.,False)
    an1DHypothesis.SetLength(2.,True)
    an1DAlgo = StdMeshers_Regular_1D(1,0,aMeshGen)
    
    if MEFISTO2:
    #2D
        a2dHypothseis = StdMeshers_TrianglePreference(2,0,aMeshGen) #define the boundary
        a2dAlgo = StdMeshers_MEFISTO_2D(3,0,aMeshGen)
    else:
        a2dHypothseis = StdMeshers_QuadranglePreference(2,0,aMeshGen)
        a2dAlgo = StdMeshers_Quadrangle_2D(3,0,aMeshGen)
 
   
    #Calculate mesh
    aMesh.ShapeToMesh(aShape)
    
    #Assign hyptothesis to mesh
    aMesh.AddHypothesis(aShape,0)
    aMesh.AddHypothesis(aShape,1)
    aMesh.AddHypothesis(aShape,2)
    aMesh.AddHypothesis(aShape,3)
    
    #Compute the data
    aMeshGen.Compute(aMesh,aMesh.GetShapeToMesh())

ComputeMesh()
# Traverse mesh nodes, edges and faces
# Get the SMESHDS mesh
mesh_ds = aMesh.GetMeshDS()

print "Results:"
print "Nb Nodes", mesh_ds.NbNodes()
print "Nb Edges", mesh_ds.NbEdges()
print "Nb Faces", mesh_ds.NbFaces()

for i in range(mesh_ds.NbNodes()-1):
    node = mesh_ds.nodeValue(i)
    print 'Coordinates of node %i:(%f,%f,%f)'%(i, node.X(), node.Y(), node.Z())

for i in range(mesh_ds.NbEdges()-1):
    edge = mesh_ds.edgeValue(i)
    print 'Edge %i: connected to %i nodes, shared between %i faces'%(i,edge.NbNodes(),edge.NbFaces())#,dir(edge)

for i in range(mesh_ds.NbFaces()-1):
    face = mesh_ds.faceValue(i)
    print 'Face %i ok'%i


