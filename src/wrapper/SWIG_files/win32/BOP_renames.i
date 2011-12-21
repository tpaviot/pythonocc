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
%rename(DownCast) Handle_BOP_SequenceNodeOfSeqOfSeqOfShape::DownCast;
%rename(DownCast) Handle_BOP_Loop::DownCast;
%rename(DownCast) Handle_BOP_HistoryCollector::DownCast;
%rename(DownCast) Handle_BOP_ShellSolidHistoryCollector::DownCast;
%rename(DownCast) Handle_BOP_ListNodeOfListOfConnexityBlock::DownCast;
%rename(DownCast) Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier::DownCast;
%rename(DownCast) Handle_BOP_ListNodeOfListOfLoop::DownCast;
%rename(DownCast) Handle_BOP_ListNodeOfListOfListOfLoop::DownCast;
%rename(DownCast) Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo::DownCast;
%rename(DownCast) Handle_BOP_ListNodeOfListOfCheckResult::DownCast;
%rename(DownCast) Handle_BOP_WireSolidHistoryCollector::DownCast;
%rename(DownCast) Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo::DownCast;
%rename(DownCast) Handle_BOP_SolidSolidHistoryCollector::DownCast;
%rename(DownCast) Handle_BOP_SectionHistoryCollector::DownCast;
%rename(DownCast) Handle_BOP_ListNodeOfListOfEdgeInfo::DownCast;
%rename(DownCast) Handle_BOP_ListNodeOfListOfFaceInfo::DownCast;
%rename(SortTypes) BOP_Builder::SortTypes;
%rename(CheckArgTypes) BOP_WireSolid::CheckArgTypes;
%rename(DrawListOfShape) BOP_Draw::DrawListOfShape;
%rename(DrawListOfEdgesWithPC) BOP_Draw::DrawListOfEdgesWithPC;
%rename(DrawEdgeWithPC) BOP_Draw::DrawEdgeWithPC;
%rename(Wait) BOP_Draw::Wait;
%rename(CheckArgTypes) BOP_WireShell::CheckArgTypes;
%rename(StateToCompare) BOP_BuilderTools::StateToCompare;
%rename(ToReverseSection) BOP_BuilderTools::ToReverseSection;
%rename(ToReverseFace) BOP_BuilderTools::ToReverseFace;
%rename(OrientSectionEdgeOnF1) BOP_BuilderTools::OrientSectionEdgeOnF1;
%rename(IsSameDomainFaceWithF1) BOP_BuilderTools::IsSameDomainFaceWithF1;
%rename(IsPartIN2DToKeep) BOP_BuilderTools::IsPartIN2DToKeep;
%rename(IsPartOn2dToKeep) BOP_BuilderTools::IsPartOn2dToKeep;
%rename(DoMap) BOP_BuilderTools::DoMap;
%rename(MakeConnexityBlocks) BOP_BuilderTools::MakeConnexityBlocks;
%rename(CheckArgTypes) BOP_ShellSolid::CheckArgTypes;
%rename(CorrectTolerances) BOP_CorrectTolerances::CorrectTolerances;
%rename(CorrectCurveOnSurface) BOP_CorrectTolerances::CorrectCurveOnSurface;
%rename(CorrectPointOnCurve) BOP_CorrectTolerances::CorrectPointOnCurve;
%rename(IsUVISO) BOP_WireEdgeSet::IsUVISO;
