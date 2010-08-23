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
%rename(downcast) Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg::DownCast;
%rename(downcast) Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt::DownCast;
%rename(bounding) IntCurveSurface_ThePolyhedronToolOfHInter::Bounding;
%rename(componentsbounding) IntCurveSurface_ThePolyhedronToolOfHInter::ComponentsBounding;
%rename(deflectionoverestimation) IntCurveSurface_ThePolyhedronToolOfHInter::DeflectionOverEstimation;
%rename(nbtriangles) IntCurveSurface_ThePolyhedronToolOfHInter::NbTriangles;
%rename(triangle) IntCurveSurface_ThePolyhedronToolOfHInter::Triangle;
%rename(point) IntCurveSurface_ThePolyhedronToolOfHInter::Point;
%rename(triconnex) IntCurveSurface_ThePolyhedronToolOfHInter::TriConnex;
%rename(isonbound) IntCurveSurface_ThePolyhedronToolOfHInter::IsOnBound;
%rename(getborderdeflection) IntCurveSurface_ThePolyhedronToolOfHInter::GetBorderDeflection;
%rename(dump) IntCurveSurface_ThePolyhedronToolOfHInter::Dump;
%rename(firstparameter) IntCurveSurface_TheHCurveTool::FirstParameter;
%rename(lastparameter) IntCurveSurface_TheHCurveTool::LastParameter;
%rename(continuity) IntCurveSurface_TheHCurveTool::Continuity;
%rename(nbintervals) IntCurveSurface_TheHCurveTool::NbIntervals;
%rename(intervals) IntCurveSurface_TheHCurveTool::Intervals;
%rename(isclosed) IntCurveSurface_TheHCurveTool::IsClosed;
%rename(isperiodic) IntCurveSurface_TheHCurveTool::IsPeriodic;
%rename(period) IntCurveSurface_TheHCurveTool::Period;
%rename(value) IntCurveSurface_TheHCurveTool::Value;
%rename(d0) IntCurveSurface_TheHCurveTool::D0;
%rename(d1) IntCurveSurface_TheHCurveTool::D1;
%rename(d2) IntCurveSurface_TheHCurveTool::D2;
%rename(d3) IntCurveSurface_TheHCurveTool::D3;
%rename(dn) IntCurveSurface_TheHCurveTool::DN;
%rename(resolution) IntCurveSurface_TheHCurveTool::Resolution;
%rename(gettype) IntCurveSurface_TheHCurveTool::GetType;
%rename(line) IntCurveSurface_TheHCurveTool::Line;
%rename(circle) IntCurveSurface_TheHCurveTool::Circle;
%rename(ellipse) IntCurveSurface_TheHCurveTool::Ellipse;
%rename(hyperbola) IntCurveSurface_TheHCurveTool::Hyperbola;
%rename(parabola) IntCurveSurface_TheHCurveTool::Parabola;
%rename(bezier) IntCurveSurface_TheHCurveTool::Bezier;
%rename(bspline) IntCurveSurface_TheHCurveTool::BSpline;
%rename(nbsamples) IntCurveSurface_TheHCurveTool::NbSamples;
%rename(samplepars) IntCurveSurface_TheHCurveTool::SamplePars;
%rename(firstuparameter) IntCurveSurface_TheHSurfaceTool::FirstUParameter;
%rename(firstvparameter) IntCurveSurface_TheHSurfaceTool::FirstVParameter;
%rename(lastuparameter) IntCurveSurface_TheHSurfaceTool::LastUParameter;
%rename(lastvparameter) IntCurveSurface_TheHSurfaceTool::LastVParameter;
%rename(nbuintervals) IntCurveSurface_TheHSurfaceTool::NbUIntervals;
%rename(nbvintervals) IntCurveSurface_TheHSurfaceTool::NbVIntervals;
%rename(uintervals) IntCurveSurface_TheHSurfaceTool::UIntervals;
%rename(vintervals) IntCurveSurface_TheHSurfaceTool::VIntervals;
%rename(utrim) IntCurveSurface_TheHSurfaceTool::UTrim;
%rename(vtrim) IntCurveSurface_TheHSurfaceTool::VTrim;
%rename(isuclosed) IntCurveSurface_TheHSurfaceTool::IsUClosed;
%rename(isvclosed) IntCurveSurface_TheHSurfaceTool::IsVClosed;
%rename(isuperiodic) IntCurveSurface_TheHSurfaceTool::IsUPeriodic;
%rename(uperiod) IntCurveSurface_TheHSurfaceTool::UPeriod;
%rename(isvperiodic) IntCurveSurface_TheHSurfaceTool::IsVPeriodic;
%rename(vperiod) IntCurveSurface_TheHSurfaceTool::VPeriod;
%rename(value) IntCurveSurface_TheHSurfaceTool::Value;
%rename(d0) IntCurveSurface_TheHSurfaceTool::D0;
%rename(d1) IntCurveSurface_TheHSurfaceTool::D1;
%rename(d2) IntCurveSurface_TheHSurfaceTool::D2;
%rename(d3) IntCurveSurface_TheHSurfaceTool::D3;
%rename(dn) IntCurveSurface_TheHSurfaceTool::DN;
%rename(uresolution) IntCurveSurface_TheHSurfaceTool::UResolution;
%rename(vresolution) IntCurveSurface_TheHSurfaceTool::VResolution;
%rename(gettype) IntCurveSurface_TheHSurfaceTool::GetType;
%rename(plane) IntCurveSurface_TheHSurfaceTool::Plane;
%rename(cylinder) IntCurveSurface_TheHSurfaceTool::Cylinder;
%rename(cone) IntCurveSurface_TheHSurfaceTool::Cone;
%rename(torus) IntCurveSurface_TheHSurfaceTool::Torus;
%rename(sphere) IntCurveSurface_TheHSurfaceTool::Sphere;
%rename(bezier) IntCurveSurface_TheHSurfaceTool::Bezier;
%rename(bspline) IntCurveSurface_TheHSurfaceTool::BSpline;
%rename(axeofrevolution) IntCurveSurface_TheHSurfaceTool::AxeOfRevolution;
%rename(direction) IntCurveSurface_TheHSurfaceTool::Direction;
%rename(basiscurve) IntCurveSurface_TheHSurfaceTool::BasisCurve;
%rename(basissurface) IntCurveSurface_TheHSurfaceTool::BasisSurface;
%rename(offsetvalue) IntCurveSurface_TheHSurfaceTool::OffsetValue;
%rename(nbsamplesu) IntCurveSurface_TheHSurfaceTool::NbSamplesU;
%rename(nbsamplesv) IntCurveSurface_TheHSurfaceTool::NbSamplesV;
%rename(bounding) IntCurveSurface_ThePolygonToolOfHInter::Bounding;
%rename(deflectionoverestimation) IntCurveSurface_ThePolygonToolOfHInter::DeflectionOverEstimation;
%rename(closed) IntCurveSurface_ThePolygonToolOfHInter::Closed;
%rename(nbsegments) IntCurveSurface_ThePolygonToolOfHInter::NbSegments;
%rename(beginofseg) IntCurveSurface_ThePolygonToolOfHInter::BeginOfSeg;
%rename(endofseg) IntCurveSurface_ThePolygonToolOfHInter::EndOfSeg;
%rename(dump) IntCurveSurface_ThePolygonToolOfHInter::Dump;
