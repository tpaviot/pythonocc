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
%rename(downcast) Handle_Graphic3d_GraphicDriver::DownCast;
%rename(downcast) Handle_Graphic3d_GroupDefinitionError::DownCast;
%rename(downcast) Handle_Graphic3d_TextureRoot::DownCast;
%rename(downcast) Handle_Graphic3d_TextureMap::DownCast;
%rename(downcast) Handle_Graphic3d_TextureEnv::DownCast;
%rename(downcast) Handle_Graphic3d_ArrayOfPrimitives::DownCast;
%rename(downcast) Handle_Graphic3d_ArrayOfPoints::DownCast;
%rename(downcast) Handle_Graphic3d_Texture2D::DownCast;
%rename(downcast) Handle_Graphic3d_SequenceNodeOfSequenceOfStructure::DownCast;
%rename(downcast) Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup::DownCast;
%rename(downcast) Handle_Graphic3d_Texture1D::DownCast;
%rename(downcast) Handle_Graphic3d_Texture1Dmanual::DownCast;
%rename(downcast) Handle_Graphic3d_ArrayOfPolygons::DownCast;
%rename(downcast) Handle_Graphic3d_AspectMarker3d::DownCast;
%rename(downcast) Handle_Graphic3d_ArrayOfPolylines::DownCast;
%rename(downcast) Handle_Graphic3d_AspectText3d::DownCast;
%rename(downcast) Handle_Graphic3d_TransformError::DownCast;
%rename(downcast) Handle_Graphic3d_PlotterDefinitionError::DownCast;
%rename(downcast) Handle_Graphic3d_Texture1Dsegment::DownCast;
%rename(downcast) Handle_Graphic3d_AspectLine3d::DownCast;
%rename(downcast) Handle_Graphic3d_Plotter::DownCast;
%rename(downcast) Handle_Graphic3d_DataStructureManager::DownCast;
%rename(downcast) Handle_Graphic3d_HSequenceOfGroup::DownCast;
%rename(downcast) Handle_Graphic3d_ArrayOfTriangleFans::DownCast;
%rename(downcast) Handle_Graphic3d_AspectTextDefinitionError::DownCast;
%rename(downcast) Handle_Graphic3d_CycleError::DownCast;
%rename(downcast) Handle_Graphic3d_VectorError::DownCast;
%rename(downcast) Handle_Graphic3d_Texture2Dmanual::DownCast;
%rename(downcast) Handle_Graphic3d_Group::DownCast;
%rename(downcast) Handle_Graphic3d_PriorityDefinitionError::DownCast;
%rename(downcast) Handle_Graphic3d_AspectFillArea3d::DownCast;
%rename(downcast) Handle_Graphic3d_ListNodeOfListOfShortReal::DownCast;
%rename(downcast) Handle_Graphic3d_ArrayOfQuadrangleStrips::DownCast;
%rename(downcast) Handle_Graphic3d_GraphicDevice::DownCast;
%rename(downcast) Handle_Graphic3d_InitialisationError::DownCast;
%rename(downcast) Handle_Graphic3d_ArrayOfTriangleStrips::DownCast;
%rename(downcast) Handle_Graphic3d_ArrayOfTriangles::DownCast;
%rename(downcast) Handle_Graphic3d_HSequenceOfStructure::DownCast;
%rename(downcast) Handle_Graphic3d_StdMapNodeOfMapOfStructure::DownCast;
%rename(downcast) Handle_Graphic3d_SequenceNodeOfSequenceOfAddress::DownCast;
%rename(downcast) Handle_Graphic3d_StructureManager::DownCast;
%rename(downcast) Handle_Graphic3d_ArrayOfQuadrangles::DownCast;
%rename(downcast) Handle_Graphic3d_HSetOfGroup::DownCast;
%rename(downcast) Handle_Graphic3d_ArrayOfSegments::DownCast;
%rename(downcast) Handle_Graphic3d_Structure::DownCast;
%rename(downcast) Handle_Graphic3d_StructureDefinitionError::DownCast;
%rename(downcast) Handle_Graphic3d_PickIdDefinitionError::DownCast;
%rename(downcast) Handle_Graphic3d_HArray1OfBytes::DownCast;
%rename(downcast) Handle_Graphic3d_SequenceNodeOfSequenceOfGroup::DownCast;
%rename(downcast) Handle_Graphic3d_MaterialDefinitionError::DownCast;
%rename(downcast) Handle_Graphic3d_ListNodeOfListOfPArray::DownCast;
%rename(downcast) Handle_Graphic3d_Texture2Dplane::DownCast;
%rename(enable) Graphic3d_ArrayOfPrimitives::Enable;
%rename(disable) Graphic3d_ArrayOfPrimitives::Disable;
%rename(isenable) Graphic3d_ArrayOfPrimitives::IsEnable;
%rename(raise) Graphic3d_VectorError::Raise;
%rename(raise) Graphic3d_VectorError::Raise;
%rename(newinstance) Graphic3d_VectorError::NewInstance;
%rename(acceptconnection) Graphic3d_Structure::AcceptConnection;
%rename(network) Graphic3d_Structure::Network;
%rename(printnetwork) Graphic3d_Structure::PrintNetwork;
%rename(transforms) Graphic3d_Structure::Transforms;
%rename(transforms) Graphic3d_Structure::Transforms;
%rename(transforms) Graphic3d_Structure::Transforms;
%rename(numberoftextures) Graphic3d_TextureEnv::NumberOfTextures;
%rename(texturename) Graphic3d_TextureEnv::TextureName;
%rename(raise) Graphic3d_InitialisationError::Raise;
%rename(raise) Graphic3d_InitialisationError::Raise;
%rename(newinstance) Graphic3d_InitialisationError::NewInstance;
%rename(raise) Graphic3d_AspectTextDefinitionError::Raise;
%rename(raise) Graphic3d_AspectTextDefinitionError::Raise;
%rename(newinstance) Graphic3d_AspectTextDefinitionError::NewInstance;
%rename(raise) Graphic3d_PickIdDefinitionError::Raise;
%rename(raise) Graphic3d_PickIdDefinitionError::Raise;
%rename(newinstance) Graphic3d_PickIdDefinitionError::NewInstance;
%rename(raise) Graphic3d_PlotterDefinitionError::Raise;
%rename(raise) Graphic3d_PlotterDefinitionError::Raise;
%rename(newinstance) Graphic3d_PlotterDefinitionError::NewInstance;
%rename(numberoftextures) Graphic3d_Texture2D::NumberOfTextures;
%rename(texturename) Graphic3d_Texture2D::TextureName;
%rename(distance) Graphic3d_Vertex::Distance;
%rename(light) Graphic3d_GraphicDriver::Light;
%rename(plane) Graphic3d_GraphicDriver::Plane;
%rename(limit) Graphic3d_StructureManager::Limit;
%rename(currentid) Graphic3d_StructureManager::CurrentId;
%rename(numberoftextures) Graphic3d_Texture1D::NumberOfTextures;
%rename(texturename) Graphic3d_Texture1D::TextureName;
%rename(raise) Graphic3d_CycleError::Raise;
%rename(raise) Graphic3d_CycleError::Raise;
%rename(newinstance) Graphic3d_CycleError::NewInstance;
%rename(raise) Graphic3d_PriorityDefinitionError::Raise;
%rename(raise) Graphic3d_PriorityDefinitionError::Raise;
%rename(newinstance) Graphic3d_PriorityDefinitionError::NewInstance;
%rename(setdefaultdegeneratemodel) Graphic3d_AspectFillArea3d::SetDefaultDegenerateModel;
%rename(defaultdegeneratemodel) Graphic3d_AspectFillArea3d::DefaultDegenerateModel;
%rename(numberofmaterials) Graphic3d_MaterialAspect::NumberOfMaterials;
%rename(materialname) Graphic3d_MaterialAspect::MaterialName;
%rename(materialtype) Graphic3d_MaterialAspect::MaterialType;
%rename(raise) Graphic3d_TransformError::Raise;
%rename(raise) Graphic3d_TransformError::Raise;
%rename(newinstance) Graphic3d_TransformError::NewInstance;
%rename(raise) Graphic3d_GroupDefinitionError::Raise;
%rename(raise) Graphic3d_GroupDefinitionError::Raise;
%rename(newinstance) Graphic3d_GroupDefinitionError::NewInstance;
%rename(raise) Graphic3d_MaterialDefinitionError::Raise;
%rename(raise) Graphic3d_MaterialDefinitionError::Raise;
%rename(newinstance) Graphic3d_MaterialDefinitionError::NewInstance;
%rename(texfontenable) Graphic3d_AspectText3d::TexFontEnable;
%rename(texfontdisable) Graphic3d_AspectText3d::TexFontDisable;
%rename(istexfontenable) Graphic3d_AspectText3d::IsTexFontEnable;
%rename(stript_init) Graphic3d_Strips::STRIPT_INIT;
%rename(stript_get_strip) Graphic3d_Strips::STRIPT_GET_STRIP;
%rename(stript_get_vertex) Graphic3d_Strips::STRIPT_GET_VERTEX;
%rename(stripq_init) Graphic3d_Strips::STRIPQ_INIT;
%rename(stripq_get_strip) Graphic3d_Strips::STRIPQ_GET_STRIP;
%rename(stripq_get_next) Graphic3d_Strips::STRIPQ_GET_NEXT;
%rename(isparallel) Graphic3d_Vector::IsParallel;
%rename(normeof) Graphic3d_Vector::NormeOf;
%rename(normeof) Graphic3d_Vector::NormeOf;
%rename(raise) Graphic3d_StructureDefinitionError::Raise;
%rename(raise) Graphic3d_StructureDefinitionError::Raise;
%rename(newinstance) Graphic3d_StructureDefinitionError::NewInstance;
