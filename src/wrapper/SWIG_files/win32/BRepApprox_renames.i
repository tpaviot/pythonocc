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
%rename(DownCast) Handle_BRepApprox_ApproxLine::DownCast;
%rename(FirstPoint) BRepApprox_TheMultiLineToolOfApprox::FirstPoint;
%rename(LastPoint) BRepApprox_TheMultiLineToolOfApprox::LastPoint;
%rename(NbP2d) BRepApprox_TheMultiLineToolOfApprox::NbP2d;
%rename(NbP3d) BRepApprox_TheMultiLineToolOfApprox::NbP3d;
%rename(Value) BRepApprox_TheMultiLineToolOfApprox::Value;
%rename(Tangency) BRepApprox_TheMultiLineToolOfApprox::Tangency;
%rename(Curvature) BRepApprox_TheMultiLineToolOfApprox::Curvature;
%rename(MakeMLBetween) BRepApprox_TheMultiLineToolOfApprox::MakeMLBetween;
%rename(WhatStatus) BRepApprox_TheMultiLineToolOfApprox::WhatStatus;
%rename(FirstUParameter) BRepApprox_SurfaceTool::FirstUParameter;
%rename(FirstVParameter) BRepApprox_SurfaceTool::FirstVParameter;
%rename(LastUParameter) BRepApprox_SurfaceTool::LastUParameter;
%rename(LastVParameter) BRepApprox_SurfaceTool::LastVParameter;
%rename(NbUIntervals) BRepApprox_SurfaceTool::NbUIntervals;
%rename(NbVIntervals) BRepApprox_SurfaceTool::NbVIntervals;
%rename(UIntervals) BRepApprox_SurfaceTool::UIntervals;
%rename(VIntervals) BRepApprox_SurfaceTool::VIntervals;
%rename(UTrim) BRepApprox_SurfaceTool::UTrim;
%rename(VTrim) BRepApprox_SurfaceTool::VTrim;
%rename(IsUClosed) BRepApprox_SurfaceTool::IsUClosed;
%rename(IsVClosed) BRepApprox_SurfaceTool::IsVClosed;
%rename(IsUPeriodic) BRepApprox_SurfaceTool::IsUPeriodic;
%rename(UPeriod) BRepApprox_SurfaceTool::UPeriod;
%rename(IsVPeriodic) BRepApprox_SurfaceTool::IsVPeriodic;
%rename(VPeriod) BRepApprox_SurfaceTool::VPeriod;
%rename(Value) BRepApprox_SurfaceTool::Value;
%rename(D0) BRepApprox_SurfaceTool::D0;
%rename(D1) BRepApprox_SurfaceTool::D1;
%rename(D2) BRepApprox_SurfaceTool::D2;
%rename(D3) BRepApprox_SurfaceTool::D3;
%rename(DN) BRepApprox_SurfaceTool::DN;
%rename(UResolution) BRepApprox_SurfaceTool::UResolution;
%rename(VResolution) BRepApprox_SurfaceTool::VResolution;
%rename(GetType) BRepApprox_SurfaceTool::GetType;
%rename(Plane) BRepApprox_SurfaceTool::Plane;
%rename(Cylinder) BRepApprox_SurfaceTool::Cylinder;
%rename(Cone) BRepApprox_SurfaceTool::Cone;
%rename(Torus) BRepApprox_SurfaceTool::Torus;
%rename(Sphere) BRepApprox_SurfaceTool::Sphere;
%rename(Bezier) BRepApprox_SurfaceTool::Bezier;
%rename(BSpline) BRepApprox_SurfaceTool::BSpline;
%rename(AxeOfRevolution) BRepApprox_SurfaceTool::AxeOfRevolution;
%rename(Direction) BRepApprox_SurfaceTool::Direction;
%rename(BasisCurve) BRepApprox_SurfaceTool::BasisCurve;
%rename(NbSamplesU) BRepApprox_SurfaceTool::NbSamplesU;
%rename(NbSamplesV) BRepApprox_SurfaceTool::NbSamplesV;
