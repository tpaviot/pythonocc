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
%rename(downcast) Handle_BRepApprox_ApproxLine::DownCast;
%rename(firstuparameter) BRepApprox_SurfaceTool::FirstUParameter;
%rename(firstvparameter) BRepApprox_SurfaceTool::FirstVParameter;
%rename(lastuparameter) BRepApprox_SurfaceTool::LastUParameter;
%rename(lastvparameter) BRepApprox_SurfaceTool::LastVParameter;
%rename(nbuintervals) BRepApprox_SurfaceTool::NbUIntervals;
%rename(nbvintervals) BRepApprox_SurfaceTool::NbVIntervals;
%rename(uintervals) BRepApprox_SurfaceTool::UIntervals;
%rename(vintervals) BRepApprox_SurfaceTool::VIntervals;
%rename(utrim) BRepApprox_SurfaceTool::UTrim;
%rename(vtrim) BRepApprox_SurfaceTool::VTrim;
%rename(isuclosed) BRepApprox_SurfaceTool::IsUClosed;
%rename(isvclosed) BRepApprox_SurfaceTool::IsVClosed;
%rename(isuperiodic) BRepApprox_SurfaceTool::IsUPeriodic;
%rename(uperiod) BRepApprox_SurfaceTool::UPeriod;
%rename(isvperiodic) BRepApprox_SurfaceTool::IsVPeriodic;
%rename(vperiod) BRepApprox_SurfaceTool::VPeriod;
%rename(value) BRepApprox_SurfaceTool::Value;
%rename(d0) BRepApprox_SurfaceTool::D0;
%rename(d1) BRepApprox_SurfaceTool::D1;
%rename(d2) BRepApprox_SurfaceTool::D2;
%rename(d3) BRepApprox_SurfaceTool::D3;
%rename(dn) BRepApprox_SurfaceTool::DN;
%rename(uresolution) BRepApprox_SurfaceTool::UResolution;
%rename(vresolution) BRepApprox_SurfaceTool::VResolution;
%rename(gettype) BRepApprox_SurfaceTool::GetType;
%rename(plane) BRepApprox_SurfaceTool::Plane;
%rename(cylinder) BRepApprox_SurfaceTool::Cylinder;
%rename(cone) BRepApprox_SurfaceTool::Cone;
%rename(torus) BRepApprox_SurfaceTool::Torus;
%rename(sphere) BRepApprox_SurfaceTool::Sphere;
%rename(bezier) BRepApprox_SurfaceTool::Bezier;
%rename(bspline) BRepApprox_SurfaceTool::BSpline;
%rename(axeofrevolution) BRepApprox_SurfaceTool::AxeOfRevolution;
%rename(direction) BRepApprox_SurfaceTool::Direction;
%rename(basiscurve) BRepApprox_SurfaceTool::BasisCurve;
%rename(nbsamplesu) BRepApprox_SurfaceTool::NbSamplesU;
%rename(nbsamplesv) BRepApprox_SurfaceTool::NbSamplesV;
%rename(firstpoint) BRepApprox_TheMultiLineToolOfApprox::FirstPoint;
%rename(lastpoint) BRepApprox_TheMultiLineToolOfApprox::LastPoint;
%rename(nbp2d) BRepApprox_TheMultiLineToolOfApprox::NbP2d;
%rename(nbp3d) BRepApprox_TheMultiLineToolOfApprox::NbP3d;
%rename(value) BRepApprox_TheMultiLineToolOfApprox::Value;
%rename(tangency) BRepApprox_TheMultiLineToolOfApprox::Tangency;
%rename(curvature) BRepApprox_TheMultiLineToolOfApprox::Curvature;
%rename(makemlbetween) BRepApprox_TheMultiLineToolOfApprox::MakeMLBetween;
%rename(whatstatus) BRepApprox_TheMultiLineToolOfApprox::WhatStatus;
