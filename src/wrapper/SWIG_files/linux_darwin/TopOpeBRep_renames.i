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
%rename(DownCast) Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d::DownCast;
%rename(DownCast) Handle_TopOpeBRep_HArray1OfVPointInter::DownCast;
%rename(DownCast) Handle_TopOpeBRep_FFDumper::DownCast;
%rename(DownCast) Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool::DownCast;
%rename(DownCast) Handle_TopOpeBRep_Hctxff2d::DownCast;
%rename(DownCast) Handle_TopOpeBRep_HArray1OfLineInter::DownCast;
%rename(DownCast) Handle_TopOpeBRep_Hctxee2d::DownCast;
%rename(DownCast) Handle_TopOpeBRep_ListNodeOfListOfBipoint::DownCast;
%rename(ProcessLineTransition) TopOpeBRep_FFTransitionTool::ProcessLineTransition;
%rename(ProcessEdgeTransition) TopOpeBRep_FFTransitionTool::ProcessEdgeTransition;
%rename(ProcessFaceTransition) TopOpeBRep_FFTransitionTool::ProcessFaceTransition;
%rename(ProcessEdgeONTransition) TopOpeBRep_FFTransitionTool::ProcessEdgeONTransition;
%rename(MakePoint) TopOpeBRep_PointGeomTool::MakePoint;
%rename(IsEqual) TopOpeBRep_PointGeomTool::IsEqual;
%rename(Lminmax) TopOpeBRep_FacesFiller::Lminmax;
%rename(LSameDomainERL) TopOpeBRep_FacesFiller::LSameDomainERL;
%rename(IsVPtransLok) TopOpeBRep_FacesFiller::IsVPtransLok;
%rename(TransvpOK) TopOpeBRep_FacesFiller::TransvpOK;
%rename(VPParamOnER) TopOpeBRep_FacesFiller::VPParamOnER;
%rename(EqualpPonR) TopOpeBRep_FacesFiller::EqualpPonR;
%rename(Print) TopOpeBRep::Print;
%rename(MakeCurves) TopOpeBRep_GeomTool::MakeCurves;
%rename(MakeCurve) TopOpeBRep_GeomTool::MakeCurve;
%rename(MakeBSpline1fromWALKING3d) TopOpeBRep_GeomTool::MakeBSpline1fromWALKING3d;
%rename(MakeBSpline1fromWALKING2d) TopOpeBRep_GeomTool::MakeBSpline1fromWALKING2d;
