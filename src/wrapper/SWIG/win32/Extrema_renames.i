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
%rename(downcast) Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC::DownCast;
%rename(downcast) Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC::DownCast;
%rename(downcast) Handle_Extrema_HArray1OfPOnSurf::DownCast;
%rename(downcast) Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d::DownCast;
%rename(downcast) Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d::DownCast;
%rename(downcast) Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC::DownCast;
%rename(downcast) Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d::DownCast;
%rename(downcast) Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC::DownCast;
%rename(downcast) Handle_Extrema_HArray2OfPOnCurv::DownCast;
%rename(downcast) Handle_Extrema_HArray2OfPOnSurf::DownCast;
%rename(downcast) Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv::DownCast;
%rename(downcast) Handle_Extrema_HArray1OfPOnCurv2d::DownCast;
%rename(downcast) Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d::DownCast;
%rename(downcast) Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC::DownCast;
%rename(downcast) Handle_Extrema_HArray1OfPOnCurv::DownCast;
%rename(downcast) Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d::DownCast;
%rename(downcast) Handle_Extrema_SequenceNodeOfSequenceOfBoolean::DownCast;
%rename(downcast) Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d::DownCast;
%rename(downcast) Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC::DownCast;
%rename(downcast) Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d::DownCast;
%rename(downcast) Handle_Extrema_HArray2OfPOnCurv2d::DownCast;
%rename(downcast) Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf::DownCast;
%rename(firstparameter) Extrema_CurveTool::FirstParameter;
%rename(lastparameter) Extrema_CurveTool::LastParameter;
%rename(continuity) Extrema_CurveTool::Continuity;
%rename(nbintervals) Extrema_CurveTool::NbIntervals;
%rename(intervals) Extrema_CurveTool::Intervals;
%rename(isperiodic) Extrema_CurveTool::IsPeriodic;
%rename(period) Extrema_CurveTool::Period;
%rename(resolution) Extrema_CurveTool::Resolution;
%rename(gettype) Extrema_CurveTool::GetType;
%rename(value) Extrema_CurveTool::Value;
%rename(d1) Extrema_CurveTool::D1;
%rename(d2) Extrema_CurveTool::D2;
%rename(line) Extrema_CurveTool::Line;
%rename(circle) Extrema_CurveTool::Circle;
%rename(ellipse) Extrema_CurveTool::Ellipse;
%rename(hyperbola) Extrema_CurveTool::Hyperbola;
%rename(parabola) Extrema_CurveTool::Parabola;
%rename(degree) Extrema_CurveTool::Degree;
%rename(isrational) Extrema_CurveTool::IsRational;
%rename(nbpoles) Extrema_CurveTool::NbPoles;
%rename(nbknots) Extrema_CurveTool::NbKnots;
%rename(bezier) Extrema_CurveTool::Bezier;
%rename(bspline) Extrema_CurveTool::BSpline;
%rename(firstparameter) Extrema_Curve2dTool::FirstParameter;
%rename(lastparameter) Extrema_Curve2dTool::LastParameter;
%rename(continuity) Extrema_Curve2dTool::Continuity;
%rename(nbintervals) Extrema_Curve2dTool::NbIntervals;
%rename(intervals) Extrema_Curve2dTool::Intervals;
%rename(isclosed) Extrema_Curve2dTool::IsClosed;
%rename(isperiodic) Extrema_Curve2dTool::IsPeriodic;
%rename(period) Extrema_Curve2dTool::Period;
%rename(value) Extrema_Curve2dTool::Value;
%rename(d0) Extrema_Curve2dTool::D0;
%rename(d1) Extrema_Curve2dTool::D1;
%rename(d2) Extrema_Curve2dTool::D2;
%rename(d3) Extrema_Curve2dTool::D3;
%rename(dn) Extrema_Curve2dTool::DN;
%rename(resolution) Extrema_Curve2dTool::Resolution;
%rename(gettype) Extrema_Curve2dTool::GetType;
%rename(line) Extrema_Curve2dTool::Line;
%rename(circle) Extrema_Curve2dTool::Circle;
%rename(ellipse) Extrema_Curve2dTool::Ellipse;
%rename(hyperbola) Extrema_Curve2dTool::Hyperbola;
%rename(parabola) Extrema_Curve2dTool::Parabola;
%rename(degree) Extrema_Curve2dTool::Degree;
%rename(isrational) Extrema_Curve2dTool::IsRational;
%rename(nbpoles) Extrema_Curve2dTool::NbPoles;
%rename(nbknots) Extrema_Curve2dTool::NbKnots;
%rename(bezier) Extrema_Curve2dTool::Bezier;
%rename(bspline) Extrema_Curve2dTool::BSpline;
