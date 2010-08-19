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
%rename(downcast) Handle_XCAFDoc_DocumentTool::DownCast;
%rename(downcast) Handle_XCAFDoc_DimTolTool::DownCast;
%rename(downcast) Handle_XCAFDoc_DataMapNodeOfDataMapOfShapeLabel::DownCast;
%rename(downcast) Handle_XCAFDoc_Volume::DownCast;
%rename(downcast) Handle_XCAFDoc_DimTol::DownCast;
%rename(downcast) Handle_XCAFDoc_Centroid::DownCast;
%rename(downcast) Handle_XCAFDoc_SequenceNodeOfGraphNodeSequence::DownCast;
%rename(downcast) Handle_XCAFDoc_Area::DownCast;
%rename(downcast) Handle_XCAFDoc_Color::DownCast;
%rename(downcast) Handle_XCAFDoc_ColorTool::DownCast;
%rename(downcast) Handle_XCAFDoc_Material::DownCast;
%rename(downcast) Handle_XCAFDoc_LayerTool::DownCast;
%rename(downcast) Handle_XCAFDoc_MaterialTool::DownCast;
%rename(downcast) Handle_XCAFDoc_GraphNode::DownCast;
%rename(downcast) Handle_XCAFDoc_Location::DownCast;
%rename(downcast) Handle_XCAFDoc_Datum::DownCast;
%rename(downcast) Handle_XCAFDoc_ShapeTool::DownCast;
%rename(downcast) Handle_XCAFDoc_ShapeMapTool::DownCast;
%rename(getid) XCAFDoc_DocumentTool::GetID;
%rename(set) XCAFDoc_DocumentTool::Set;
%rename(isxcafdocument) XCAFDoc_DocumentTool::IsXCAFDocument;
%rename(doclabel) XCAFDoc_DocumentTool::DocLabel;
%rename(shapeslabel) XCAFDoc_DocumentTool::ShapesLabel;
%rename(colorslabel) XCAFDoc_DocumentTool::ColorsLabel;
%rename(layerslabel) XCAFDoc_DocumentTool::LayersLabel;
%rename(dgtslabel) XCAFDoc_DocumentTool::DGTsLabel;
%rename(materialslabel) XCAFDoc_DocumentTool::MaterialsLabel;
%rename(shapetool) XCAFDoc_DocumentTool::ShapeTool;
%rename(colortool) XCAFDoc_DocumentTool::ColorTool;
%rename(layertool) XCAFDoc_DocumentTool::LayerTool;
%rename(dimtoltool) XCAFDoc_DocumentTool::DimTolTool;
%rename(materialtool) XCAFDoc_DocumentTool::MaterialTool;
%rename(assemblyguid) XCAFDoc::AssemblyGUID;
%rename(shaperefguid) XCAFDoc::ShapeRefGUID;
%rename(colorrefguid) XCAFDoc::ColorRefGUID;
%rename(dimtolrefguid) XCAFDoc::DimTolRefGUID;
%rename(datumrefguid) XCAFDoc::DatumRefGUID;
%rename(datumtolrefguid) XCAFDoc::DatumTolRefGUID;
%rename(layerrefguid) XCAFDoc::LayerRefGUID;
%rename(materialrefguid) XCAFDoc::MaterialRefGUID;
%rename(invisibleguid) XCAFDoc::InvisibleGUID;
%rename(externrefguid) XCAFDoc::ExternRefGUID;
%rename(shuorefguid) XCAFDoc::SHUORefGUID;
%rename(getid) XCAFDoc_Volume::GetID;
%rename(set) XCAFDoc_Volume::Set;
%rename(get) XCAFDoc_Volume::Get;
%rename(getid) XCAFDoc_DimTol::GetID;
%rename(set) XCAFDoc_DimTol::Set;
%rename(set) XCAFDoc_DimTolTool::Set;
%rename(getid) XCAFDoc_DimTolTool::GetID;
%rename(getid) XCAFDoc_ShapeTool::GetID;
%rename(set) XCAFDoc_ShapeTool::Set;
%rename(isfree) XCAFDoc_ShapeTool::IsFree;
%rename(isshape) XCAFDoc_ShapeTool::IsShape;
%rename(issimpleshape) XCAFDoc_ShapeTool::IsSimpleShape;
%rename(isreference) XCAFDoc_ShapeTool::IsReference;
%rename(isassembly) XCAFDoc_ShapeTool::IsAssembly;
%rename(iscomponent) XCAFDoc_ShapeTool::IsComponent;
%rename(iscompound) XCAFDoc_ShapeTool::IsCompound;
%rename(issubshape) XCAFDoc_ShapeTool::IsSubShape;
%rename(getshape) XCAFDoc_ShapeTool::GetShape;
%rename(getshape) XCAFDoc_ShapeTool::GetShape;
%rename(getusers) XCAFDoc_ShapeTool::GetUsers;
%rename(getlocation) XCAFDoc_ShapeTool::GetLocation;
%rename(getreferredshape) XCAFDoc_ShapeTool::GetReferredShape;
%rename(nbcomponents) XCAFDoc_ShapeTool::NbComponents;
%rename(getcomponents) XCAFDoc_ShapeTool::GetComponents;
%rename(getsubshapes) XCAFDoc_ShapeTool::GetSubShapes;
%rename(dumpshape) XCAFDoc_ShapeTool::DumpShape;
%rename(isexternref) XCAFDoc_ShapeTool::IsExternRef;
%rename(getexternrefs) XCAFDoc_ShapeTool::GetExternRefs;
%rename(getshuo) XCAFDoc_ShapeTool::GetSHUO;
%rename(getallcomponentshuo) XCAFDoc_ShapeTool::GetAllComponentSHUO;
%rename(getshuoupperusage) XCAFDoc_ShapeTool::GetSHUOUpperUsage;
%rename(getshuonextusage) XCAFDoc_ShapeTool::GetSHUONextUsage;
%rename(findshuo) XCAFDoc_ShapeTool::FindSHUO;
%rename(getid) XCAFDoc_Datum::GetID;
%rename(set) XCAFDoc_Datum::Set;
%rename(set) XCAFDoc_LayerTool::Set;
%rename(getid) XCAFDoc_LayerTool::GetID;
%rename(find) XCAFDoc_GraphNode::Find;
%rename(set) XCAFDoc_GraphNode::Set;
%rename(set) XCAFDoc_GraphNode::Set;
%rename(getdefaultgraphid) XCAFDoc_GraphNode::GetDefaultGraphID;
%rename(getid) XCAFDoc_Area::GetID;
%rename(set) XCAFDoc_Area::Set;
%rename(get) XCAFDoc_Area::Get;
%rename(getid) XCAFDoc_Color::GetID;
%rename(set) XCAFDoc_Color::Set;
%rename(set) XCAFDoc_Color::Set;
%rename(set) XCAFDoc_Color::Set;
%rename(getid) XCAFDoc_Location::GetID;
%rename(set) XCAFDoc_Location::Set;
%rename(getid) XCAFDoc_Material::GetID;
%rename(set) XCAFDoc_Material::Set;
%rename(getid) XCAFDoc_ShapeMapTool::GetID;
%rename(set) XCAFDoc_ShapeMapTool::Set;
%rename(getid) XCAFDoc_Centroid::GetID;
%rename(set) XCAFDoc_Centroid::Set;
%rename(get) XCAFDoc_Centroid::Get;
%rename(set) XCAFDoc_ColorTool::Set;
%rename(getid) XCAFDoc_ColorTool::GetID;
%rename(set) XCAFDoc_MaterialTool::Set;
%rename(getid) XCAFDoc_MaterialTool::GetID;
%rename(getdensityforshape) XCAFDoc_MaterialTool::GetDensityForShape;
