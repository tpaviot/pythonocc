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
%rename(downcast) Handle_IntTools_TopolTool::DownCast;
%rename(downcast) Handle_IntTools_ListNodeOfListOfSurfaceRangeSample::DownCast;
%rename(downcast) Handle_IntTools_StdMapNodeOfMapOfCurveSample::DownCast;
%rename(downcast) Handle_IntTools_ListNodeOfListOfBox::DownCast;
%rename(downcast) Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress::DownCast;
%rename(downcast) Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox::DownCast;
%rename(downcast) Handle_IntTools_SequenceNodeOfSequenceOfRanges::DownCast;
%rename(downcast) Handle_IntTools_ListNodeOfListOfCurveRangeSample::DownCast;
%rename(downcast) Handle_IntTools_SequenceNodeOfSequenceOfCurves::DownCast;
%rename(downcast) Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts::DownCast;
%rename(downcast) Handle_IntTools_StdMapNodeOfMapOfSurfaceSample::DownCast;
%rename(downcast) Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox::DownCast;
%rename(downcast) Handle_IntTools_SequenceNodeOfSequenceOfRoots::DownCast;
%rename(downcast) Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress::DownCast;
%rename(downcast) Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces::DownCast;
%rename(hashcode) IntTools_SurfaceRangeSampleMapHasher::HashCode;
%rename(isequal) IntTools_SurfaceRangeSampleMapHasher::IsEqual;
%rename(hashcode) IntTools_CurveRangeSampleMapHasher::HashCode;
%rename(isequal) IntTools_CurveRangeSampleMapHasher::IsEqual;
%rename(sort) IntTools_QuickSort::Sort;
%rename(sort) IntTools_QuickSortRange::Sort;
%rename(computevv) IntTools_Tools::ComputeVV;
%rename(hasinternaledge) IntTools_Tools::HasInternalEdge;
%rename(makefacefromwireandface) IntTools_Tools::MakeFaceFromWireAndFace;
%rename(classifypointbyface) IntTools_Tools::ClassifyPointByFace;
%rename(isvertex) IntTools_Tools::IsVertex;
%rename(ismiddlepointsequal) IntTools_Tools::IsMiddlePointsEqual;
%rename(intermediatepoint) IntTools_Tools::IntermediatePoint;
%rename(splitcurve) IntTools_Tools::SplitCurve;
%rename(rejectlines) IntTools_Tools::RejectLines;
%rename(isdirscoinside) IntTools_Tools::IsDirsCoinside;
%rename(isclosed) IntTools_Tools::IsClosed;
%rename(curvetolerance) IntTools_Tools::CurveTolerance;
%rename(iseqdistance) IntTools_EdgeFace::IsEqDistance;
%rename(length) IntTools::Length;
%rename(removeidenticalroots) IntTools::RemoveIdenticalRoots;
%rename(sortroots) IntTools::SortRoots;
%rename(findrootstates) IntTools::FindRootStates;
%rename(parameter) IntTools::Parameter;
%rename(getradius) IntTools::GetRadius;
%rename(prepareargs) IntTools::PrepareArgs;
