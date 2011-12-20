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
%rename(DownCast) Handle_BRepBlend_AppFuncRoot::DownCast;
%rename(DownCast) Handle_BRepBlend_AppFuncRst::DownCast;
%rename(DownCast) Handle_BRepBlend_SequenceNodeOfSequenceOfLine::DownCast;
%rename(DownCast) Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst::DownCast;
%rename(DownCast) Handle_BRepBlend_AppFunc::DownCast;
%rename(DownCast) Handle_BRepBlend_Line::DownCast;
%rename(DownCast) Handle_BRepBlend_AppFuncRstRst::DownCast;
%rename(FirstParameter) BRepBlend_HCurve2dTool::FirstParameter;
%rename(LastParameter) BRepBlend_HCurve2dTool::LastParameter;
%rename(Continuity) BRepBlend_HCurve2dTool::Continuity;
%rename(NbIntervals) BRepBlend_HCurve2dTool::NbIntervals;
%rename(Intervals) BRepBlend_HCurve2dTool::Intervals;
%rename(IsClosed) BRepBlend_HCurve2dTool::IsClosed;
%rename(IsPeriodic) BRepBlend_HCurve2dTool::IsPeriodic;
%rename(Period) BRepBlend_HCurve2dTool::Period;
%rename(Value) BRepBlend_HCurve2dTool::Value;
%rename(D0) BRepBlend_HCurve2dTool::D0;
%rename(D1) BRepBlend_HCurve2dTool::D1;
%rename(D2) BRepBlend_HCurve2dTool::D2;
%rename(D3) BRepBlend_HCurve2dTool::D3;
%rename(DN) BRepBlend_HCurve2dTool::DN;
%rename(Resolution) BRepBlend_HCurve2dTool::Resolution;
%rename(GetType) BRepBlend_HCurve2dTool::GetType;
%rename(Line) BRepBlend_HCurve2dTool::Line;
%rename(Circle) BRepBlend_HCurve2dTool::Circle;
%rename(Ellipse) BRepBlend_HCurve2dTool::Ellipse;
%rename(Hyperbola) BRepBlend_HCurve2dTool::Hyperbola;
%rename(Parabola) BRepBlend_HCurve2dTool::Parabola;
%rename(Bezier) BRepBlend_HCurve2dTool::Bezier;
%rename(BSpline) BRepBlend_HCurve2dTool::BSpline;
%rename(NbSamples) BRepBlend_HCurve2dTool::NbSamples;
%rename(FirstParameter) BRepBlend_HCurveTool::FirstParameter;
%rename(LastParameter) BRepBlend_HCurveTool::LastParameter;
%rename(Continuity) BRepBlend_HCurveTool::Continuity;
%rename(NbIntervals) BRepBlend_HCurveTool::NbIntervals;
%rename(Intervals) BRepBlend_HCurveTool::Intervals;
%rename(IsClosed) BRepBlend_HCurveTool::IsClosed;
%rename(IsPeriodic) BRepBlend_HCurveTool::IsPeriodic;
%rename(Period) BRepBlend_HCurveTool::Period;
%rename(Value) BRepBlend_HCurveTool::Value;
%rename(D0) BRepBlend_HCurveTool::D0;
%rename(D1) BRepBlend_HCurveTool::D1;
%rename(D2) BRepBlend_HCurveTool::D2;
%rename(D3) BRepBlend_HCurveTool::D3;
%rename(DN) BRepBlend_HCurveTool::DN;
%rename(Resolution) BRepBlend_HCurveTool::Resolution;
%rename(GetType) BRepBlend_HCurveTool::GetType;
%rename(Line) BRepBlend_HCurveTool::Line;
%rename(Circle) BRepBlend_HCurveTool::Circle;
%rename(Ellipse) BRepBlend_HCurveTool::Ellipse;
%rename(Hyperbola) BRepBlend_HCurveTool::Hyperbola;
%rename(Parabola) BRepBlend_HCurveTool::Parabola;
%rename(Bezier) BRepBlend_HCurveTool::Bezier;
%rename(BSpline) BRepBlend_HCurveTool::BSpline;
%rename(NbSamples) BRepBlend_HCurveTool::NbSamples;
%rename(Project) BRepBlend_BlendTool::Project;
%rename(Inters) BRepBlend_BlendTool::Inters;
%rename(Parameter) BRepBlend_BlendTool::Parameter;
%rename(Tolerance) BRepBlend_BlendTool::Tolerance;
%rename(SingularOnUMin) BRepBlend_BlendTool::SingularOnUMin;
%rename(SingularOnUMax) BRepBlend_BlendTool::SingularOnUMax;
%rename(SingularOnVMin) BRepBlend_BlendTool::SingularOnVMin;
%rename(SingularOnVMax) BRepBlend_BlendTool::SingularOnVMax;
%rename(NbSamplesU) BRepBlend_BlendTool::NbSamplesU;
%rename(NbSamplesV) BRepBlend_BlendTool::NbSamplesV;
%rename(Bounds) BRepBlend_BlendTool::Bounds;
%rename(CurveOnSurf) BRepBlend_BlendTool::CurveOnSurf;
