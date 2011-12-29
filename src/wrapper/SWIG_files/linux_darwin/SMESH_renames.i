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
%rename(DownCast) Handle_SMESH_MeshVSLink::DownCast;
%rename(IsAlgo) SMESH_HypoFilter::IsAlgo;
%rename(IsAuxiliary) SMESH_HypoFilter::IsAuxiliary;
%rename(IsApplicableTo) SMESH_HypoFilter::IsApplicableTo;
%rename(IsAssignedTo) SMESH_HypoFilter::IsAssignedTo;
%rename(Is) SMESH_HypoFilter::Is;
%rename(IsGlobal) SMESH_HypoFilter::IsGlobal;
%rename(IsMoreLocalThan) SMESH_HypoFilter::IsMoreLocalThan;
%rename(HasName) SMESH_HypoFilter::HasName;
%rename(HasDim) SMESH_HypoFilter::HasDim;
%rename(HasType) SMESH_HypoFilter::HasType;
%rename(IsMedium) SMESH_MesherHelper::IsMedium;
%rename(LoadNodeColumns) SMESH_MesherHelper::LoadNodeColumns;
%rename(GetSubShapeByNode) SMESH_MesherHelper::GetSubShapeByNode;
%rename(WrapIndex) SMESH_MesherHelper::WrapIndex;
%rename(NbAncestors) SMESH_MesherHelper::NbAncestors;
%rename(NbVertices) SMESH_Block::NbVertices;
%rename(NbEdges) SMESH_Block::NbEdges;
%rename(NbFaces) SMESH_Block::NbFaces;
%rename(NbSubShapes) SMESH_Block::NbSubShapes;
%rename(IsVertexID) SMESH_Block::IsVertexID;
%rename(IsEdgeID) SMESH_Block::IsEdgeID;
%rename(IsFaceID) SMESH_Block::IsFaceID;
%rename(ShapeIndex) SMESH_Block::ShapeIndex;
%rename(GetCoordIndOnEdge) SMESH_Block::GetCoordIndOnEdge;
%rename(GetShapeCoef) SMESH_Block::GetShapeCoef;
%rename(GetShapeIDByParams) SMESH_Block::GetShapeIDByParams;
%rename(DumpShapeID) SMESH_Block::DumpShapeID;
%rename(Insert) SMESH_Block::Insert;
%rename(FindBlockShapes) SMESH_Block::FindBlockShapes;
%rename(ShellPoint) SMESH_Block::ShellPoint;
%rename(IsForwardEdge) SMESH_Block::IsForwardEdge;
%rename(GetOrderedEdges) SMESH_Block::GetOrderedEdges;
%rename(GetShapeDim) SMESH_Gen::GetShapeDim;
%rename(IsGlobalHypothesis) SMESH_Gen::IsGlobalHypothesis;
%rename(IsStatusFatal) SMESH_Hypothesis::IsStatusFatal;
%rename(GetShapeDiagonalSize) SMESH_Mesh::GetShapeDiagonalSize;
%rename(PseudoShape) SMESH_Mesh::PseudoShape;
%rename(New) SMESH_ComputeError::New;
%rename(IsReversedSubMesh) SMESH_Algo::IsReversedSubMesh;
%rename(EdgeLength) SMESH_Algo::EdgeLength;
%rename(Continuity) SMESH_Algo::Continuity;
%rename(IsContinuous) SMESH_Algo::IsContinuous;
%rename(VertexNode) SMESH_Algo::VertexNode;
%rename(MakeData) SMESH_subMeshEventListenerData::MakeData;
%rename(IsApplicableHypotesis) SMESH_subMesh::IsApplicableHypotesis;
