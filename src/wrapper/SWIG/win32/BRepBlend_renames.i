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
%rename(downcast) Handle_BRepBlend_AppFuncRoot::DownCast;
%rename(downcast) Handle_BRepBlend_AppFuncRst::DownCast;
%rename(downcast) Handle_BRepBlend_SequenceNodeOfSequenceOfLine::DownCast;
%rename(downcast) Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst::DownCast;
%rename(downcast) Handle_BRepBlend_Line::DownCast;
%rename(downcast) Handle_BRepBlend_AppFunc::DownCast;
%rename(downcast) Handle_BRepBlend_AppFuncRstRst::DownCast;
%rename(firstparameter) BRepBlend_HCurve2dTool::FirstParameter;
%rename(lastparameter) BRepBlend_HCurve2dTool::LastParameter;
%rename(continuity) BRepBlend_HCurve2dTool::Continuity;
%rename(nbintervals) BRepBlend_HCurve2dTool::NbIntervals;
%rename(intervals) BRepBlend_HCurve2dTool::Intervals;
%rename(isclosed) BRepBlend_HCurve2dTool::IsClosed;
%rename(isperiodic) BRepBlend_HCurve2dTool::IsPeriodic;
%rename(period) BRepBlend_HCurve2dTool::Period;
%rename(value) BRepBlend_HCurve2dTool::Value;
%rename(d0) BRepBlend_HCurve2dTool::D0;
%rename(d1) BRepBlend_HCurve2dTool::D1;
%rename(d2) BRepBlend_HCurve2dTool::D2;
%rename(d3) BRepBlend_HCurve2dTool::D3;
%rename(dn) BRepBlend_HCurve2dTool::DN;
%rename(resolution) BRepBlend_HCurve2dTool::Resolution;
%rename(gettype) BRepBlend_HCurve2dTool::GetType;
%rename(line) BRepBlend_HCurve2dTool::Line;
%rename(circle) BRepBlend_HCurve2dTool::Circle;
%rename(ellipse) BRepBlend_HCurve2dTool::Ellipse;
%rename(hyperbola) BRepBlend_HCurve2dTool::Hyperbola;
%rename(parabola) BRepBlend_HCurve2dTool::Parabola;
%rename(bezier) BRepBlend_HCurve2dTool::Bezier;
%rename(bspline) BRepBlend_HCurve2dTool::BSpline;
%rename(nbsamples) BRepBlend_HCurve2dTool::NbSamples;
%rename(firstparameter) BRepBlend_HCurveTool::FirstParameter;
%rename(lastparameter) BRepBlend_HCurveTool::LastParameter;
%rename(continuity) BRepBlend_HCurveTool::Continuity;
%rename(nbintervals) BRepBlend_HCurveTool::NbIntervals;
%rename(intervals) BRepBlend_HCurveTool::Intervals;
%rename(isclosed) BRepBlend_HCurveTool::IsClosed;
%rename(isperiodic) BRepBlend_HCurveTool::IsPeriodic;
%rename(period) BRepBlend_HCurveTool::Period;
%rename(value) BRepBlend_HCurveTool::Value;
%rename(d0) BRepBlend_HCurveTool::D0;
%rename(d1) BRepBlend_HCurveTool::D1;
%rename(d2) BRepBlend_HCurveTool::D2;
%rename(d3) BRepBlend_HCurveTool::D3;
%rename(dn) BRepBlend_HCurveTool::DN;
%rename(resolution) BRepBlend_HCurveTool::Resolution;
%rename(gettype) BRepBlend_HCurveTool::GetType;
%rename(line) BRepBlend_HCurveTool::Line;
%rename(circle) BRepBlend_HCurveTool::Circle;
%rename(ellipse) BRepBlend_HCurveTool::Ellipse;
%rename(hyperbola) BRepBlend_HCurveTool::Hyperbola;
%rename(parabola) BRepBlend_HCurveTool::Parabola;
%rename(bezier) BRepBlend_HCurveTool::Bezier;
%rename(bspline) BRepBlend_HCurveTool::BSpline;
%rename(nbsamples) BRepBlend_HCurveTool::NbSamples;
%rename(firstuparameter) BRepBlend_HSurfaceTool::FirstUParameter;
%rename(firstvparameter) BRepBlend_HSurfaceTool::FirstVParameter;
%rename(lastuparameter) BRepBlend_HSurfaceTool::LastUParameter;
%rename(lastvparameter) BRepBlend_HSurfaceTool::LastVParameter;
%rename(nbuintervals) BRepBlend_HSurfaceTool::NbUIntervals;
%rename(nbvintervals) BRepBlend_HSurfaceTool::NbVIntervals;
%rename(uintervals) BRepBlend_HSurfaceTool::UIntervals;
%rename(vintervals) BRepBlend_HSurfaceTool::VIntervals;
%rename(utrim) BRepBlend_HSurfaceTool::UTrim;
%rename(vtrim) BRepBlend_HSurfaceTool::VTrim;
%rename(isuclosed) BRepBlend_HSurfaceTool::IsUClosed;
%rename(isvclosed) BRepBlend_HSurfaceTool::IsVClosed;
%rename(isuperiodic) BRepBlend_HSurfaceTool::IsUPeriodic;
%rename(uperiod) BRepBlend_HSurfaceTool::UPeriod;
%rename(isvperiodic) BRepBlend_HSurfaceTool::IsVPeriodic;
%rename(vperiod) BRepBlend_HSurfaceTool::VPeriod;
%rename(value) BRepBlend_HSurfaceTool::Value;
%rename(d0) BRepBlend_HSurfaceTool::D0;
%rename(d1) BRepBlend_HSurfaceTool::D1;
%rename(d2) BRepBlend_HSurfaceTool::D2;
%rename(d3) BRepBlend_HSurfaceTool::D3;
%rename(dn) BRepBlend_HSurfaceTool::DN;
%rename(uresolution) BRepBlend_HSurfaceTool::UResolution;
%rename(vresolution) BRepBlend_HSurfaceTool::VResolution;
%rename(gettype) BRepBlend_HSurfaceTool::GetType;
%rename(plane) BRepBlend_HSurfaceTool::Plane;
%rename(cylinder) BRepBlend_HSurfaceTool::Cylinder;
%rename(cone) BRepBlend_HSurfaceTool::Cone;
%rename(torus) BRepBlend_HSurfaceTool::Torus;
%rename(sphere) BRepBlend_HSurfaceTool::Sphere;
%rename(bezier) BRepBlend_HSurfaceTool::Bezier;
%rename(bspline) BRepBlend_HSurfaceTool::BSpline;
%rename(axeofrevolution) BRepBlend_HSurfaceTool::AxeOfRevolution;
%rename(direction) BRepBlend_HSurfaceTool::Direction;
%rename(basiscurve) BRepBlend_HSurfaceTool::BasisCurve;
%rename(nbsamplesu) BRepBlend_HSurfaceTool::NbSamplesU;
%rename(nbsamplesv) BRepBlend_HSurfaceTool::NbSamplesV;
%rename(nbsamplesu) BRepBlend_HSurfaceTool::NbSamplesU;
%rename(nbsamplesv) BRepBlend_HSurfaceTool::NbSamplesV;
%rename(project) BRepBlend_BlendTool::Project;
%rename(inters) BRepBlend_BlendTool::Inters;
%rename(parameter) BRepBlend_BlendTool::Parameter;
%rename(tolerance) BRepBlend_BlendTool::Tolerance;
%rename(singularonumin) BRepBlend_BlendTool::SingularOnUMin;
%rename(singularonumax) BRepBlend_BlendTool::SingularOnUMax;
%rename(singularonvmin) BRepBlend_BlendTool::SingularOnVMin;
%rename(singularonvmax) BRepBlend_BlendTool::SingularOnVMax;
%rename(nbsamplesu) BRepBlend_BlendTool::NbSamplesU;
%rename(nbsamplesv) BRepBlend_BlendTool::NbSamplesV;
%rename(bounds) BRepBlend_BlendTool::Bounds;
%rename(curveonsurf) BRepBlend_BlendTool::CurveOnSurf;
