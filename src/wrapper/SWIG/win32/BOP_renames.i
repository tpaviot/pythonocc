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
%rename(downcast) Handle_BOP_SequenceNodeOfSeqOfSeqOfShape::DownCast;
%rename(downcast) Handle_BOP_Loop::DownCast;
%rename(downcast) Handle_BOP_HistoryCollector::DownCast;
%rename(downcast) Handle_BOP_ShellSolidHistoryCollector::DownCast;
%rename(downcast) Handle_BOP_ListNodeOfListOfListOfLoop::DownCast;
%rename(downcast) Handle_BOP_WireSolidHistoryCollector::DownCast;
%rename(downcast) Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier::DownCast;
%rename(downcast) Handle_BOP_ListNodeOfListOfEdgeInfo::DownCast;
%rename(downcast) Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo::DownCast;
%rename(downcast) Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo::DownCast;
%rename(downcast) Handle_BOP_ListNodeOfListOfCheckResult::DownCast;
%rename(downcast) Handle_BOP_SolidSolidHistoryCollector::DownCast;
%rename(downcast) Handle_BOP_ListNodeOfListOfLoop::DownCast;
%rename(downcast) Handle_BOP_SectionHistoryCollector::DownCast;
%rename(downcast) Handle_BOP_ListNodeOfListOfFaceInfo::DownCast;
%rename(downcast) Handle_BOP_ListNodeOfListOfConnexityBlock::DownCast;
%rename(sorttypes) BOP_Builder::SortTypes;
%rename(checkargtypes) BOP_WireSolid::CheckArgTypes;
%rename(drawlistofshape) BOP_Draw::DrawListOfShape;
%rename(drawlistofedgeswithpc) BOP_Draw::DrawListOfEdgesWithPC;
%rename(drawlistofedgeswithpc) BOP_Draw::DrawListOfEdgesWithPC;
%rename(drawedgewithpc) BOP_Draw::DrawEdgeWithPC;
%rename(wait) BOP_Draw::Wait;
%rename(statetocompare) BOP_BuilderTools::StateToCompare;
%rename(toreversesection) BOP_BuilderTools::ToReverseSection;
%rename(toreverseface) BOP_BuilderTools::ToReverseFace;
%rename(orientsectionedgeonf1) BOP_BuilderTools::OrientSectionEdgeOnF1;
%rename(issamedomainfacewithf1) BOP_BuilderTools::IsSameDomainFaceWithF1;
%rename(ispartin2dtokeep) BOP_BuilderTools::IsPartIN2DToKeep;
%rename(isparton2dtokeep) BOP_BuilderTools::IsPartOn2dToKeep;
%rename(domap) BOP_BuilderTools::DoMap;
%rename(makeconnexityblocks) BOP_BuilderTools::MakeConnexityBlocks;
%rename(checkargtypes) BOP_ShellSolid::CheckArgTypes;
%rename(correcttolerances) BOP_CorrectTolerances::CorrectTolerances;
%rename(correctcurveonsurface) BOP_CorrectTolerances::CorrectCurveOnSurface;
%rename(correctpointoncurve) BOP_CorrectTolerances::CorrectPointOnCurve;
%rename(isuviso) BOP_WireEdgeSet::IsUVISO;
%rename(checkargtypes) BOP_WireShell::CheckArgTypes;
