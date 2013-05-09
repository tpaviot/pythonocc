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
%rename(DownCast) Handle_AIS_InteractiveObject::DownCast;
%rename(DownCast) Handle_AIS_Relation::DownCast;
%rename(DownCast) Handle_AIS_DiameterDimension::DownCast;
%rename(DownCast) Handle_AIS_MultipleConnectedInteractive::DownCast;
%rename(DownCast) Handle_AIS_FixRelation::DownCast;
%rename(DownCast) Handle_AIS_EqualDistanceRelation::DownCast;
%rename(DownCast) Handle_AIS_DataMapNodeOfDataMapOfIOStatus::DownCast;
%rename(DownCast) Handle_AIS_TangentRelation::DownCast;
%rename(DownCast) Handle_AIS_ConnectedInteractive::DownCast;
%rename(DownCast) Handle_AIS_ConnectedShape::DownCast;
%rename(DownCast) Handle_AIS_Trihedron::DownCast;
%rename(DownCast) Handle_AIS_RadiusDimension::DownCast;
%rename(DownCast) Handle_AIS_Point::DownCast;
%rename(DownCast) Handle_AIS_LengthDimension::DownCast;
%rename(DownCast) Handle_AIS_Drawer::DownCast;
%rename(DownCast) Handle_AIS_MultipleConnectedShape::DownCast;
%rename(DownCast) Handle_AIS_ConcentricRelation::DownCast;
%rename(DownCast) Handle_AIS_Chamf2dDimension::DownCast;
%rename(DownCast) Handle_AIS_ExclusionFilter::DownCast;
%rename(DownCast) Handle_AIS_IdenticRelation::DownCast;
%rename(DownCast) Handle_AIS_Triangulation::DownCast;
%rename(DownCast) Handle_AIS_DataMapNodeOfDataMapOfILC::DownCast;
%rename(DownCast) Handle_AIS_AttributeFilter::DownCast;
%rename(DownCast) Handle_AIS_SequenceNodeOfSequenceOfDimension::DownCast;
%rename(DownCast) Handle_AIS_EqualRadiusRelation::DownCast;
%rename(DownCast) Handle_AIS_GlobalStatus::DownCast;
%rename(DownCast) Handle_AIS_Line::DownCast;
%rename(DownCast) Handle_AIS_DimensionOwner::DownCast;
%rename(DownCast) Handle_AIS_PerpendicularRelation::DownCast;
%rename(DownCast) Handle_AIS_TypeFilter::DownCast;
%rename(DownCast) Handle_AIS_SignatureFilter::DownCast;
%rename(DownCast) Handle_AIS_InteractiveContext::DownCast;
%rename(DownCast) Handle_AIS_OffsetDimension::DownCast;
%rename(DownCast) Handle_AIS_EllipseRadiusDimension::DownCast;
%rename(DownCast) Handle_AIS_Axis::DownCast;
%rename(DownCast) Handle_AIS_MinRadiusDimension::DownCast;
%rename(DownCast) Handle_AIS_C0RegularityFilter::DownCast;
%rename(DownCast) Handle_AIS_DataMapNodeOfDataMapofIntegerListOfinteractive::DownCast;
%rename(DownCast) Handle_AIS_Plane::DownCast;
%rename(DownCast) Handle_AIS_MaxRadiusDimension::DownCast;
%rename(DownCast) Handle_AIS_LocalStatus::DownCast;
%rename(DownCast) Handle_AIS_LocalContext::DownCast;
%rename(DownCast) Handle_AIS_StdMapNodeOfMapOfInteractive::DownCast;
%rename(DownCast) Handle_AIS_BadEdgeFilter::DownCast;
%rename(DownCast) Handle_AIS_Circle::DownCast;
%rename(DownCast) Handle_AIS_SequenceNodeOfSequenceOfInteractive::DownCast;
%rename(DownCast) Handle_AIS_Shape::DownCast;
%rename(DownCast) Handle_AIS_MidPointRelation::DownCast;
%rename(DownCast) Handle_AIS_SymmetricRelation::DownCast;
%rename(DownCast) Handle_AIS_Selection::DownCast;
%rename(DownCast) Handle_AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs::DownCast;
%rename(DownCast) Handle_AIS_ParallelRelation::DownCast;
%rename(DownCast) Handle_AIS_DataMapNodeOfDataMapOfSelStat::DownCast;
%rename(DownCast) Handle_AIS_TexturedShape::DownCast;
%rename(DownCast) Handle_AIS_ListNodeOfListOfInteractive::DownCast;
%rename(DownCast) Handle_AIS_AngleDimension::DownCast;
%rename(DownCast) Handle_AIS_PlaneTrihedron::DownCast;
%rename(DownCast) Handle_AIS_Chamf3dDimension::DownCast;
%rename(SelectionType) AIS_Shape::SelectionType;
%rename(SelectionMode) AIS_Shape::SelectionMode;
%rename(GetDeflection) AIS_Shape::GetDeflection;
%rename(Nearest) AIS::Nearest;
%rename(Farest) AIS::Farest;
%rename(ComputeGeometry) AIS::ComputeGeometry;
%rename(ComputeGeomCurve) AIS::ComputeGeomCurve;
%rename(GetPlaneFromFace) AIS::GetPlaneFromFace;
%rename(InitFaceLength) AIS::InitFaceLength;
%rename(ComputeLengthBetweenPlanarFaces) AIS::ComputeLengthBetweenPlanarFaces;
%rename(ComputeLengthBetweenCurvilinearFaces) AIS::ComputeLengthBetweenCurvilinearFaces;
%rename(ComputeAngleBetweenPlanarFaces) AIS::ComputeAngleBetweenPlanarFaces;
%rename(ComputeAngleBetweenCurvilinearFaces) AIS::ComputeAngleBetweenCurvilinearFaces;
%rename(ProjectPointOnPlane) AIS::ProjectPointOnPlane;
%rename(ProjectPointOnLine) AIS::ProjectPointOnLine;
%rename(TranslatePointToBound) AIS::TranslatePointToBound;
%rename(InDomain) AIS::InDomain;
%rename(NearestApex) AIS::NearestApex;
%rename(DistanceFromApex) AIS::DistanceFromApex;
%rename(ComputeProjEdgePresentation) AIS::ComputeProjEdgePresentation;
%rename(ComputeProjVertexPresentation) AIS::ComputeProjVertexPresentation;
%rename(Remove) AIS_Selection::Remove;
%rename(Find) AIS_Selection::Find;
%rename(CreateSelection) AIS_Selection::CreateSelection;
%rename(Selection) AIS_Selection::Selection;
%rename(SetCurrentSelection) AIS_Selection::SetCurrentSelection;
%rename(CurrentSelection) AIS_Selection::CurrentSelection;
%rename(Select) AIS_Selection::Select;
%rename(AddSelect) AIS_Selection::AddSelect;
%rename(ClearAndSelect) AIS_Selection::ClearAndSelect;
%rename(IsSelected) AIS_Selection::IsSelected;
%rename(Extent) AIS_Selection::Extent;
%rename(Single) AIS_Selection::Single;
%rename(Index) AIS_Selection::Index;
%rename(GetLineColor) AIS_GraphicTool::GetLineColor;
%rename(GetLineWidth) AIS_GraphicTool::GetLineWidth;
%rename(GetLineType) AIS_GraphicTool::GetLineType;
%rename(GetLineAtt) AIS_GraphicTool::GetLineAtt;
%rename(GetInteriorColor) AIS_GraphicTool::GetInteriorColor;
%rename(GetMaterial) AIS_GraphicTool::GetMaterial;
%rename(ComputeTwoEdgesLength) AIS_EqualDistanceRelation::ComputeTwoEdgesLength;
%rename(ComputeTwoVerticesLength) AIS_EqualDistanceRelation::ComputeTwoVerticesLength;
%rename(ComputeOneEdgeOneVertexLength) AIS_EqualDistanceRelation::ComputeOneEdgeOneVertexLength;
%rename(ComputeTwoEdgesLength) AIS_LengthDimension::ComputeTwoEdgesLength;
%rename(ComputeOneEdgeOneVertexLength) AIS_LengthDimension::ComputeOneEdgeOneVertexLength;
%rename(ComputeTwoVerticesLength) AIS_LengthDimension::ComputeTwoVerticesLength;
