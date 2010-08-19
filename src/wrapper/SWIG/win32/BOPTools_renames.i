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
%rename(downcast) Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState::DownCast;
%rename(downcast) Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock::DownCast;
%rename(downcast) Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger::DownCast;
%rename(downcast) Handle_BOPTools_ListNodeOfListOfCommonBlock::DownCast;
%rename(downcast) Handle_BOPTools_ListNodeOfListOfCheckResults::DownCast;
%rename(downcast) Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet::DownCast;
%rename(downcast) Handle_BOPTools_ListNodeOfListOfInterference::DownCast;
%rename(downcast) Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock::DownCast;
%rename(downcast) Handle_BOPTools_SequenceNodeOfSequenceOfCurves::DownCast;
%rename(downcast) Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo::DownCast;
%rename(downcast) Handle_BOPTools_HArray2OfIntersectionStatus::DownCast;
%rename(downcast) Handle_BOPTools_ListNodeOfListOfPaveBlock::DownCast;
%rename(downcast) Handle_BOPTools_ListNodeOfListOfShapeEnum::DownCast;
%rename(downcast) Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger::DownCast;
%rename(downcast) Handle_BOPTools_ListNodeOfListOfCoupleOfInteger::DownCast;
%rename(downcast) Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock::DownCast;
%rename(downcast) Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState::DownCast;
%rename(downcast) Handle_BOPTools_ListNodeOfListOfPave::DownCast;
%rename(makenewvertex) BOPTools_Tools::MakeNewVertex;
%rename(makenewvertex) BOPTools_Tools::MakeNewVertex;
%rename(makenewvertex) BOPTools_Tools::MakeNewVertex;
%rename(makenewvertex) BOPTools_Tools::MakeNewVertex;
%rename(pointonedge) BOPTools_Tools::PointOnEdge;
%rename(makesplitedge) BOPTools_Tools::MakeSplitEdge;
%rename(makesectedge) BOPTools_Tools::MakeSectEdge;
%rename(updatevertex) BOPTools_Tools::UpdateVertex;
%rename(updatevertex) BOPTools_Tools::UpdateVertex;
%rename(updatevertex) BOPTools_Tools::UpdateVertex;
%rename(isblockscoinside) BOPTools_Tools::IsBlocksCoinside;
%rename(isblockinonface) BOPTools_Tools::IsBlockInOnFace;
%rename(mapshapes) BOPTools_Tools::MapShapes;
%rename(correctrange) BOPTools_Tools::CorrectRange;
%rename(correctrange) BOPTools_Tools::CorrectRange;
%rename(copysource) BOPTools_Tools::CopySource;
%rename(sort) BOPTools_QuickSortPave::Sort;
%rename(convertstate) BOPTools_StateFiller::ConvertState;
%rename(convertstate) BOPTools_StateFiller::ConvertState;
%rename(subtype) BOPTools_StateFiller::SubType;
%rename(treatcompound) BOPTools_DSFiller::TreatCompound;
%rename(hashcode) BOPTools_CoupleOfIntegerMapHasher::HashCode;
%rename(isequal) BOPTools_CoupleOfIntegerMapHasher::IsEqual;
%rename(removepcurveforedgeonface) BOPTools_Tools2D::RemovePCurveForEdgeOnFace;
%rename(buildpcurveforedgeonface) BOPTools_Tools2D::BuildPCurveForEdgeOnFace;
%rename(edgetangent) BOPTools_Tools2D::EdgeTangent;
%rename(facenormal) BOPTools_Tools2D::FaceNormal;
%rename(pointonsurface) BOPTools_Tools2D::PointOnSurface;
%rename(curveonsurface) BOPTools_Tools2D::CurveOnSurface;
%rename(curveonsurface) BOPTools_Tools2D::CurveOnSurface;
%rename(hascurveonsurface) BOPTools_Tools2D::HasCurveOnSurface;
%rename(hascurveonsurface) BOPTools_Tools2D::HasCurveOnSurface;
%rename(makecurveonsurface) BOPTools_Tools2D::MakeCurveOnSurface;
%rename(make2d) BOPTools_Tools2D::Make2D;
%rename(makepcurveonface) BOPTools_Tools2D::MakePCurveOnFace;
%rename(makepcurveonface) BOPTools_Tools2D::MakePCurveOnFace;
%rename(adjustpcurveonface) BOPTools_Tools2D::AdjustPCurveOnFace;
%rename(adjustpcurveonface) BOPTools_Tools2D::AdjustPCurveOnFace;
%rename(makepcurveoftype) BOPTools_Tools2D::MakePCurveOfType;
%rename(tangentonedge) BOPTools_Tools2D::TangentOnEdge;
%rename(tangentonedge) BOPTools_Tools2D::TangentOnEdge;
%rename(tangentonvertex) BOPTools_Tools2D::TangentOnVertex;
%rename(edgebounds) BOPTools_Tools2D::EdgeBounds;
%rename(intermediatepoint) BOPTools_Tools2D::IntermediatePoint;
%rename(intermediatepoint) BOPTools_Tools2D::IntermediatePoint;
%rename(subshapesamount) BOPTools_Tools3D::SubShapesAmount;
%rename(isconvexwire) BOPTools_Tools3D::IsConvexWire;
%rename(removesims) BOPTools_Tools3D::RemoveSims;
%rename(removesims) BOPTools_Tools3D::RemoveSims;
%rename(edgeorientation) BOPTools_Tools3D::EdgeOrientation;
%rename(issplittoreverse1) BOPTools_Tools3D::IsSplitToReverse1;
%rename(dosplitseamonface) BOPTools_Tools3D::DoSplitSEAMOnFace;
%rename(dosplitseamonface) BOPTools_Tools3D::DoSplitSEAMOnFace;
%rename(istouchcase) BOPTools_Tools3D::IsTouchCase;
%rename(gettangenttoedge) BOPTools_Tools3D::GetTangentToEdge;
%rename(gettangenttoedge) BOPTools_Tools3D::GetTangentToEdge;
%rename(getnormaltofaceonedge) BOPTools_Tools3D::GetNormalToFaceOnEdge;
%rename(getnormaltofaceonedge) BOPTools_Tools3D::GetNormalToFaceOnEdge;
%rename(getbinormal) BOPTools_Tools3D::GetBiNormal;
%rename(getbinormal) BOPTools_Tools3D::GetBiNormal;
%rename(issplittoreverse) BOPTools_Tools3D::IsSplitToReverse;
%rename(getadjacentface) BOPTools_Tools3D::GetAdjacentFace;
%rename(iskeeptwice) BOPTools_Tools3D::IsKeepTwice;
%rename(senseflag) BOPTools_Tools3D::SenseFlag;
%rename(getnormaltosurface) BOPTools_Tools3D::GetNormalToSurface;
%rename(getplanes) BOPTools_Tools3D::GetPlanes;
%rename(orientation) BOPTools_Tools3D::Orientation;
%rename(signdistance) BOPTools_Tools3D::SignDistance;
%rename(getapproxnormaltofaceonedge) BOPTools_Tools3D::GetApproxNormalToFaceOnEdge;
%rename(pointnearedge) BOPTools_Tools3D::PointNearEdge;
%rename(pointnearedge) BOPTools_Tools3D::PointNearEdge;
%rename(pointnearedge) BOPTools_Tools3D::PointNearEdge;
%rename(pointtocompare) BOPTools_Tools3D::PointToCompare;
%rename(getplane) BOPTools_Tools3D::GetPlane;
%rename(getpointstate) BOPTools_Tools3D::GetPointState;
%rename(orientedgeonface) BOPTools_Tools3D::OrientEdgeOnFace;
%rename(orienttouchedgeonf1) BOPTools_Tools3D::OrientTouchEdgeOnF1;
%rename(getseams) BOPTools_Tools3D::GetSeams;
%rename(getseam) BOPTools_Tools3D::GetSeam;
%rename(isvalidarea) BOPTools_Tools3D::IsValidArea;
%rename(minstepin2d) BOPTools_Tools3D::MinStepIn2d;
%rename(isemptyshape) BOPTools_Tools3D::IsEmptyShape;
%rename(invertshape) BOPTools_Tools3D::InvertShape;
%rename(getstatepartin2d) BOPTools_Tools3D::GetStatePartIN2D;
%rename(checksamedomainfaceinside) BOPTools_Tools3D::CheckSameDomainFaceInside;
%rename(computefacestate) BOPTools_Tools3D::ComputeFaceState;
%rename(treatedasanalytic) BOPTools_Tools3D::TreatedAsAnalytic;
%rename(treatedasanalytic) BOPTools_Tools3D::TreatedAsAnalytic;
%rename(hasanalyticsurfacetype) BOPTools_Tools3D::HasAnalyticSurfaceType;
%rename(hashcode) BOPTools_PaveBlockMapHasher::HashCode;
%rename(isequal) BOPTools_PaveBlockMapHasher::IsEqual;
