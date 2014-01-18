/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/
%rename(DownCast) Handle_XCAFDoc_DocumentTool::DownCast;
%rename(DownCast) Handle_XCAFDoc_DimTolTool::DownCast;
%rename(DownCast) Handle_XCAFDoc_DataMapNodeOfDataMapOfShapeLabel::DownCast;
%rename(DownCast) Handle_XCAFDoc_Volume::DownCast;
%rename(DownCast) Handle_XCAFDoc_DimTol::DownCast;
%rename(DownCast) Handle_XCAFDoc_Area::DownCast;
%rename(DownCast) Handle_XCAFDoc_Centroid::DownCast;
%rename(DownCast) Handle_XCAFDoc_SequenceNodeOfGraphNodeSequence::DownCast;
%rename(DownCast) Handle_XCAFDoc_Color::DownCast;
%rename(DownCast) Handle_XCAFDoc_ColorTool::DownCast;
%rename(DownCast) Handle_XCAFDoc_Material::DownCast;
%rename(DownCast) Handle_XCAFDoc_LayerTool::DownCast;
%rename(DownCast) Handle_XCAFDoc_MaterialTool::DownCast;
%rename(DownCast) Handle_XCAFDoc_GraphNode::DownCast;
%rename(DownCast) Handle_XCAFDoc_Location::DownCast;
%rename(DownCast) Handle_XCAFDoc_Datum::DownCast;
%rename(DownCast) Handle_XCAFDoc_ShapeTool::DownCast;
%rename(DownCast) Handle_XCAFDoc_ShapeMapTool::DownCast;
%rename(GetID) XCAFDoc_DocumentTool::GetID;
%rename(Set) XCAFDoc_DocumentTool::Set;
%rename(IsXCAFDocument) XCAFDoc_DocumentTool::IsXCAFDocument;
%rename(DocLabel) XCAFDoc_DocumentTool::DocLabel;
%rename(ShapesLabel) XCAFDoc_DocumentTool::ShapesLabel;
%rename(ColorsLabel) XCAFDoc_DocumentTool::ColorsLabel;
%rename(LayersLabel) XCAFDoc_DocumentTool::LayersLabel;
%rename(DGTsLabel) XCAFDoc_DocumentTool::DGTsLabel;
%rename(MaterialsLabel) XCAFDoc_DocumentTool::MaterialsLabel;
%rename(ShapeTool) XCAFDoc_DocumentTool::ShapeTool;
%rename(ColorTool) XCAFDoc_DocumentTool::ColorTool;
%rename(LayerTool) XCAFDoc_DocumentTool::LayerTool;
%rename(DimTolTool) XCAFDoc_DocumentTool::DimTolTool;
%rename(MaterialTool) XCAFDoc_DocumentTool::MaterialTool;
%rename(AssemblyGUID) XCAFDoc::AssemblyGUID;
%rename(ShapeRefGUID) XCAFDoc::ShapeRefGUID;
%rename(ColorRefGUID) XCAFDoc::ColorRefGUID;
%rename(DimTolRefGUID) XCAFDoc::DimTolRefGUID;
%rename(DatumRefGUID) XCAFDoc::DatumRefGUID;
%rename(DatumTolRefGUID) XCAFDoc::DatumTolRefGUID;
%rename(LayerRefGUID) XCAFDoc::LayerRefGUID;
%rename(MaterialRefGUID) XCAFDoc::MaterialRefGUID;
%rename(InvisibleGUID) XCAFDoc::InvisibleGUID;
%rename(ExternRefGUID) XCAFDoc::ExternRefGUID;
%rename(SHUORefGUID) XCAFDoc::SHUORefGUID;
%rename(GetID) XCAFDoc_Volume::GetID;
%rename(Set) XCAFDoc_Volume::Set;
%rename(Get) XCAFDoc_Volume::Get;
%rename(GetID) XCAFDoc_Material::GetID;
%rename(Set) XCAFDoc_Material::Set;
%rename(GetID) XCAFDoc_DimTol::GetID;
%rename(Set) XCAFDoc_DimTol::Set;
%rename(Set) XCAFDoc_DimTolTool::Set;
%rename(GetID) XCAFDoc_DimTolTool::GetID;
%rename(GetID) XCAFDoc_ShapeTool::GetID;
%rename(Set) XCAFDoc_ShapeTool::Set;
%rename(IsFree) XCAFDoc_ShapeTool::IsFree;
%rename(IsShape) XCAFDoc_ShapeTool::IsShape;
%rename(IsSimpleShape) XCAFDoc_ShapeTool::IsSimpleShape;
%rename(IsReference) XCAFDoc_ShapeTool::IsReference;
%rename(IsAssembly) XCAFDoc_ShapeTool::IsAssembly;
%rename(IsComponent) XCAFDoc_ShapeTool::IsComponent;
%rename(IsCompound) XCAFDoc_ShapeTool::IsCompound;
%rename(IsSubShape) XCAFDoc_ShapeTool::IsSubShape;
%rename(GetShape) XCAFDoc_ShapeTool::GetShape;
%rename(SetAutoNaming) XCAFDoc_ShapeTool::SetAutoNaming;
%rename(AutoNaming) XCAFDoc_ShapeTool::AutoNaming;
%rename(GetUsers) XCAFDoc_ShapeTool::GetUsers;
%rename(GetLocation) XCAFDoc_ShapeTool::GetLocation;
%rename(GetReferredShape) XCAFDoc_ShapeTool::GetReferredShape;
%rename(NbComponents) XCAFDoc_ShapeTool::NbComponents;
%rename(GetComponents) XCAFDoc_ShapeTool::GetComponents;
%rename(GetSubShapes) XCAFDoc_ShapeTool::GetSubShapes;
%rename(DumpShape) XCAFDoc_ShapeTool::DumpShape;
%rename(IsExternRef) XCAFDoc_ShapeTool::IsExternRef;
%rename(GetExternRefs) XCAFDoc_ShapeTool::GetExternRefs;
%rename(GetSHUO) XCAFDoc_ShapeTool::GetSHUO;
%rename(GetAllComponentSHUO) XCAFDoc_ShapeTool::GetAllComponentSHUO;
%rename(GetSHUOUpperUsage) XCAFDoc_ShapeTool::GetSHUOUpperUsage;
%rename(GetSHUONextUsage) XCAFDoc_ShapeTool::GetSHUONextUsage;
%rename(FindSHUO) XCAFDoc_ShapeTool::FindSHUO;
%rename(GetID) XCAFDoc_Datum::GetID;
%rename(Set) XCAFDoc_Datum::Set;
%rename(Set) XCAFDoc_LayerTool::Set;
%rename(GetID) XCAFDoc_LayerTool::GetID;
%rename(Find) XCAFDoc_GraphNode::Find;
%rename(Set) XCAFDoc_GraphNode::Set;
%rename(GetDefaultGraphID) XCAFDoc_GraphNode::GetDefaultGraphID;
%rename(GetID) XCAFDoc_Area::GetID;
%rename(Set) XCAFDoc_Area::Set;
%rename(Get) XCAFDoc_Area::Get;
%rename(GetID) XCAFDoc_Color::GetID;
%rename(Set) XCAFDoc_Color::Set;
%rename(GetID) XCAFDoc_Location::GetID;
%rename(Set) XCAFDoc_Location::Set;
%rename(GetID) XCAFDoc_ShapeMapTool::GetID;
%rename(Set) XCAFDoc_ShapeMapTool::Set;
%rename(GetID) XCAFDoc_Centroid::GetID;
%rename(Set) XCAFDoc_Centroid::Set;
%rename(Get) XCAFDoc_Centroid::Get;
%rename(Set) XCAFDoc_ColorTool::Set;
%rename(GetID) XCAFDoc_ColorTool::GetID;
%rename(GetColor) XCAFDoc_ColorTool::GetColor;
%rename(Set) XCAFDoc_MaterialTool::Set;
%rename(GetID) XCAFDoc_MaterialTool::GetID;
%rename(GetDensityForShape) XCAFDoc_MaterialTool::GetDensityForShape;
