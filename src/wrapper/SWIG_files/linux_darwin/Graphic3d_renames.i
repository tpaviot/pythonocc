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
%rename(DownCast) Handle_Graphic3d_TextureRoot::DownCast;
%rename(DownCast) Handle_Graphic3d_TextureMap::DownCast;
%rename(DownCast) Handle_Graphic3d_Texture2D::DownCast;
%rename(DownCast) Handle_Graphic3d_Texture2Dmanual::DownCast;
%rename(DownCast) Handle_Graphic3d_DataStructureManager::DownCast;
%rename(DownCast) Handle_Graphic3d_AspectMarker3d::DownCast;
%rename(DownCast) Handle_Graphic3d_Texture1D::DownCast;
%rename(DownCast) Handle_Graphic3d_Texture1Dmanual::DownCast;
%rename(DownCast) Handle_Graphic3d_ArrayOfPrimitives::DownCast;
%rename(DownCast) Handle_Graphic3d_ArrayOfPolygons::DownCast;
%rename(DownCast) Handle_Graphic3d_MaterialDefinitionError::DownCast;
%rename(DownCast) Handle_Graphic3d_StructureManager::DownCast;
%rename(DownCast) Handle_Graphic3d_VectorError::DownCast;
%rename(DownCast) Handle_Graphic3d_ArrayOfTriangles::DownCast;
%rename(DownCast) Handle_Graphic3d_ArrayOfTriangleFans::DownCast;
%rename(DownCast) Handle_Graphic3d_PriorityDefinitionError::DownCast;
%rename(DownCast) Handle_Graphic3d_StructureDefinitionError::DownCast;
%rename(DownCast) Handle_Graphic3d_AspectFillArea3d::DownCast;
%rename(DownCast) Handle_Graphic3d_ListNodeOfListOfShortReal::DownCast;
%rename(DownCast) Handle_Graphic3d_AspectLine3d::DownCast;
%rename(DownCast) Handle_Graphic3d_ArrayOfQuadrangleStrips::DownCast;
%rename(DownCast) Handle_Graphic3d_ListNodeOfListOfPArray::DownCast;
%rename(DownCast) Handle_Graphic3d_Texture1Dsegment::DownCast;
%rename(DownCast) Handle_Graphic3d_Plotter::DownCast;
%rename(DownCast) Handle_Graphic3d_StdMapNodeOfMapOfStructure::DownCast;
%rename(DownCast) Handle_Graphic3d_SequenceNodeOfSequenceOfAddress::DownCast;
%rename(DownCast) Handle_Graphic3d_ArrayOfQuadrangles::DownCast;
%rename(DownCast) Handle_Graphic3d_Structure::DownCast;
%rename(DownCast) Handle_Graphic3d_GraphicDriver::DownCast;
%rename(DownCast) Handle_Graphic3d_GraphicDevice::DownCast;
%rename(DownCast) Handle_Graphic3d_AspectTextDefinitionError::DownCast;
%rename(DownCast) Handle_Graphic3d_TextureEnv::DownCast;
%rename(DownCast) Handle_Graphic3d_Texture2Dplane::DownCast;
%rename(DownCast) Handle_Graphic3d_PickIdDefinitionError::DownCast;
%rename(DownCast) Handle_Graphic3d_GroupDefinitionError::DownCast;
%rename(DownCast) Handle_Graphic3d_TransformError::DownCast;
%rename(DownCast) Handle_Graphic3d_ArrayOfPoints::DownCast;
%rename(DownCast) Handle_Graphic3d_SequenceNodeOfSequenceOfStructure::DownCast;
%rename(DownCast) Handle_Graphic3d_ArrayOfSegments::DownCast;
%rename(DownCast) Handle_Graphic3d_AspectText3d::DownCast;
%rename(DownCast) Handle_Graphic3d_HSequenceOfGroup::DownCast;
%rename(DownCast) Handle_Graphic3d_HSequenceOfStructure::DownCast;
%rename(DownCast) Handle_Graphic3d_ArrayOfPolylines::DownCast;
%rename(DownCast) Handle_Graphic3d_Group::DownCast;
%rename(DownCast) Handle_Graphic3d_ArrayOfTriangleStrips::DownCast;
%rename(DownCast) Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup::DownCast;
%rename(DownCast) Handle_Graphic3d_SequenceNodeOfSequenceOfGroup::DownCast;
%rename(DownCast) Handle_Graphic3d_InitialisationError::DownCast;
%rename(DownCast) Handle_Graphic3d_PlotterDefinitionError::DownCast;
%rename(DownCast) Handle_Graphic3d_CycleError::DownCast;
%rename(DownCast) Handle_Graphic3d_HSetOfGroup::DownCast;
%rename(Raise) Graphic3d_InitialisationError::Raise;
%rename(NewInstance) Graphic3d_InitialisationError::NewInstance;
%rename(Enable) Graphic3d_ArrayOfPrimitives::Enable;
%rename(Disable) Graphic3d_ArrayOfPrimitives::Disable;
%rename(IsEnable) Graphic3d_ArrayOfPrimitives::IsEnable;
%rename(Raise) Graphic3d_PlotterDefinitionError::Raise;
%rename(NewInstance) Graphic3d_PlotterDefinitionError::NewInstance;
%rename(NumberOfTextures) Graphic3d_Texture2D::NumberOfTextures;
%rename(TextureName) Graphic3d_Texture2D::TextureName;
%rename(AcceptConnection) Graphic3d_Structure::AcceptConnection;
%rename(Network) Graphic3d_Structure::Network;
%rename(PrintNetwork) Graphic3d_Structure::PrintNetwork;
%rename(Transforms) Graphic3d_Structure::Transforms;
%rename(Raise) Graphic3d_VectorError::Raise;
%rename(NewInstance) Graphic3d_VectorError::NewInstance;
%rename(Distance) Graphic3d_Vertex::Distance;
%rename(Raise) Graphic3d_MaterialDefinitionError::Raise;
%rename(NewInstance) Graphic3d_MaterialDefinitionError::NewInstance;
%rename(Raise) Graphic3d_AspectTextDefinitionError::Raise;
%rename(NewInstance) Graphic3d_AspectTextDefinitionError::NewInstance;
%rename(NumberOfMaterials) Graphic3d_MaterialAspect::NumberOfMaterials;
%rename(MaterialName) Graphic3d_MaterialAspect::MaterialName;
%rename(MaterialType) Graphic3d_MaterialAspect::MaterialType;
%rename(Raise) Graphic3d_PriorityDefinitionError::Raise;
%rename(NewInstance) Graphic3d_PriorityDefinitionError::NewInstance;
%rename(NumberOfTextures) Graphic3d_TextureEnv::NumberOfTextures;
%rename(TextureName) Graphic3d_TextureEnv::TextureName;
%rename(STRIPT_INIT) Graphic3d_Strips::STRIPT_INIT;
%rename(STRIPT_GET_STRIP) Graphic3d_Strips::STRIPT_GET_STRIP;
%rename(STRIPT_GET_VERTEX) Graphic3d_Strips::STRIPT_GET_VERTEX;
%rename(STRIPQ_INIT) Graphic3d_Strips::STRIPQ_INIT;
%rename(STRIPQ_GET_STRIP) Graphic3d_Strips::STRIPQ_GET_STRIP;
%rename(STRIPQ_GET_NEXT) Graphic3d_Strips::STRIPQ_GET_NEXT;
%rename(IsParallel) Graphic3d_Vector::IsParallel;
%rename(NormeOf) Graphic3d_Vector::NormeOf;
%rename(NumberOfTextures) Graphic3d_Texture1D::NumberOfTextures;
%rename(TextureName) Graphic3d_Texture1D::TextureName;
%rename(Limit) Graphic3d_StructureManager::Limit;
%rename(CurrentId) Graphic3d_StructureManager::CurrentId;
%rename(SetDefaultDegenerateModel) Graphic3d_AspectFillArea3d::SetDefaultDegenerateModel;
%rename(DefaultDegenerateModel) Graphic3d_AspectFillArea3d::DefaultDegenerateModel;
%rename(Raise) Graphic3d_GroupDefinitionError::Raise;
%rename(NewInstance) Graphic3d_GroupDefinitionError::NewInstance;
%rename(Raise) Graphic3d_TransformError::Raise;
%rename(NewInstance) Graphic3d_TransformError::NewInstance;
%rename(Light) Graphic3d_GraphicDriver::Light;
%rename(Plane) Graphic3d_GraphicDriver::Plane;
%rename(Raise) Graphic3d_PickIdDefinitionError::Raise;
%rename(NewInstance) Graphic3d_PickIdDefinitionError::NewInstance;
%rename(Raise) Graphic3d_CycleError::Raise;
%rename(NewInstance) Graphic3d_CycleError::NewInstance;
%rename(Raise) Graphic3d_StructureDefinitionError::Raise;
%rename(NewInstance) Graphic3d_StructureDefinitionError::NewInstance;
