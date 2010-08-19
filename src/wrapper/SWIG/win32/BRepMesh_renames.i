/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision
$Date
$Author
$HeaderURL

*/
%rename(downcast) Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY::DownCast;
%rename(downcast) Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun::DownCast;
%rename(downcast) Handle_BRepMesh_ListNodeOfListOfXY::DownCast;
%rename(downcast) Handle_BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid::DownCast;
%rename(downcast) Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun::DownCast;
%rename(downcast) Handle_BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger::DownCast;
%rename(downcast) Handle_BRepMesh_EdgeDiscret::DownCast;
%rename(downcast) Handle_BRepMesh_FastDiscret::DownCast;
%rename(downcast) Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger::DownCast;
%rename(downcast) Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal::DownCast;
%rename(downcast) Handle_BRepMesh_DataStructureOfDelaun::DownCast;
%rename(downcast) Handle_BRepMesh_ListNodeOfListOfSurfaceGrid::DownCast;
%rename(downcast) Handle_BRepMesh_ListNodeOfListOfVertex::DownCast;
%rename(downcast) Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex::DownCast;
%rename(downcast) Handle_BRepMesh_SurfaceGrid::DownCast;
%rename(downcast) Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerFace::DownCast;
%rename(downcast) Handle_BRepMesh_StdMapNodeOfMapOfAsciiString::DownCast;
%rename(downcast) Handle_BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret::DownCast;
%rename(downcast) Handle_BRepMesh_DataMapNodeOfDataMapOfCouplePnt::DownCast;
%rename(downcast) Handle_BRepMesh_HArray1OfVertexOfDelaun::DownCast;
%rename(downcast) Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun::DownCast;
%rename(hashcode) BRepMesh_NodeHasherOfDataStructureOfDelaun::HashCode;
%rename(isequal) BRepMesh_NodeHasherOfDataStructureOfDelaun::IsEqual;
%rename(sort) BRepMesh_HeapSortIndexedVertexOfDelaun::Sort;
%rename(mesh) BRepMesh::Mesh;
%rename(orientation) BRepMesh_ShapeTool::Orientation;
%rename(orientation) BRepMesh_ShapeTool::Orientation;
%rename(bound) BRepMesh_ShapeTool::Bound;
%rename(bound) BRepMesh_ShapeTool::Bound;
%rename(firstvertex) BRepMesh_ShapeTool::FirstVertex;
%rename(lastvertex) BRepMesh_ShapeTool::LastVertex;
%rename(vertices) BRepMesh_ShapeTool::Vertices;
%rename(range) BRepMesh_ShapeTool::Range;
%rename(uvpoints) BRepMesh_ShapeTool::UVPoints;
%rename(degenerated) BRepMesh_ShapeTool::Degenerated;
%rename(tolerance) BRepMesh_ShapeTool::Tolerance;
%rename(parameter) BRepMesh_ShapeTool::Parameter;
%rename(parameters) BRepMesh_ShapeTool::Parameters;
%rename(locate) BRepMesh_ShapeTool::Locate;
%rename(pnt) BRepMesh_ShapeTool::Pnt;
%rename(addinface) BRepMesh_ShapeTool::AddInFace;
%rename(d0) BRepMesh_GeomTool::D0;
%rename(normal) BRepMesh_GeomTool::Normal;
%rename(curvaturecomplexity) BRepMesh_GeomTool::CurvatureComplexity;
%rename(sort) BRepMesh_HeapSortVertexOfDelaun::Sort;
%rename(hashcode) BRepMesh_LinkHasherOfDataStructureOfDelaun::HashCode;
%rename(isequal) BRepMesh_LinkHasherOfDataStructureOfDelaun::IsEqual;
%rename(hashcode) BRepMesh_VertexHasher::HashCode;
%rename(isequal) BRepMesh_VertexHasher::IsEqual;
%rename(hashcode) BRepMesh_ElemHasherOfDataStructureOfDelaun::HashCode;
%rename(isequal) BRepMesh_ElemHasherOfDataStructureOfDelaun::IsEqual;
