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
%rename(downcast) Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d::DownCast;
%rename(downcast) Handle_TopOpeBRep_FFDumper::DownCast;
%rename(downcast) Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool::DownCast;
%rename(downcast) Handle_TopOpeBRep_Hctxff2d::DownCast;
%rename(downcast) Handle_TopOpeBRep_HArray1OfLineInter::DownCast;
%rename(downcast) Handle_TopOpeBRep_Hctxee2d::DownCast;
%rename(downcast) Handle_TopOpeBRep_ListNodeOfListOfBipoint::DownCast;
%rename(downcast) Handle_TopOpeBRep_HArray1OfVPointInter::DownCast;
%rename(downcast) Handle_TopOpeBRep_DataMapNodeOfDataMapOfShapeInteger::DownCast;
%rename(makecurves) TopOpeBRep_GeomTool::MakeCurves;
%rename(makecurve) TopOpeBRep_GeomTool::MakeCurve;
%rename(makebspline1fromwalking3d) TopOpeBRep_GeomTool::MakeBSpline1fromWALKING3d;
%rename(makebspline1fromwalking2d) TopOpeBRep_GeomTool::MakeBSpline1fromWALKING2d;
%rename(processlinetransition) TopOpeBRep_FFTransitionTool::ProcessLineTransition;
%rename(processedgetransition) TopOpeBRep_FFTransitionTool::ProcessEdgeTransition;
%rename(processfacetransition) TopOpeBRep_FFTransitionTool::ProcessFaceTransition;
%rename(processedgeontransition) TopOpeBRep_FFTransitionTool::ProcessEdgeONTransition;
%rename(makepoint) TopOpeBRep_PointGeomTool::MakePoint;
%rename(isequal) TopOpeBRep_PointGeomTool::IsEqual;
%rename(lminmax) TopOpeBRep_FacesFiller::Lminmax;
%rename(lsamedomainerl) TopOpeBRep_FacesFiller::LSameDomainERL;
%rename(isvptranslok) TopOpeBRep_FacesFiller::IsVPtransLok;
%rename(transvpok) TopOpeBRep_FacesFiller::TransvpOK;
%rename(vpparamoner) TopOpeBRep_FacesFiller::VPParamOnER;
%rename(equalpponr) TopOpeBRep_FacesFiller::EqualpPonR;
%rename(print) TopOpeBRep::Print;
