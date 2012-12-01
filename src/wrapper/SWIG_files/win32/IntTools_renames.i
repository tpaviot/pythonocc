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
%rename(DownCast) Handle_IntTools_SequenceNodeOfSequenceOfCurves::DownCast;
%rename(DownCast) Handle_IntTools_ListNodeOfListOfCurveRangeSample::DownCast;
%rename(DownCast) Handle_IntTools_ListNodeOfListOfSurfaceRangeSample::DownCast;
%rename(DownCast) Handle_IntTools_ListNodeOfListOfBox::DownCast;
%rename(DownCast) Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress::DownCast;
%rename(DownCast) Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox::DownCast;
%rename(DownCast) Handle_IntTools_SequenceNodeOfSequenceOfRanges::DownCast;
%rename(DownCast) Handle_IntTools_StdMapNodeOfMapOfCurveSample::DownCast;
%rename(DownCast) Handle_IntTools_TopolTool::DownCast;
%rename(DownCast) Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts::DownCast;
%rename(DownCast) Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox::DownCast;
%rename(DownCast) Handle_IntTools_StdMapNodeOfMapOfSurfaceSample::DownCast;
%rename(DownCast) Handle_IntTools_SequenceNodeOfSequenceOfRoots::DownCast;
%rename(DownCast) Handle_IntTools_Context::DownCast;
%rename(DownCast) Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces::DownCast;
%rename(HashCode) IntTools_SurfaceRangeSampleMapHasher::HashCode;
%rename(IsEqual) IntTools_SurfaceRangeSampleMapHasher::IsEqual;
%rename(HashCode) IntTools_CurveRangeSampleMapHasher::HashCode;
%rename(IsEqual) IntTools_CurveRangeSampleMapHasher::IsEqual;
%rename(IsEqDistance) IntTools_EdgeFace::IsEqDistance;
%rename(ComputeVV) IntTools_Tools::ComputeVV;
%rename(HasInternalEdge) IntTools_Tools::HasInternalEdge;
%rename(MakeFaceFromWireAndFace) IntTools_Tools::MakeFaceFromWireAndFace;
%rename(ClassifyPointByFace) IntTools_Tools::ClassifyPointByFace;
%rename(IsVertex) IntTools_Tools::IsVertex;
%rename(IsMiddlePointsEqual) IntTools_Tools::IsMiddlePointsEqual;
%rename(IntermediatePoint) IntTools_Tools::IntermediatePoint;
%rename(SplitCurve) IntTools_Tools::SplitCurve;
%rename(RejectLines) IntTools_Tools::RejectLines;
%rename(IsDirsCoinside) IntTools_Tools::IsDirsCoinside;
%rename(IsClosed) IntTools_Tools::IsClosed;
%rename(CurveTolerance) IntTools_Tools::CurveTolerance;
%rename(Sort) IntTools_QuickSort::Sort;
%rename(Sort) IntTools_QuickSortRange::Sort;
%rename(Length) IntTools::Length;
%rename(RemoveIdenticalRoots) IntTools::RemoveIdenticalRoots;
%rename(SortRoots) IntTools::SortRoots;
%rename(FindRootStates) IntTools::FindRootStates;
%rename(Parameter) IntTools::Parameter;
%rename(GetRadius) IntTools::GetRadius;
%rename(PrepareArgs) IntTools::PrepareArgs;
