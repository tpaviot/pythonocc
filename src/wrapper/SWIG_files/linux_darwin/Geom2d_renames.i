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
%rename(DownCast) Handle_Geom2d_Geometry::DownCast;
%rename(DownCast) Handle_Geom2d_Curve::DownCast;
%rename(DownCast) Handle_Geom2d_Conic::DownCast;
%rename(DownCast) Handle_Geom2d_Circle::DownCast;
%rename(DownCast) Handle_Geom2d_Vector::DownCast;
%rename(DownCast) Handle_Geom2d_BoundedCurve::DownCast;
%rename(DownCast) Handle_Geom2d_Parabola::DownCast;
%rename(DownCast) Handle_Geom2d_OffsetCurve::DownCast;
%rename(DownCast) Handle_Geom2d_Transformation::DownCast;
%rename(DownCast) Handle_Geom2d_UndefinedDerivative::DownCast;
%rename(DownCast) Handle_Geom2d_Point::DownCast;
%rename(DownCast) Handle_Geom2d_Hyperbola::DownCast;
%rename(DownCast) Handle_Geom2d_Ellipse::DownCast;
%rename(DownCast) Handle_Geom2d_BezierCurve::DownCast;
%rename(DownCast) Handle_Geom2d_UndefinedValue::DownCast;
%rename(DownCast) Handle_Geom2d_Line::DownCast;
%rename(DownCast) Handle_Geom2d_AxisPlacement::DownCast;
%rename(DownCast) Handle_Geom2d_VectorWithMagnitude::DownCast;
%rename(DownCast) Handle_Geom2d_BSplineCurve::DownCast;
%rename(DownCast) Handle_Geom2d_Direction::DownCast;
%rename(DownCast) Handle_Geom2d_CartesianPoint::DownCast;
%rename(DownCast) Handle_Geom2d_TrimmedCurve::DownCast;
%rename(Raise) Geom2d_UndefinedValue::Raise;
%rename(NewInstance) Geom2d_UndefinedValue::NewInstance;
%rename(Raise) Geom2d_UndefinedDerivative::Raise;
%rename(NewInstance) Geom2d_UndefinedDerivative::NewInstance;
%rename(MaxDegree) Geom2d_BSplineCurve::MaxDegree;
%rename(MaxDegree) Geom2d_BezierCurve::MaxDegree;
