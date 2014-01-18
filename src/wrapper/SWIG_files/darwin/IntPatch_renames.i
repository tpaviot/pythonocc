/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/
%rename(DownCast) Handle_IntPatch_SequenceNodeOfSequenceOfIWLineOfTheIWalking::DownCast;
%rename(DownCast) Handle_IntPatch_Line::DownCast;
%rename(DownCast) Handle_IntPatch_ALine::DownCast;
%rename(DownCast) Handle_IntPatch_TheIWLineOfTheIWalking::DownCast;
%rename(DownCast) Handle_IntPatch_GLine::DownCast;
%rename(DownCast) Handle_IntPatch_SequenceNodeOfSequenceOfPathPointOfTheSOnBounds::DownCast;
%rename(DownCast) Handle_IntPatch_WLine::DownCast;
%rename(DownCast) Handle_IntPatch_RLine::DownCast;
%rename(DownCast) Handle_IntPatch_SequenceNodeOfSequenceOfPoint::DownCast;
%rename(DownCast) Handle_IntPatch_SequenceNodeOfSequenceOfSegmentOfTheSOnBounds::DownCast;
%rename(DownCast) Handle_IntPatch_SequenceNodeOfSequenceOfLine::DownCast;
%rename(PutVertexOnLine) IntPatch_RstInt::PutVertexOnLine;
%rename(FirstParameter) IntPatch_HCurve2dTool::FirstParameter;
%rename(LastParameter) IntPatch_HCurve2dTool::LastParameter;
%rename(Continuity) IntPatch_HCurve2dTool::Continuity;
%rename(NbIntervals) IntPatch_HCurve2dTool::NbIntervals;
%rename(Intervals) IntPatch_HCurve2dTool::Intervals;
%rename(IsClosed) IntPatch_HCurve2dTool::IsClosed;
%rename(IsPeriodic) IntPatch_HCurve2dTool::IsPeriodic;
%rename(Period) IntPatch_HCurve2dTool::Period;
%rename(Value) IntPatch_HCurve2dTool::Value;
%rename(D0) IntPatch_HCurve2dTool::D0;
%rename(D1) IntPatch_HCurve2dTool::D1;
%rename(D2) IntPatch_HCurve2dTool::D2;
%rename(D3) IntPatch_HCurve2dTool::D3;
%rename(DN) IntPatch_HCurve2dTool::DN;
%rename(Resolution) IntPatch_HCurve2dTool::Resolution;
%rename(GetType) IntPatch_HCurve2dTool::GetType;
%rename(Line) IntPatch_HCurve2dTool::Line;
%rename(Circle) IntPatch_HCurve2dTool::Circle;
%rename(Ellipse) IntPatch_HCurve2dTool::Ellipse;
%rename(Hyperbola) IntPatch_HCurve2dTool::Hyperbola;
%rename(Parabola) IntPatch_HCurve2dTool::Parabola;
%rename(Bezier) IntPatch_HCurve2dTool::Bezier;
%rename(BSpline) IntPatch_HCurve2dTool::BSpline;
%rename(NbSamples) IntPatch_HCurve2dTool::NbSamples;
%rename(Bounding) IntPatch_PolyhedronTool::Bounding;
%rename(ComponentsBounding) IntPatch_PolyhedronTool::ComponentsBounding;
%rename(DeflectionOverEstimation) IntPatch_PolyhedronTool::DeflectionOverEstimation;
%rename(NbTriangles) IntPatch_PolyhedronTool::NbTriangles;
%rename(Triangle) IntPatch_PolyhedronTool::Triangle;
%rename(Point) IntPatch_PolyhedronTool::Point;
%rename(TriConnex) IntPatch_PolyhedronTool::TriConnex;
%rename(SingularOnUMin) IntPatch_HInterTool::SingularOnUMin;
%rename(SingularOnUMax) IntPatch_HInterTool::SingularOnUMax;
%rename(SingularOnVMin) IntPatch_HInterTool::SingularOnVMin;
%rename(SingularOnVMax) IntPatch_HInterTool::SingularOnVMax;
%rename(NbSamplesU) IntPatch_HInterTool::NbSamplesU;
%rename(NbSamplesV) IntPatch_HInterTool::NbSamplesV;
%rename(NbSamplePoints) IntPatch_HInterTool::NbSamplePoints;
%rename(SamplePoint) IntPatch_HInterTool::SamplePoint;
%rename(HasBeenSeen) IntPatch_HInterTool::HasBeenSeen;
%rename(NbSamplesOnArc) IntPatch_HInterTool::NbSamplesOnArc;
%rename(Bounds) IntPatch_HInterTool::Bounds;
%rename(Project) IntPatch_HInterTool::Project;
%rename(Tolerance) IntPatch_HInterTool::Tolerance;
%rename(Parameter) IntPatch_HInterTool::Parameter;
%rename(NbPoints) IntPatch_HInterTool::NbPoints;
%rename(Value) IntPatch_HInterTool::Value;
%rename(IsVertex) IntPatch_HInterTool::IsVertex;
%rename(Vertex) IntPatch_HInterTool::Vertex;
%rename(NbSegments) IntPatch_HInterTool::NbSegments;
%rename(HasFirstPoint) IntPatch_HInterTool::HasFirstPoint;
%rename(HasLastPoint) IntPatch_HInterTool::HasLastPoint;
%rename(IsAllSolution) IntPatch_HInterTool::IsAllSolution;
