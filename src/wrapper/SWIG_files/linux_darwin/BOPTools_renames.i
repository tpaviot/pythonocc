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
%rename(DownCast) Handle_BOPTools_ListNodeOfListOfPave::DownCast;
%rename(DownCast) Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock::DownCast;
%rename(DownCast) Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger::DownCast;
%rename(DownCast) Handle_BOPTools_ListNodeOfListOfCommonBlock::DownCast;
%rename(DownCast) Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo::DownCast;
%rename(DownCast) Handle_BOPTools_ListNodeOfListOfCheckResults::DownCast;
%rename(DownCast) Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet::DownCast;
%rename(DownCast) Handle_BOPTools_ListNodeOfListOfInterference::DownCast;
%rename(DownCast) Handle_BOPTools_HArray2OfIntersectionStatus::DownCast;
%rename(DownCast) Handle_BOPTools_ListNodeOfListOfPaveBlock::DownCast;
%rename(DownCast) Handle_BOPTools_ListNodeOfListOfShapeEnum::DownCast;
%rename(DownCast) Handle_BOPTools_ListNodeOfListOfCoupleOfInteger::DownCast;
%rename(DownCast) Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock::DownCast;
%rename(DownCast) Handle_BOPTools_SequenceNodeOfSequenceOfCurves::DownCast;
%rename(DownCast) Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState::DownCast;
%rename(DownCast) Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger::DownCast;
%rename(DownCast) Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock::DownCast;
%rename(DownCast) Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState::DownCast;
%rename(ConvertState) BOPTools_StateFiller::ConvertState;
%rename(SubType) BOPTools_StateFiller::SubType;
%rename(HashCode) BOPTools_CoupleOfIntegerMapHasher::HashCode;
%rename(IsEqual) BOPTools_CoupleOfIntegerMapHasher::IsEqual;
%rename(TreatCompound) BOPTools_DSFiller::TreatCompound;
%rename(Sort) BOPTools_QuickSortPave::Sort;
%rename(MakeNewVertex) BOPTools_Tools::MakeNewVertex;
%rename(PointOnEdge) BOPTools_Tools::PointOnEdge;
%rename(MakeSplitEdge) BOPTools_Tools::MakeSplitEdge;
%rename(MakeSectEdge) BOPTools_Tools::MakeSectEdge;
%rename(UpdateVertex) BOPTools_Tools::UpdateVertex;
%rename(IsBlocksCoinside) BOPTools_Tools::IsBlocksCoinside;
%rename(IsBlockInOnFace) BOPTools_Tools::IsBlockInOnFace;
%rename(MapShapes) BOPTools_Tools::MapShapes;
%rename(CorrectRange) BOPTools_Tools::CorrectRange;
%rename(CopySource) BOPTools_Tools::CopySource;
%rename(RemovePCurveForEdgeOnFace) BOPTools_Tools2D::RemovePCurveForEdgeOnFace;
%rename(BuildPCurveForEdgeOnFace) BOPTools_Tools2D::BuildPCurveForEdgeOnFace;
%rename(EdgeTangent) BOPTools_Tools2D::EdgeTangent;
%rename(FaceNormal) BOPTools_Tools2D::FaceNormal;
%rename(PointOnSurface) BOPTools_Tools2D::PointOnSurface;
%rename(CurveOnSurface) BOPTools_Tools2D::CurveOnSurface;
%rename(HasCurveOnSurface) BOPTools_Tools2D::HasCurveOnSurface;
%rename(MakeCurveOnSurface) BOPTools_Tools2D::MakeCurveOnSurface;
%rename(Make2D) BOPTools_Tools2D::Make2D;
%rename(MakePCurveOnFace) BOPTools_Tools2D::MakePCurveOnFace;
%rename(AdjustPCurveOnFace) BOPTools_Tools2D::AdjustPCurveOnFace;
%rename(MakePCurveOfType) BOPTools_Tools2D::MakePCurveOfType;
%rename(TangentOnEdge) BOPTools_Tools2D::TangentOnEdge;
%rename(TangentOnVertex) BOPTools_Tools2D::TangentOnVertex;
%rename(EdgeBounds) BOPTools_Tools2D::EdgeBounds;
%rename(IntermediatePoint) BOPTools_Tools2D::IntermediatePoint;
%rename(SubShapesAmount) BOPTools_Tools3D::SubShapesAmount;
%rename(IsConvexWire) BOPTools_Tools3D::IsConvexWire;
%rename(RemoveSims) BOPTools_Tools3D::RemoveSims;
%rename(EdgeOrientation) BOPTools_Tools3D::EdgeOrientation;
%rename(IsSplitToReverse1) BOPTools_Tools3D::IsSplitToReverse1;
%rename(DoSplitSEAMOnFace) BOPTools_Tools3D::DoSplitSEAMOnFace;
%rename(IsTouchCase) BOPTools_Tools3D::IsTouchCase;
%rename(GetTangentToEdge) BOPTools_Tools3D::GetTangentToEdge;
%rename(GetNormalToFaceOnEdge) BOPTools_Tools3D::GetNormalToFaceOnEdge;
%rename(GetBiNormal) BOPTools_Tools3D::GetBiNormal;
%rename(IsSplitToReverse) BOPTools_Tools3D::IsSplitToReverse;
%rename(GetAdjacentFace) BOPTools_Tools3D::GetAdjacentFace;
%rename(IsKeepTwice) BOPTools_Tools3D::IsKeepTwice;
%rename(SenseFlag) BOPTools_Tools3D::SenseFlag;
%rename(GetNormalToSurface) BOPTools_Tools3D::GetNormalToSurface;
%rename(GetPlanes) BOPTools_Tools3D::GetPlanes;
%rename(Orientation) BOPTools_Tools3D::Orientation;
%rename(SignDistance) BOPTools_Tools3D::SignDistance;
%rename(GetApproxNormalToFaceOnEdge) BOPTools_Tools3D::GetApproxNormalToFaceOnEdge;
%rename(PointNearEdge) BOPTools_Tools3D::PointNearEdge;
%rename(PointToCompare) BOPTools_Tools3D::PointToCompare;
%rename(GetPlane) BOPTools_Tools3D::GetPlane;
%rename(GetPointState) BOPTools_Tools3D::GetPointState;
%rename(OrientEdgeOnFace) BOPTools_Tools3D::OrientEdgeOnFace;
%rename(OrientTouchEdgeOnF1) BOPTools_Tools3D::OrientTouchEdgeOnF1;
%rename(GetSeams) BOPTools_Tools3D::GetSeams;
%rename(GetSeam) BOPTools_Tools3D::GetSeam;
%rename(IsValidArea) BOPTools_Tools3D::IsValidArea;
%rename(MinStepIn2d) BOPTools_Tools3D::MinStepIn2d;
%rename(IsEmptyShape) BOPTools_Tools3D::IsEmptyShape;
%rename(InvertShape) BOPTools_Tools3D::InvertShape;
%rename(GetStatePartIN2D) BOPTools_Tools3D::GetStatePartIN2D;
%rename(CheckSameDomainFaceInside) BOPTools_Tools3D::CheckSameDomainFaceInside;
%rename(ComputeFaceState) BOPTools_Tools3D::ComputeFaceState;
%rename(TreatedAsAnalytic) BOPTools_Tools3D::TreatedAsAnalytic;
%rename(HasAnalyticSurfaceType) BOPTools_Tools3D::HasAnalyticSurfaceType;
%rename(HashCode) BOPTools_PaveBlockMapHasher::HashCode;
%rename(IsEqual) BOPTools_PaveBlockMapHasher::IsEqual;
