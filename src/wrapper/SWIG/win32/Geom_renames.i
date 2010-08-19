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
%rename(downcast) Handle_Geom_UndefinedValue::DownCast;
%rename(downcast) Handle_Geom_Geometry::DownCast;
%rename(downcast) Handle_Geom_Surface::DownCast;
%rename(downcast) Handle_Geom_SweptSurface::DownCast;
%rename(downcast) Handle_Geom_SurfaceOfRevolution::DownCast;
%rename(downcast) Handle_Geom_Vector::DownCast;
%rename(downcast) Handle_Geom_VectorWithMagnitude::DownCast;
%rename(downcast) Handle_Geom_ElementarySurface::DownCast;
%rename(downcast) Handle_Geom_ToroidalSurface::DownCast;
%rename(downcast) Handle_Geom_Curve::DownCast;
%rename(downcast) Handle_Geom_Conic::DownCast;
%rename(downcast) Handle_Geom_Parabola::DownCast;
%rename(downcast) Handle_Geom_BoundedCurve::DownCast;
%rename(downcast) Handle_Geom_AxisPlacement::DownCast;
%rename(downcast) Handle_Geom_Axis1Placement::DownCast;
%rename(downcast) Handle_Geom_SequenceNodeOfSequenceOfSurface::DownCast;
%rename(downcast) Handle_Geom_Circle::DownCast;
%rename(downcast) Handle_Geom_Line::DownCast;
%rename(downcast) Handle_Geom_TrimmedCurve::DownCast;
%rename(downcast) Handle_Geom_Point::DownCast;
%rename(downcast) Handle_Geom_ConicalSurface::DownCast;
%rename(downcast) Handle_Geom_BoundedSurface::DownCast;
%rename(downcast) Handle_Geom_RectangularTrimmedSurface::DownCast;
%rename(downcast) Handle_Geom_BezierSurface::DownCast;
%rename(downcast) Handle_Geom_HSequenceOfBSplineSurface::DownCast;
%rename(downcast) Handle_Geom_Transformation::DownCast;
%rename(downcast) Handle_Geom_SurfaceOfLinearExtrusion::DownCast;
%rename(downcast) Handle_Geom_SphericalSurface::DownCast;
%rename(downcast) Handle_Geom_CartesianPoint::DownCast;
%rename(downcast) Handle_Geom_BSplineSurface::DownCast;
%rename(downcast) Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface::DownCast;
%rename(downcast) Handle_Geom_OffsetCurve::DownCast;
%rename(downcast) Handle_Geom_OffsetSurface::DownCast;
%rename(downcast) Handle_Geom_BSplineCurve::DownCast;
%rename(downcast) Handle_Geom_Direction::DownCast;
%rename(downcast) Handle_Geom_CylindricalSurface::DownCast;
%rename(downcast) Handle_Geom_HSequenceOfSurface::DownCast;
%rename(downcast) Handle_Geom_BezierCurve::DownCast;
%rename(downcast) Handle_Geom_UndefinedDerivative::DownCast;
%rename(downcast) Handle_Geom_Hyperbola::DownCast;
%rename(downcast) Handle_Geom_Axis2Placement::DownCast;
%rename(downcast) Handle_Geom_Ellipse::DownCast;
%rename(downcast) Handle_Geom_Plane::DownCast;
%rename(maxdegree) Geom_BezierSurface::MaxDegree;
%rename(raise) Geom_UndefinedValue::Raise;
%rename(raise) Geom_UndefinedValue::Raise;
%rename(newinstance) Geom_UndefinedValue::NewInstance;
%rename(raise) Geom_UndefinedDerivative::Raise;
%rename(raise) Geom_UndefinedDerivative::Raise;
%rename(newinstance) Geom_UndefinedDerivative::NewInstance;
%rename(maxdegree) Geom_BSplineCurve::MaxDegree;
%rename(maxdegree) Geom_BezierCurve::MaxDegree;
%rename(maxdegree) Geom_BSplineSurface::MaxDegree;
