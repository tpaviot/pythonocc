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
%rename(DownCast) Handle_TopOpeBRepBuild_Loop::DownCast;
%rename(DownCast) Handle_TopOpeBRepBuild_Pave::DownCast;
%rename(DownCast) Handle_TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape::DownCast;
%rename(DownCast) Handle_TopOpeBRepBuild_ListNodeOfListOfLoop::DownCast;
%rename(DownCast) Handle_TopOpeBRepBuild_ListNodeOfListOfListOfLoop::DownCast;
%rename(DownCast) Handle_TopOpeBRepBuild_ListNodeOfListOfPave::DownCast;
%rename(DownCast) Handle_TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo::DownCast;
%rename(DownCast) Handle_TopOpeBRepBuild_HBuilder::DownCast;
%rename(DownCast) Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape::DownCast;
%rename(AdjustCase) TopOpeBRepBuild_PaveClassifier::AdjustCase;
%rename(DumpList) TopOpeBRepBuild_Area1dBuilder::DumpList;
%rename(GFusUnsh) TopOpeBRepBuild_GTool::GFusUnsh;
%rename(GFusSame) TopOpeBRepBuild_GTool::GFusSame;
%rename(GFusDiff) TopOpeBRepBuild_GTool::GFusDiff;
%rename(GCutUnsh) TopOpeBRepBuild_GTool::GCutUnsh;
%rename(GCutSame) TopOpeBRepBuild_GTool::GCutSame;
%rename(GCutDiff) TopOpeBRepBuild_GTool::GCutDiff;
%rename(GComUnsh) TopOpeBRepBuild_GTool::GComUnsh;
%rename(GComSame) TopOpeBRepBuild_GTool::GComSame;
%rename(GComDiff) TopOpeBRepBuild_GTool::GComDiff;
%rename(Dump) TopOpeBRepBuild_GTool::Dump;
%rename(MakeMapOfShapeVertexInfo) TopOpeBRepBuild_Tools2d::MakeMapOfShapeVertexInfo;
%rename(DumpMapOfShapeVertexInfo) TopOpeBRepBuild_Tools2d::DumpMapOfShapeVertexInfo;
%rename(Path) TopOpeBRepBuild_Tools2d::Path;
%rename(SortPave) TopOpeBRepBuild_PaveSet::SortPave;
%rename(TopType) TopOpeBRepBuild_Builder::TopType;
%rename(Reverse) TopOpeBRepBuild_Builder::Reverse;
%rename(Orient) TopOpeBRepBuild_Builder::Orient;
%rename(Contains) TopOpeBRepBuild_Builder::Contains;
%rename(KPls) TopOpeBRepBuild_Builder::KPls;
%rename(KPContains) TopOpeBRepBuild_Builder::KPContains;
%rename(KPreturn) TopOpeBRepBuild_Builder::KPreturn;
%rename(GTakeCommonOfSame) TopOpeBRepBuild_Builder::GTakeCommonOfSame;
%rename(GTakeCommonOfDiff) TopOpeBRepBuild_Builder::GTakeCommonOfDiff;
%rename(GContains) TopOpeBRepBuild_Builder::GContains;
%rename(GCopyList) TopOpeBRepBuild_Builder::GCopyList;
%rename(GdumpPNT) TopOpeBRepBuild_Builder::GdumpPNT;
%rename(GdumpORIPARPNT) TopOpeBRepBuild_Builder::GdumpORIPARPNT;
%rename(PrintGeo) TopOpeBRepBuild_Builder::PrintGeo;
%rename(PrintSur) TopOpeBRepBuild_Builder::PrintSur;
%rename(PrintCur) TopOpeBRepBuild_Builder::PrintCur;
%rename(PrintPnt) TopOpeBRepBuild_Builder::PrintPnt;
%rename(PrintOri) TopOpeBRepBuild_Builder::PrintOri;
%rename(StringState) TopOpeBRepBuild_Builder::StringState;
%rename(GcheckNBOUNDS) TopOpeBRepBuild_Builder::GcheckNBOUNDS;
%rename(DumpSSB) TopOpeBRepBuild_GTopo::DumpSSB;
%rename(GetP2dFL) TopOpeBRepBuild_CorrectFace2d::GetP2dFL;
%rename(CheckList) TopOpeBRepBuild_CorrectFace2d::CheckList;
%rename(DumpMapOfShapeWithState) TopOpeBRepBuild_Tools::DumpMapOfShapeWithState;
%rename(FindState) TopOpeBRepBuild_Tools::FindState;
%rename(PropagateState) TopOpeBRepBuild_Tools::PropagateState;
%rename(FindStateThroughVertex) TopOpeBRepBuild_Tools::FindStateThroughVertex;
%rename(PropagateStateForWires) TopOpeBRepBuild_Tools::PropagateStateForWires;
%rename(SpreadStateToChild) TopOpeBRepBuild_Tools::SpreadStateToChild;
%rename(FindState1) TopOpeBRepBuild_Tools::FindState1;
%rename(FindState2) TopOpeBRepBuild_Tools::FindState2;
%rename(GetAdjacentFace) TopOpeBRepBuild_Tools::GetAdjacentFace;
%rename(GetNormalToFaceOnEdge) TopOpeBRepBuild_Tools::GetNormalToFaceOnEdge;
%rename(GetNormalInNearestPoint) TopOpeBRepBuild_Tools::GetNormalInNearestPoint;
%rename(GetTangentToEdgeEdge) TopOpeBRepBuild_Tools::GetTangentToEdgeEdge;
%rename(GetTangentToEdge) TopOpeBRepBuild_Tools::GetTangentToEdge;
%rename(UpdatePCurves) TopOpeBRepBuild_Tools::UpdatePCurves;
%rename(UpdateEdgeOnPeriodicalFace) TopOpeBRepBuild_Tools::UpdateEdgeOnPeriodicalFace;
%rename(UpdateEdgeOnFace) TopOpeBRepBuild_Tools::UpdateEdgeOnFace;
%rename(IsDegEdgesTheSame) TopOpeBRepBuild_Tools::IsDegEdgesTheSame;
%rename(NormalizeFace) TopOpeBRepBuild_Tools::NormalizeFace;
%rename(CorrectFace2d) TopOpeBRepBuild_Tools::CorrectFace2d;
%rename(CorrectTolerances) TopOpeBRepBuild_Tools::CorrectTolerances;
%rename(CorrectCurveOnSurface) TopOpeBRepBuild_Tools::CorrectCurveOnSurface;
%rename(CorrectPointOnCurve) TopOpeBRepBuild_Tools::CorrectPointOnCurve;
%rename(CheckFaceClosed2d) TopOpeBRepBuild_Tools::CheckFaceClosed2d;
%rename(IsUVISO) TopOpeBRepBuild_WireEdgeSet::IsUVISO;
