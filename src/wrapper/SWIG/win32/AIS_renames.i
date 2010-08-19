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
%rename(downcast) Handle_AIS_SequenceNodeOfSequenceOfInteractive::DownCast;
%rename(downcast) Handle_AIS_C0RegularityFilter::DownCast;
%rename(downcast) Handle_AIS_InteractiveObject::DownCast;
%rename(downcast) Handle_AIS_Relation::DownCast;
%rename(downcast) Handle_AIS_OffsetDimension::DownCast;
%rename(downcast) Handle_AIS_MidPointRelation::DownCast;
%rename(downcast) Handle_AIS_DiameterDimension::DownCast;
%rename(downcast) Handle_AIS_MultipleConnectedInteractive::DownCast;
%rename(downcast) Handle_AIS_LengthDimension::DownCast;
%rename(downcast) Handle_AIS_Point::DownCast;
%rename(downcast) Handle_AIS_LocalContext::DownCast;
%rename(downcast) Handle_AIS_DataMapNodeOfDataMapofIntegerListOfinteractive::DownCast;
%rename(downcast) Handle_AIS_StdMapNodeOfMapOfInteractive::DownCast;
%rename(downcast) Handle_AIS_Drawer::DownCast;
%rename(downcast) Handle_AIS_EqualDistanceRelation::DownCast;
%rename(downcast) Handle_AIS_LocalStatus::DownCast;
%rename(downcast) Handle_AIS_ParallelRelation::DownCast;
%rename(downcast) Handle_AIS_ExclusionFilter::DownCast;
%rename(downcast) Handle_AIS_ConnectedInteractive::DownCast;
%rename(downcast) Handle_AIS_ConnectedShape::DownCast;
%rename(downcast) Handle_AIS_Chamf3dDimension::DownCast;
%rename(downcast) Handle_AIS_Trihedron::DownCast;
%rename(downcast) Handle_AIS_DataMapNodeOfDataMapOfILC::DownCast;
%rename(downcast) Handle_AIS_RadiusDimension::DownCast;
%rename(downcast) Handle_AIS_AngleDimension::DownCast;
%rename(downcast) Handle_AIS_SymmetricRelation::DownCast;
%rename(downcast) Handle_AIS_BadEdgeFilter::DownCast;
%rename(downcast) Handle_AIS_Circle::DownCast;
%rename(downcast) Handle_AIS_Shape::DownCast;
%rename(downcast) Handle_AIS_TexturedShape::DownCast;
%rename(downcast) Handle_AIS_EllipseRadiusDimension::DownCast;
%rename(downcast) Handle_AIS_MinRadiusDimension::DownCast;
%rename(downcast) Handle_AIS_MultipleConnectedShape::DownCast;
%rename(downcast) Handle_AIS_DataMapNodeOfDataMapOfTransientTransient::DownCast;
%rename(downcast) Handle_AIS_TangentRelation::DownCast;
%rename(downcast) Handle_AIS_Selection::DownCast;
%rename(downcast) Handle_AIS_FixRelation::DownCast;
%rename(downcast) Handle_AIS_TypeFilter::DownCast;
%rename(downcast) Handle_AIS_ConcentricRelation::DownCast;
%rename(downcast) Handle_AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs::DownCast;
%rename(downcast) Handle_AIS_Chamf2dDimension::DownCast;
%rename(downcast) Handle_AIS_MaxRadiusDimension::DownCast;
%rename(downcast) Handle_AIS_DataMapNodeOfDataMapOfSelStat::DownCast;
%rename(downcast) Handle_AIS_Plane::DownCast;
%rename(downcast) Handle_AIS_AttributeFilter::DownCast;
%rename(downcast) Handle_AIS_SequenceNodeOfSequenceOfDimension::DownCast;
%rename(downcast) Handle_AIS_EqualRadiusRelation::DownCast;
%rename(downcast) Handle_AIS_GlobalStatus::DownCast;
%rename(downcast) Handle_AIS_Line::DownCast;
%rename(downcast) Handle_AIS_DimensionOwner::DownCast;
%rename(downcast) Handle_AIS_PerpendicularRelation::DownCast;
%rename(downcast) Handle_AIS_SignatureFilter::DownCast;
%rename(downcast) Handle_AIS_IdenticRelation::DownCast;
%rename(downcast) Handle_AIS_InteractiveContext::DownCast;
%rename(downcast) Handle_AIS_ListNodeOfListOfInteractive::DownCast;
%rename(downcast) Handle_AIS_PlaneTrihedron::DownCast;
%rename(downcast) Handle_AIS_Axis::DownCast;
%rename(downcast) Handle_AIS_DataMapNodeOfDataMapOfIOStatus::DownCast;
%rename(remove) AIS_Selection::Remove;
%rename(find) AIS_Selection::Find;
%rename(createselection) AIS_Selection::CreateSelection;
%rename(selection) AIS_Selection::Selection;
%rename(setcurrentselection) AIS_Selection::SetCurrentSelection;
%rename(currentselection) AIS_Selection::CurrentSelection;
%rename(select) AIS_Selection::Select;
%rename(select) AIS_Selection::Select;
%rename(addselect) AIS_Selection::AddSelect;
%rename(clearandselect) AIS_Selection::ClearAndSelect;
%rename(isselected) AIS_Selection::IsSelected;
%rename(extent) AIS_Selection::Extent;
%rename(single) AIS_Selection::Single;
%rename(index) AIS_Selection::Index;
%rename(selectiontype) AIS_Shape::SelectionType;
%rename(selectionmode) AIS_Shape::SelectionMode;
%rename(getdeflection) AIS_Shape::GetDeflection;
%rename(getlinecolor) AIS_GraphicTool::GetLineColor;
%rename(getlinecolor) AIS_GraphicTool::GetLineColor;
%rename(getlinewidth) AIS_GraphicTool::GetLineWidth;
%rename(getlinetype) AIS_GraphicTool::GetLineType;
%rename(getlineatt) AIS_GraphicTool::GetLineAtt;
%rename(getinteriorcolor) AIS_GraphicTool::GetInteriorColor;
%rename(getinteriorcolor) AIS_GraphicTool::GetInteriorColor;
%rename(getmaterial) AIS_GraphicTool::GetMaterial;
%rename(nearest) AIS::Nearest;
%rename(farest) AIS::Farest;
%rename(computegeometry) AIS::ComputeGeometry;
%rename(computegeometry) AIS::ComputeGeometry;
%rename(computegeometry) AIS::ComputeGeometry;
%rename(computegeometry) AIS::ComputeGeometry;
%rename(computegeomcurve) AIS::ComputeGeomCurve;
%rename(computegeometry) AIS::ComputeGeometry;
%rename(getplanefromface) AIS::GetPlaneFromFace;
%rename(initfacelength) AIS::InitFaceLength;
%rename(computelengthbetweenplanarfaces) AIS::ComputeLengthBetweenPlanarFaces;
%rename(computelengthbetweencurvilinearfaces) AIS::ComputeLengthBetweenCurvilinearFaces;
%rename(computeanglebetweenplanarfaces) AIS::ComputeAngleBetweenPlanarFaces;
%rename(computeanglebetweencurvilinearfaces) AIS::ComputeAngleBetweenCurvilinearFaces;
%rename(projectpointonplane) AIS::ProjectPointOnPlane;
%rename(projectpointonline) AIS::ProjectPointOnLine;
%rename(translatepointtobound) AIS::TranslatePointToBound;
%rename(indomain) AIS::InDomain;
%rename(nearestapex) AIS::NearestApex;
%rename(distancefromapex) AIS::DistanceFromApex;
%rename(computeprojedgepresentation) AIS::ComputeProjEdgePresentation;
%rename(computeprojvertexpresentation) AIS::ComputeProjVertexPresentation;
%rename(computetwoedgeslength) AIS_EqualDistanceRelation::ComputeTwoEdgesLength;
%rename(computetwoverticeslength) AIS_EqualDistanceRelation::ComputeTwoVerticesLength;
%rename(computeoneedgeonevertexlength) AIS_EqualDistanceRelation::ComputeOneEdgeOneVertexLength;
%rename(computetwoedgeslength) AIS_LengthDimension::ComputeTwoEdgesLength;
%rename(computeoneedgeonevertexlength) AIS_LengthDimension::ComputeOneEdgeOneVertexLength;
%rename(computetwoverticeslength) AIS_LengthDimension::ComputeTwoVerticesLength;
