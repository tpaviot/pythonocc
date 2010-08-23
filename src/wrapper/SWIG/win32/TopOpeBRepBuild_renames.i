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
%rename(downcast) Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape::DownCast;
%rename(downcast) Handle_TopOpeBRepBuild_Loop::DownCast;
%rename(downcast) Handle_TopOpeBRepBuild_Pave::DownCast;
%rename(downcast) Handle_TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape::DownCast;
%rename(downcast) Handle_TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo::DownCast;
%rename(downcast) Handle_TopOpeBRepBuild_ListNodeOfListOfLoop::DownCast;
%rename(downcast) Handle_TopOpeBRepBuild_ListNodeOfListOfPave::DownCast;
%rename(downcast) Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger::DownCast;
%rename(downcast) Handle_TopOpeBRepBuild_HBuilder::DownCast;
%rename(downcast) Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal::DownCast;
%rename(downcast) Handle_TopOpeBRepBuild_ListNodeOfListOfListOfLoop::DownCast;
%rename(adjustcase) TopOpeBRepBuild_PaveClassifier::AdjustCase;
%rename(getp2dfl) TopOpeBRepBuild_CorrectFace2d::GetP2dFL;
%rename(checklist) TopOpeBRepBuild_CorrectFace2d::CheckList;
%rename(gfusunsh) TopOpeBRepBuild_GTool::GFusUnsh;
%rename(gfussame) TopOpeBRepBuild_GTool::GFusSame;
%rename(gfusdiff) TopOpeBRepBuild_GTool::GFusDiff;
%rename(gcutunsh) TopOpeBRepBuild_GTool::GCutUnsh;
%rename(gcutsame) TopOpeBRepBuild_GTool::GCutSame;
%rename(gcutdiff) TopOpeBRepBuild_GTool::GCutDiff;
%rename(gcomunsh) TopOpeBRepBuild_GTool::GComUnsh;
%rename(gcomsame) TopOpeBRepBuild_GTool::GComSame;
%rename(gcomdiff) TopOpeBRepBuild_GTool::GComDiff;
%rename(dump) TopOpeBRepBuild_GTool::Dump;
%rename(dumplist) TopOpeBRepBuild_Area1dBuilder::DumpList;
%rename(makemapofshapevertexinfo) TopOpeBRepBuild_Tools2d::MakeMapOfShapeVertexInfo;
%rename(dumpmapofshapevertexinfo) TopOpeBRepBuild_Tools2d::DumpMapOfShapeVertexInfo;
%rename(path) TopOpeBRepBuild_Tools2d::Path;
%rename(toptype) TopOpeBRepBuild_Builder::TopType;
%rename(reverse) TopOpeBRepBuild_Builder::Reverse;
%rename(orient) TopOpeBRepBuild_Builder::Orient;
%rename(contains) TopOpeBRepBuild_Builder::Contains;
%rename(kpls) TopOpeBRepBuild_Builder::KPls;
%rename(kpcontains) TopOpeBRepBuild_Builder::KPContains;
%rename(kpreturn) TopOpeBRepBuild_Builder::KPreturn;
%rename(gtakecommonofsame) TopOpeBRepBuild_Builder::GTakeCommonOfSame;
%rename(gtakecommonofdiff) TopOpeBRepBuild_Builder::GTakeCommonOfDiff;
%rename(gcontains) TopOpeBRepBuild_Builder::GContains;
%rename(gcopylist) TopOpeBRepBuild_Builder::GCopyList;
%rename(gdumppnt) TopOpeBRepBuild_Builder::GdumpPNT;
%rename(gdumporiparpnt) TopOpeBRepBuild_Builder::GdumpORIPARPNT;
%rename(printgeo) TopOpeBRepBuild_Builder::PrintGeo;
%rename(printsur) TopOpeBRepBuild_Builder::PrintSur;
%rename(printcur) TopOpeBRepBuild_Builder::PrintCur;
%rename(printpnt) TopOpeBRepBuild_Builder::PrintPnt;
%rename(printori) TopOpeBRepBuild_Builder::PrintOri;
%rename(stringstate) TopOpeBRepBuild_Builder::StringState;
%rename(gchecknbounds) TopOpeBRepBuild_Builder::GcheckNBOUNDS;
%rename(dumpssb) TopOpeBRepBuild_GTopo::DumpSSB;
%rename(sortpave) TopOpeBRepBuild_PaveSet::SortPave;
%rename(dumpmapofshapewithstate) TopOpeBRepBuild_Tools::DumpMapOfShapeWithState;
%rename(findstate) TopOpeBRepBuild_Tools::FindState;
%rename(propagatestate) TopOpeBRepBuild_Tools::PropagateState;
%rename(findstatethroughvertex) TopOpeBRepBuild_Tools::FindStateThroughVertex;
%rename(propagatestateforwires) TopOpeBRepBuild_Tools::PropagateStateForWires;
%rename(spreadstatetochild) TopOpeBRepBuild_Tools::SpreadStateToChild;
%rename(findstate1) TopOpeBRepBuild_Tools::FindState1;
%rename(findstate2) TopOpeBRepBuild_Tools::FindState2;
%rename(getadjacentface) TopOpeBRepBuild_Tools::GetAdjacentFace;
%rename(getnormaltofaceonedge) TopOpeBRepBuild_Tools::GetNormalToFaceOnEdge;
%rename(getnormalinnearestpoint) TopOpeBRepBuild_Tools::GetNormalInNearestPoint;
%rename(gettangenttoedgeedge) TopOpeBRepBuild_Tools::GetTangentToEdgeEdge;
%rename(gettangenttoedge) TopOpeBRepBuild_Tools::GetTangentToEdge;
%rename(updatepcurves) TopOpeBRepBuild_Tools::UpdatePCurves;
%rename(updateedgeonperiodicalface) TopOpeBRepBuild_Tools::UpdateEdgeOnPeriodicalFace;
%rename(updateedgeonface) TopOpeBRepBuild_Tools::UpdateEdgeOnFace;
%rename(isdegedgesthesame) TopOpeBRepBuild_Tools::IsDegEdgesTheSame;
%rename(normalizeface) TopOpeBRepBuild_Tools::NormalizeFace;
%rename(correctface2d) TopOpeBRepBuild_Tools::CorrectFace2d;
%rename(correcttolerances) TopOpeBRepBuild_Tools::CorrectTolerances;
%rename(correctcurveonsurface) TopOpeBRepBuild_Tools::CorrectCurveOnSurface;
%rename(correctpointoncurve) TopOpeBRepBuild_Tools::CorrectPointOnCurve;
%rename(checkfaceclosed2d) TopOpeBRepBuild_Tools::CheckFaceClosed2d;
%rename(isuviso) TopOpeBRepBuild_WireEdgeSet::IsUVISO;
