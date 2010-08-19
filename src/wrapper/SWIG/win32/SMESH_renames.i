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
%rename(downcast) Handle_SMESH_MeshVSLink::DownCast;
%rename(new) SMESH_ComputeError::New;
%rename(isalgo) SMESH_HypoFilter::IsAlgo;
%rename(isauxiliary) SMESH_HypoFilter::IsAuxiliary;
%rename(isapplicableto) SMESH_HypoFilter::IsApplicableTo;
%rename(isassignedto) SMESH_HypoFilter::IsAssignedTo;
%rename(is) SMESH_HypoFilter::Is;
%rename(isglobal) SMESH_HypoFilter::IsGlobal;
%rename(ismorelocalthan) SMESH_HypoFilter::IsMoreLocalThan;
%rename(hasname) SMESH_HypoFilter::HasName;
%rename(hasdim) SMESH_HypoFilter::HasDim;
%rename(hastype) SMESH_HypoFilter::HasType;
%rename(ismedium) SMESH_MesherHelper::IsMedium;
%rename(loadnodecolumns) SMESH_MesherHelper::LoadNodeColumns;
%rename(getsubshapebynode) SMESH_MesherHelper::GetSubShapeByNode;
%rename(wrapindex) SMESH_MesherHelper::WrapIndex;
%rename(nbancestors) SMESH_MesherHelper::NbAncestors;
%rename(getmiddleuv) SMESH_MesherHelper::GetMiddleUV;
%rename(makedata) SMESH_subMeshEventListenerData::MakeData;
%rename(nbvertices) SMESH_Block::NbVertices;
%rename(nbedges) SMESH_Block::NbEdges;
%rename(nbfaces) SMESH_Block::NbFaces;
%rename(nbsubshapes) SMESH_Block::NbSubShapes;
%rename(isvertexid) SMESH_Block::IsVertexID;
%rename(isedgeid) SMESH_Block::IsEdgeID;
%rename(isfaceid) SMESH_Block::IsFaceID;
%rename(shapeindex) SMESH_Block::ShapeIndex;
%rename(getcoordindonedge) SMESH_Block::GetCoordIndOnEdge;
%rename(getshapecoef) SMESH_Block::GetShapeCoef;
%rename(getshapeidbyparams) SMESH_Block::GetShapeIDByParams;
%rename(dumpshapeid) SMESH_Block::DumpShapeID;
%rename(insert) SMESH_Block::Insert;
%rename(findblockshapes) SMESH_Block::FindBlockShapes;
%rename(shellpoint) SMESH_Block::ShellPoint;
%rename(isforwardedge) SMESH_Block::IsForwardEdge;
%rename(getorderededges) SMESH_Block::GetOrderedEdges;
%rename(isstatusfatal) SMESH_Hypothesis::IsStatusFatal;
%rename(isreversedsubmesh) SMESH_Algo::IsReversedSubMesh;
%rename(edgelength) SMESH_Algo::EdgeLength;
%rename(continuity) SMESH_Algo::Continuity;
%rename(iscontinuous) SMESH_Algo::IsContinuous;
%rename(vertexnode) SMESH_Algo::VertexNode;
%rename(getshapediagonalsize) SMESH_Mesh::GetShapeDiagonalSize;
%rename(pseudoshape) SMESH_Mesh::PseudoShape;
%rename(isapplicablehypotesis) SMESH_subMesh::IsApplicableHypotesis;
%rename(getshapedim) SMESH_Gen::GetShapeDim;
%rename(getshapedim) SMESH_Gen::GetShapeDim;
%rename(isglobalhypothesis) SMESH_Gen::IsGlobalHypothesis;
