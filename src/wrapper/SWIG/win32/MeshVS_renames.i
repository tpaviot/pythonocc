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
%rename(downcast) Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner::DownCast;
%rename(downcast) Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger::DownCast;
%rename(downcast) Handle_MeshVS_PrsBuilder::DownCast;
%rename(downcast) Handle_MeshVS_MeshPrsBuilder::DownCast;
%rename(downcast) Handle_MeshVS_DataSource::DownCast;
%rename(downcast) Handle_MeshVS_Mesh::DownCast;
%rename(downcast) Handle_MeshVS_MeshOwner::DownCast;
%rename(downcast) Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors::DownCast;
%rename(downcast) Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial::DownCast;
%rename(downcast) Handle_MeshVS_DummySensitiveEntity::DownCast;
%rename(downcast) Handle_MeshVS_SensitiveMesh::DownCast;
%rename(downcast) Handle_MeshVS_Drawer::DownCast;
%rename(downcast) Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger::DownCast;
%rename(downcast) Handle_MeshVS_SensitiveSegment::DownCast;
%rename(downcast) Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString::DownCast;
%rename(downcast) Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner::DownCast;
%rename(downcast) Handle_MeshVS_MeshEntityOwner::DownCast;
%rename(downcast) Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder::DownCast;
%rename(downcast) Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector::DownCast;
%rename(downcast) Handle_MeshVS_DeformedDataSource::DownCast;
%rename(downcast) Handle_MeshVS_TextPrsBuilder::DownCast;
%rename(downcast) Handle_MeshVS_DataSource3D::DownCast;
%rename(downcast) Handle_MeshVS_SensitiveFace::DownCast;
%rename(downcast) Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger::DownCast;
%rename(downcast) Handle_MeshVS_ElementalColorPrsBuilder::DownCast;
%rename(downcast) Handle_MeshVS_StdMapNodeOfMapOfTwoNodes::DownCast;
%rename(downcast) Handle_MeshVS_NodalColorPrsBuilder::DownCast;
%rename(downcast) Handle_MeshVS_SensitivePolyhedron::DownCast;
%rename(downcast) Handle_MeshVS_VectorPrsBuilder::DownCast;
%rename(downcast) Handle_MeshVS_HArray1OfSequenceOfInteger::DownCast;
%rename(downcast) Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean::DownCast;
%rename(downcast) Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor::DownCast;
%rename(createprismtopology) MeshVS_DataSource3D::CreatePrismTopology;
%rename(createpyramidtopology) MeshVS_DataSource3D::CreatePyramidTopology;
%rename(calculatearrow) MeshVS_VectorPrsBuilder::calculateArrow;
%rename(hashcode) MeshVS_ColorHasher::HashCode;
%rename(isequal) MeshVS_ColorHasher::IsEqual;
%rename(hashcode) MeshVS_TwoColorsHasher::HashCode;
%rename(isequal) MeshVS_TwoColorsHasher::IsEqual;
%rename(hashcode) MeshVS_TwoNodesHasher::HashCode;
%rename(isequal) MeshVS_TwoNodesHasher::IsEqual;
%rename(createaspectfillarea3d) MeshVS_Tool::CreateAspectFillArea3d;
%rename(createaspectfillarea3d) MeshVS_Tool::CreateAspectFillArea3d;
%rename(createaspectline3d) MeshVS_Tool::CreateAspectLine3d;
%rename(createaspectmarker3d) MeshVS_Tool::CreateAspectMarker3d;
%rename(createaspecttext3d) MeshVS_Tool::CreateAspectText3d;
%rename(getnormal) MeshVS_Tool::GetNormal;
%rename(getaveragenormal) MeshVS_Tool::GetAverageNormal;
%rename(addvolumeprs) MeshVS_MeshPrsBuilder::AddVolumePrs;
%rename(howmanyprimitives) MeshVS_MeshPrsBuilder::HowManyPrimitives;
