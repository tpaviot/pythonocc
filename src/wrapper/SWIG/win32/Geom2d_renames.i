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
%rename(downcast) Handle_Geom2d_Geometry::DownCast;
%rename(downcast) Handle_Geom2d_Curve::DownCast;
%rename(downcast) Handle_Geom2d_Conic::DownCast;
%rename(downcast) Handle_Geom2d_Circle::DownCast;
%rename(downcast) Handle_Geom2d_BoundedCurve::DownCast;
%rename(downcast) Handle_Geom2d_Transformation::DownCast;
%rename(downcast) Handle_Geom2d_UndefinedDerivative::DownCast;
%rename(downcast) Handle_Geom2d_Point::DownCast;
%rename(downcast) Handle_Geom2d_CartesianPoint::DownCast;
%rename(downcast) Handle_Geom2d_Vector::DownCast;
%rename(downcast) Handle_Geom2d_Direction::DownCast;
%rename(downcast) Handle_Geom2d_TrimmedCurve::DownCast;
%rename(downcast) Handle_Geom2d_Hyperbola::DownCast;
%rename(downcast) Handle_Geom2d_Ellipse::DownCast;
%rename(downcast) Handle_Geom2d_BezierCurve::DownCast;
%rename(downcast) Handle_Geom2d_Line::DownCast;
%rename(downcast) Handle_Geom2d_OffsetCurve::DownCast;
%rename(downcast) Handle_Geom2d_AxisPlacement::DownCast;
%rename(downcast) Handle_Geom2d_UndefinedValue::DownCast;
%rename(downcast) Handle_Geom2d_VectorWithMagnitude::DownCast;
%rename(downcast) Handle_Geom2d_BSplineCurve::DownCast;
%rename(downcast) Handle_Geom2d_Parabola::DownCast;
%rename(raise) Geom2d_UndefinedDerivative::Raise;
%rename(raise) Geom2d_UndefinedDerivative::Raise;
%rename(newinstance) Geom2d_UndefinedDerivative::NewInstance;
%rename(maxdegree) Geom2d_BSplineCurve::MaxDegree;
%rename(maxdegree) Geom2d_BezierCurve::MaxDegree;
%rename(raise) Geom2d_UndefinedValue::Raise;
%rename(raise) Geom2d_UndefinedValue::Raise;
%rename(newinstance) Geom2d_UndefinedValue::NewInstance;
