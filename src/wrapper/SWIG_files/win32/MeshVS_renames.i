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
%rename(DownCast) Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner::DownCast;
%rename(DownCast) Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger::DownCast;
%rename(DownCast) Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder::DownCast;
%rename(DownCast) Handle_MeshVS_PrsBuilder::DownCast;
%rename(DownCast) Handle_MeshVS_MeshPrsBuilder::DownCast;
%rename(DownCast) Handle_MeshVS_DataSource::DownCast;
%rename(DownCast) Handle_MeshVS_Mesh::DownCast;
%rename(DownCast) Handle_MeshVS_SensitiveSegment::DownCast;
%rename(DownCast) Handle_MeshVS_MeshOwner::DownCast;
%rename(DownCast) Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors::DownCast;
%rename(DownCast) Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial::DownCast;
%rename(DownCast) Handle_MeshVS_DummySensitiveEntity::DownCast;
%rename(DownCast) Handle_MeshVS_SensitiveMesh::DownCast;
%rename(DownCast) Handle_MeshVS_Drawer::DownCast;
%rename(DownCast) Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger::DownCast;
%rename(DownCast) Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString::DownCast;
%rename(DownCast) Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner::DownCast;
%rename(DownCast) Handle_MeshVS_MeshEntityOwner::DownCast;
%rename(DownCast) Handle_MeshVS_SensitivePolyhedron::DownCast;
%rename(DownCast) Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector::DownCast;
%rename(DownCast) Handle_MeshVS_DeformedDataSource::DownCast;
%rename(DownCast) Handle_MeshVS_TextPrsBuilder::DownCast;
%rename(DownCast) Handle_MeshVS_DataSource3D::DownCast;
%rename(DownCast) Handle_MeshVS_SensitiveFace::DownCast;
%rename(DownCast) Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger::DownCast;
%rename(DownCast) Handle_MeshVS_ElementalColorPrsBuilder::DownCast;
%rename(DownCast) Handle_MeshVS_NodalColorPrsBuilder::DownCast;
%rename(DownCast) Handle_MeshVS_VectorPrsBuilder::DownCast;
%rename(DownCast) Handle_MeshVS_HArray1OfSequenceOfInteger::DownCast;
%rename(DownCast) Handle_MeshVS_StdMapNodeOfMapOfTwoNodes::DownCast;
%rename(DownCast) Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean::DownCast;
%rename(DownCast) Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor::DownCast;
%rename(CreatePrismTopology) MeshVS_DataSource3D::CreatePrismTopology;
%rename(CreatePyramidTopology) MeshVS_DataSource3D::CreatePyramidTopology;
%rename(calculateArrow) MeshVS_VectorPrsBuilder::calculateArrow;
%rename(HashCode) MeshVS_ColorHasher::HashCode;
%rename(IsEqual) MeshVS_ColorHasher::IsEqual;
%rename(HashCode) MeshVS_TwoColorsHasher::HashCode;
%rename(IsEqual) MeshVS_TwoColorsHasher::IsEqual;
%rename(HashCode) MeshVS_TwoNodesHasher::HashCode;
%rename(IsEqual) MeshVS_TwoNodesHasher::IsEqual;
%rename(CreateAspectFillArea3d) MeshVS_Tool::CreateAspectFillArea3d;
%rename(CreateAspectLine3d) MeshVS_Tool::CreateAspectLine3d;
%rename(CreateAspectMarker3d) MeshVS_Tool::CreateAspectMarker3d;
%rename(CreateAspectText3d) MeshVS_Tool::CreateAspectText3d;
%rename(GetNormal) MeshVS_Tool::GetNormal;
%rename(GetAverageNormal) MeshVS_Tool::GetAverageNormal;
%rename(AddVolumePrs) MeshVS_MeshPrsBuilder::AddVolumePrs;
%rename(HowManyPrimitives) MeshVS_MeshPrsBuilder::HowManyPrimitives;
