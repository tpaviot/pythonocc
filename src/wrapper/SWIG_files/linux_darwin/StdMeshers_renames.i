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
%rename(GetName) StdMeshers_Propagation::GetName;
%rename(SetPropagationMgr) StdMeshers_Propagation::SetPropagationMgr;
%rename(GetPropagationSource) StdMeshers_Propagation::GetPropagationSource;
%rename(IsForwardEdge) StdMeshers_PrismAsBlock::IsForwardEdge;
%rename(GetWallFaces) StdMeshers_PrismAsBlock::GetWallFaces;
%rename(AddPrisms) StdMeshers_Prism_3D::AddPrisms;
%rename(FindSubShapeAssociation) StdMeshers_ProjectionUtils::FindSubShapeAssociation;
%rename(FindFaceAssociation) StdMeshers_ProjectionUtils::FindFaceAssociation;
%rename(InitVertexAssociation) StdMeshers_ProjectionUtils::InitVertexAssociation;
%rename(InsertAssociation) StdMeshers_ProjectionUtils::InsertAssociation;
%rename(IsSubShape) StdMeshers_ProjectionUtils::IsSubShape;
%rename(GetEdgeByVertices) StdMeshers_ProjectionUtils::GetEdgeByVertices;
%rename(GetNextFace) StdMeshers_ProjectionUtils::GetNextFace;
%rename(GetNextVertex) StdMeshers_ProjectionUtils::GetNextVertex;
%rename(GetPropagationEdge) StdMeshers_ProjectionUtils::GetPropagationEdge;
%rename(FindMatchingNodesOnFaces) StdMeshers_ProjectionUtils::FindMatchingNodesOnFaces;
%rename(IsClosedEdge) StdMeshers_ProjectionUtils::IsClosedEdge;
%rename(OuterShape) StdMeshers_ProjectionUtils::OuterShape;
%rename(MakeComputed) StdMeshers_ProjectionUtils::MakeComputed;
%rename(Count) StdMeshers_ProjectionUtils::Count;
%rename(SetEventListener) StdMeshers_ProjectionUtils::SetEventListener;
%rename(IsBoundaryEdge) StdMeshers_ProjectionUtils::IsBoundaryEdge;
%rename(GetFaceWires) StdMeshers_FaceSide::GetFaceWires;
