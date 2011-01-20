/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<BRepMesh.hxx>
#include<BRepMesh_Array1OfBiPoint.hxx>
#include<BRepMesh_Array1OfVertexOfDelaun.hxx>
#include<BRepMesh_BiPoint.hxx>
#include<BRepMesh_Classifier.hxx>
#include<BRepMesh_ComparatorOfIndexedVertexOfDelaun.hxx>
#include<BRepMesh_ComparatorOfVertexOfDelaun.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfCouplePnt.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfIntegerFace.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfIntegerListOfXY.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfMeshVertexInteger.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfShapeEdgeDiscret.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfShapeSurfaceGrid.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfVertexInteger.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfCouplePnt.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfIntegerFace.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfVertexInteger.hxx>
#include<BRepMesh_DataMapOfCouplePnt.hxx>
#include<BRepMesh_DataMapOfIntegerFace.hxx>
#include<BRepMesh_DataMapOfIntegerListOfXY.hxx>
#include<BRepMesh_DataMapOfMeshVertexInteger.hxx>
#include<BRepMesh_DataMapOfShapeEdgeDiscret.hxx>
#include<BRepMesh_DataMapOfShapeReal.hxx>
#include<BRepMesh_DataMapOfShapeSurfaceGrid.hxx>
#include<BRepMesh_DataMapOfVertexInteger.hxx>
#include<BRepMesh_DataStructureOfDelaun.hxx>
#include<BRepMesh_Delaun.hxx>
#include<BRepMesh_DiscretFactory.hxx>
#include<BRepMesh_DiscretRoot.hxx>
#include<BRepMesh_Edge.hxx>
#include<BRepMesh_EdgeDiscret.hxx>
#include<BRepMesh_ElemHasherOfDataStructureOfDelaun.hxx>
#include<BRepMesh_FactoryError.hxx>
#include<BRepMesh_FastDiscret.hxx>
#include<BRepMesh_GeomTool.hxx>
#include<BRepMesh_HArray1OfVertexOfDelaun.hxx>
#include<BRepMesh_HeapSortIndexedVertexOfDelaun.hxx>
#include<BRepMesh_HeapSortVertexOfDelaun.hxx>
#include<BRepMesh_IDMapOfLinkOfDataStructureOfDelaun.hxx>
#include<BRepMesh_IDMapOfNodeOfDataStructureOfDelaun.hxx>
#include<BRepMesh_IMapOfElementOfDataStructureOfDelaun.hxx>
#include<BRepMesh_IncrementalMesh.hxx>
#include<BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun.hxx>
#include<BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun.hxx>
#include<BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun.hxx>
#include<BRepMesh_IndexedMapNodeOfIndexedMapOfVertex.hxx>
#include<BRepMesh_IndexedMapOfVertex.hxx>
#include<BRepMesh_LinkHasherOfDataStructureOfDelaun.hxx>
#include<BRepMesh_ListIteratorOfListOfSurfaceGrid.hxx>
#include<BRepMesh_ListIteratorOfListOfVertex.hxx>
#include<BRepMesh_ListIteratorOfListOfXY.hxx>
#include<BRepMesh_ListNodeOfListOfSurfaceGrid.hxx>
#include<BRepMesh_ListNodeOfListOfVertex.hxx>
#include<BRepMesh_ListNodeOfListOfXY.hxx>
#include<BRepMesh_ListOfSurfaceGrid.hxx>
#include<BRepMesh_ListOfVertex.hxx>
#include<BRepMesh_ListOfXY.hxx>
#include<BRepMesh_MapIteratorOfMapOfAsciiString.hxx>
#include<BRepMesh_MapOfAsciiString.hxx>
#include<BRepMesh_NodeHasherOfDataStructureOfDelaun.hxx>
#include<BRepMesh_PDiscretRoot.hxx>
#include<BRepMesh_PluginMacro.hxx>
#include<BRepMesh_SelectorOfDataStructureOfDelaun.hxx>
#include<BRepMesh_ShapeTool.hxx>
#include<BRepMesh_Status.hxx>
#include<BRepMesh_StdMapNodeOfMapOfAsciiString.hxx>
#include<BRepMesh_SurfaceGrid.hxx>
#include<BRepMesh_Triangle.hxx>
#include<BRepMesh_Vertex.hxx>
#include<BRepMesh_VertexHasher.hxx>
#include<Handle_BRepMesh_DataMapNodeOfDataMapOfCouplePnt.hxx>
#include<Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerFace.hxx>
#include<Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY.hxx>
#include<Handle_BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger.hxx>
#include<Handle_BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret.hxx>
#include<Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<Handle_BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid.hxx>
#include<Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger.hxx>
#include<Handle_BRepMesh_DataStructureOfDelaun.hxx>
#include<Handle_BRepMesh_EdgeDiscret.hxx>
#include<Handle_BRepMesh_FastDiscret.hxx>
#include<Handle_BRepMesh_HArray1OfVertexOfDelaun.hxx>
#include<Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun.hxx>
#include<Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun.hxx>
#include<Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun.hxx>
#include<Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex.hxx>
#include<Handle_BRepMesh_ListNodeOfListOfSurfaceGrid.hxx>
#include<Handle_BRepMesh_ListNodeOfListOfVertex.hxx>
#include<Handle_BRepMesh_ListNodeOfListOfXY.hxx>
#include<Handle_BRepMesh_StdMapNodeOfMapOfAsciiString.hxx>
#include<Handle_BRepMesh_SurfaceGrid.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TColStd_ListOfInteger.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<gp_XY.hxx>
#include<BRepMesh.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Edge.hxx>
#include<TCollection_AsciiString.hxx>
#include<TopoDS_Face.hxx>
#include<Bnd_Box.hxx>
#include<TopoDS_Vertex.hxx>
#include<gp_Pnt2d.hxx>
#include<BRepAdaptor_Curve.hxx>
#include<gp_Pnt.hxx>
#include<Handle_Poly_Triangulation.hxx>
#include<MeshShape_Couple.hxx>
#include<MeshShape_DataMapOfShapeListOfTransient.hxx>
#include<TColStd_IndexedMapOfInteger.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_BRepAdaptor_HSurface.hxx>
#include<MeshShape_SurfacePoint.hxx>
#include<MeshShape_ListOfSurfacePoint.hxx>
#include<gp_Dir.hxx>
#include<Bnd_Box2d.hxx>
%}
