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
%rename(DownCast) Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY::DownCast;
%rename(DownCast) Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun::DownCast;
%rename(DownCast) Handle_BRepMesh_HArray1OfVertexOfDelaun::DownCast;
%rename(DownCast) Handle_BRepMesh_FaceAttribute::DownCast;
%rename(DownCast) Handle_BRepMesh_FastDiscret::DownCast;
%rename(DownCast) Handle_BRepMesh_DataStructureOfDelaun::DownCast;
%rename(DownCast) Handle_BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon::DownCast;
%rename(DownCast) Handle_BRepMesh_DiscretRoot::DownCast;
%rename(DownCast) Handle_BRepMesh_FastDiscretFace::DownCast;
%rename(DownCast) Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger::DownCast;
%rename(DownCast) Handle_BRepMesh_ListNodeOfListOfVertex::DownCast;
%rename(DownCast) Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerPnt::DownCast;
%rename(DownCast) Handle_BRepMesh_DataMapNodeOfDataMapOfFaceAttribute::DownCast;
%rename(DownCast) Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun::DownCast;
%rename(DownCast) Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex::DownCast;
%rename(DownCast) Handle_BRepMesh_ListNodeOfListOfXY::DownCast;
%rename(DownCast) Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfInteger::DownCast;
%rename(DownCast) Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun::DownCast;
%rename(DownCast) Handle_BRepMesh_IncrementalMesh::DownCast;
%rename(DownCast) Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal::DownCast;
%rename(Sort) BRepMesh_HeapSortIndexedVertexOfDelaun::Sort;
%rename(Mesh) BRepMesh::Mesh;
%rename(Discret) BRepMesh_IncrementalMesh::Discret;
%rename(IsParallelDefault) BRepMesh_IncrementalMesh::IsParallelDefault;
%rename(SetParallelDefault) BRepMesh_IncrementalMesh::SetParallelDefault;
%rename(Orientation) BRepMesh_ShapeTool::Orientation;
%rename(Bound) BRepMesh_ShapeTool::Bound;
%rename(FirstVertex) BRepMesh_ShapeTool::FirstVertex;
%rename(LastVertex) BRepMesh_ShapeTool::LastVertex;
%rename(Vertices) BRepMesh_ShapeTool::Vertices;
%rename(Range) BRepMesh_ShapeTool::Range;
%rename(UVPoints) BRepMesh_ShapeTool::UVPoints;
%rename(Degenerated) BRepMesh_ShapeTool::Degenerated;
%rename(Tolerance) BRepMesh_ShapeTool::Tolerance;
%rename(Parameter) BRepMesh_ShapeTool::Parameter;
%rename(Parameters) BRepMesh_ShapeTool::Parameters;
%rename(Locate) BRepMesh_ShapeTool::Locate;
%rename(Pnt) BRepMesh_ShapeTool::Pnt;
%rename(AddInFace) BRepMesh_ShapeTool::AddInFace;
%rename(RelativeEdgeDeflection) BRepMesh_FastDiscret::RelativeEdgeDeflection;
%rename(BoxMaxDimension) BRepMesh_FastDiscret::BoxMaxDimension;
%rename(D0) BRepMesh_GeomTool::D0;
%rename(Normal) BRepMesh_GeomTool::Normal;
%rename(Sort) BRepMesh_HeapSortVertexOfDelaun::Sort;
%rename(HashCode) BRepMesh_VertexHasher::HashCode;
%rename(IsEqual) BRepMesh_VertexHasher::IsEqual;
%rename(HashCode) BRepMesh_LinkHasherOfDataStructureOfDelaun::HashCode;
%rename(IsEqual) BRepMesh_LinkHasherOfDataStructureOfDelaun::IsEqual;
%rename(HashCode) BRepMesh_NodeHasherOfDataStructureOfDelaun::HashCode;
%rename(IsEqual) BRepMesh_NodeHasherOfDataStructureOfDelaun::IsEqual;
%rename(FindUV) BRepMesh_FastDiscretFace::FindUV;
%rename(HashCode) BRepMesh_ElemHasherOfDataStructureOfDelaun::HashCode;
%rename(IsEqual) BRepMesh_ElemHasherOfDataStructureOfDelaun::IsEqual;
