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
%rename(DownCast) Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg::DownCast;
%rename(DownCast) Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt::DownCast;
%rename(Bounding) IntCurveSurface_ThePolyhedronToolOfHInter::Bounding;
%rename(ComponentsBounding) IntCurveSurface_ThePolyhedronToolOfHInter::ComponentsBounding;
%rename(DeflectionOverEstimation) IntCurveSurface_ThePolyhedronToolOfHInter::DeflectionOverEstimation;
%rename(NbTriangles) IntCurveSurface_ThePolyhedronToolOfHInter::NbTriangles;
%rename(Triangle) IntCurveSurface_ThePolyhedronToolOfHInter::Triangle;
%rename(Point) IntCurveSurface_ThePolyhedronToolOfHInter::Point;
%rename(TriConnex) IntCurveSurface_ThePolyhedronToolOfHInter::TriConnex;
%rename(IsOnBound) IntCurveSurface_ThePolyhedronToolOfHInter::IsOnBound;
%rename(GetBorderDeflection) IntCurveSurface_ThePolyhedronToolOfHInter::GetBorderDeflection;
%rename(Dump) IntCurveSurface_ThePolyhedronToolOfHInter::Dump;
%rename(Bounding) IntCurveSurface_ThePolygonToolOfHInter::Bounding;
%rename(DeflectionOverEstimation) IntCurveSurface_ThePolygonToolOfHInter::DeflectionOverEstimation;
%rename(Closed) IntCurveSurface_ThePolygonToolOfHInter::Closed;
%rename(NbSegments) IntCurveSurface_ThePolygonToolOfHInter::NbSegments;
%rename(BeginOfSeg) IntCurveSurface_ThePolygonToolOfHInter::BeginOfSeg;
%rename(EndOfSeg) IntCurveSurface_ThePolygonToolOfHInter::EndOfSeg;
%rename(Dump) IntCurveSurface_ThePolygonToolOfHInter::Dump;
%rename(FirstParameter) IntCurveSurface_TheHCurveTool::FirstParameter;
%rename(LastParameter) IntCurveSurface_TheHCurveTool::LastParameter;
%rename(Continuity) IntCurveSurface_TheHCurveTool::Continuity;
%rename(NbIntervals) IntCurveSurface_TheHCurveTool::NbIntervals;
%rename(Intervals) IntCurveSurface_TheHCurveTool::Intervals;
%rename(IsClosed) IntCurveSurface_TheHCurveTool::IsClosed;
%rename(IsPeriodic) IntCurveSurface_TheHCurveTool::IsPeriodic;
%rename(Period) IntCurveSurface_TheHCurveTool::Period;
%rename(Value) IntCurveSurface_TheHCurveTool::Value;
%rename(D0) IntCurveSurface_TheHCurveTool::D0;
%rename(D1) IntCurveSurface_TheHCurveTool::D1;
%rename(D2) IntCurveSurface_TheHCurveTool::D2;
%rename(D3) IntCurveSurface_TheHCurveTool::D3;
%rename(DN) IntCurveSurface_TheHCurveTool::DN;
%rename(Resolution) IntCurveSurface_TheHCurveTool::Resolution;
%rename(GetType) IntCurveSurface_TheHCurveTool::GetType;
%rename(Line) IntCurveSurface_TheHCurveTool::Line;
%rename(Circle) IntCurveSurface_TheHCurveTool::Circle;
%rename(Ellipse) IntCurveSurface_TheHCurveTool::Ellipse;
%rename(Hyperbola) IntCurveSurface_TheHCurveTool::Hyperbola;
%rename(Parabola) IntCurveSurface_TheHCurveTool::Parabola;
%rename(Bezier) IntCurveSurface_TheHCurveTool::Bezier;
%rename(BSpline) IntCurveSurface_TheHCurveTool::BSpline;
%rename(NbSamples) IntCurveSurface_TheHCurveTool::NbSamples;
%rename(SamplePars) IntCurveSurface_TheHCurveTool::SamplePars;
