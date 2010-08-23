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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%rename(getname) StdMeshers_Propagation::GetName;
%rename(setpropagationmgr) StdMeshers_Propagation::SetPropagationMgr;
%rename(getpropagationsource) StdMeshers_Propagation::GetPropagationSource;
%rename(isforwardedge) StdMeshers_PrismAsBlock::IsForwardEdge;
%rename(getwallfaces) StdMeshers_PrismAsBlock::GetWallFaces;
%rename(addprisms) StdMeshers_Prism_3D::AddPrisms;
%rename(findsubshapeassociation) StdMeshers_ProjectionUtils::FindSubShapeAssociation;
%rename(findfaceassociation) StdMeshers_ProjectionUtils::FindFaceAssociation;
%rename(initvertexassociation) StdMeshers_ProjectionUtils::InitVertexAssociation;
%rename(insertassociation) StdMeshers_ProjectionUtils::InsertAssociation;
%rename(issubshape) StdMeshers_ProjectionUtils::IsSubShape;
%rename(getedgebyvertices) StdMeshers_ProjectionUtils::GetEdgeByVertices;
%rename(getnextface) StdMeshers_ProjectionUtils::GetNextFace;
%rename(getnextvertex) StdMeshers_ProjectionUtils::GetNextVertex;
%rename(getpropagationedge) StdMeshers_ProjectionUtils::GetPropagationEdge;
%rename(findmatchingnodesonfaces) StdMeshers_ProjectionUtils::FindMatchingNodesOnFaces;
%rename(isclosededge) StdMeshers_ProjectionUtils::IsClosedEdge;
%rename(outershape) StdMeshers_ProjectionUtils::OuterShape;
%rename(makecomputed) StdMeshers_ProjectionUtils::MakeComputed;
%rename(count) StdMeshers_ProjectionUtils::Count;
%rename(seteventlistener) StdMeshers_ProjectionUtils::SetEventListener;
%rename(isboundaryedge) StdMeshers_ProjectionUtils::IsBoundaryEdge;
%rename(getfacewires) StdMeshers_FaceSide::GetFaceWires;
