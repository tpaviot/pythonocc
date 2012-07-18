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
%rename(DownCast) Handle_Adaptor3d_HSurface::DownCast;
%rename(DownCast) Handle_Adaptor3d_HSurfaceOfLinearExtrusion::DownCast;
%rename(DownCast) Handle_Adaptor3d_HSurfaceOfRevolution::DownCast;
%rename(DownCast) Handle_Adaptor3d_HOffsetCurve::DownCast;
%rename(DownCast) Handle_Adaptor3d_HCurve::DownCast;
%rename(DownCast) Handle_Adaptor3d_HIsoCurve::DownCast;
%rename(DownCast) Handle_Adaptor3d_HVertex::DownCast;
%rename(DownCast) Handle_Adaptor3d_HCurveOnSurface::DownCast;
%rename(DownCast) Handle_Adaptor3d_TopolTool::DownCast;
%rename(FirstUParameter) Adaptor3d_HSurfaceTool::FirstUParameter;
%rename(FirstVParameter) Adaptor3d_HSurfaceTool::FirstVParameter;
%rename(LastUParameter) Adaptor3d_HSurfaceTool::LastUParameter;
%rename(LastVParameter) Adaptor3d_HSurfaceTool::LastVParameter;
%rename(NbUIntervals) Adaptor3d_HSurfaceTool::NbUIntervals;
%rename(NbVIntervals) Adaptor3d_HSurfaceTool::NbVIntervals;
%rename(UIntervals) Adaptor3d_HSurfaceTool::UIntervals;
%rename(VIntervals) Adaptor3d_HSurfaceTool::VIntervals;
%rename(UTrim) Adaptor3d_HSurfaceTool::UTrim;
%rename(VTrim) Adaptor3d_HSurfaceTool::VTrim;
%rename(IsUClosed) Adaptor3d_HSurfaceTool::IsUClosed;
%rename(IsVClosed) Adaptor3d_HSurfaceTool::IsVClosed;
%rename(IsUPeriodic) Adaptor3d_HSurfaceTool::IsUPeriodic;
%rename(UPeriod) Adaptor3d_HSurfaceTool::UPeriod;
%rename(IsVPeriodic) Adaptor3d_HSurfaceTool::IsVPeriodic;
%rename(VPeriod) Adaptor3d_HSurfaceTool::VPeriod;
%rename(Value) Adaptor3d_HSurfaceTool::Value;
%rename(D0) Adaptor3d_HSurfaceTool::D0;
%rename(D1) Adaptor3d_HSurfaceTool::D1;
%rename(D2) Adaptor3d_HSurfaceTool::D2;
%rename(D3) Adaptor3d_HSurfaceTool::D3;
%rename(DN) Adaptor3d_HSurfaceTool::DN;
%rename(UResolution) Adaptor3d_HSurfaceTool::UResolution;
%rename(VResolution) Adaptor3d_HSurfaceTool::VResolution;
%rename(GetType) Adaptor3d_HSurfaceTool::GetType;
%rename(Plane) Adaptor3d_HSurfaceTool::Plane;
%rename(Cylinder) Adaptor3d_HSurfaceTool::Cylinder;
%rename(Cone) Adaptor3d_HSurfaceTool::Cone;
%rename(Torus) Adaptor3d_HSurfaceTool::Torus;
%rename(Sphere) Adaptor3d_HSurfaceTool::Sphere;
%rename(Bezier) Adaptor3d_HSurfaceTool::Bezier;
%rename(BSpline) Adaptor3d_HSurfaceTool::BSpline;
%rename(AxeOfRevolution) Adaptor3d_HSurfaceTool::AxeOfRevolution;
%rename(Direction) Adaptor3d_HSurfaceTool::Direction;
%rename(BasisCurve) Adaptor3d_HSurfaceTool::BasisCurve;
%rename(BasisSurface) Adaptor3d_HSurfaceTool::BasisSurface;
%rename(OffsetValue) Adaptor3d_HSurfaceTool::OffsetValue;
%rename(NbSamplesU) Adaptor3d_HSurfaceTool::NbSamplesU;
%rename(NbSamplesV) Adaptor3d_HSurfaceTool::NbSamplesV;
