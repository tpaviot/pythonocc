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
%{

// Headers necessary to define wrapped classes.

#include<Handle_PGeom2d_AxisPlacement.hxx>
#include<Handle_PGeom2d_BSplineCurve.hxx>
#include<Handle_PGeom2d_BezierCurve.hxx>
#include<Handle_PGeom2d_BoundedCurve.hxx>
#include<Handle_PGeom2d_CartesianPoint.hxx>
#include<Handle_PGeom2d_Circle.hxx>
#include<Handle_PGeom2d_Conic.hxx>
#include<Handle_PGeom2d_Curve.hxx>
#include<Handle_PGeom2d_Direction.hxx>
#include<Handle_PGeom2d_Ellipse.hxx>
#include<Handle_PGeom2d_Geometry.hxx>
#include<Handle_PGeom2d_Hyperbola.hxx>
#include<Handle_PGeom2d_Line.hxx>
#include<Handle_PGeom2d_OffsetCurve.hxx>
#include<Handle_PGeom2d_Parabola.hxx>
#include<Handle_PGeom2d_Point.hxx>
#include<Handle_PGeom2d_Transformation.hxx>
#include<Handle_PGeom2d_TrimmedCurve.hxx>
#include<Handle_PGeom2d_Vector.hxx>
#include<Handle_PGeom2d_VectorWithMagnitude.hxx>
#include<PGeom2d_AxisPlacement.hxx>
#include<PGeom2d_BSplineCurve.hxx>
#include<PGeom2d_BezierCurve.hxx>
#include<PGeom2d_BoundedCurve.hxx>
#include<PGeom2d_CartesianPoint.hxx>
#include<PGeom2d_Circle.hxx>
#include<PGeom2d_Conic.hxx>
#include<PGeom2d_Curve.hxx>
#include<PGeom2d_Direction.hxx>
#include<PGeom2d_Ellipse.hxx>
#include<PGeom2d_Geometry.hxx>
#include<PGeom2d_Hyperbola.hxx>
#include<PGeom2d_Line.hxx>
#include<PGeom2d_OffsetCurve.hxx>
#include<PGeom2d_Parabola.hxx>
#include<PGeom2d_Point.hxx>
#include<PGeom2d_Transformation.hxx>
#include<PGeom2d_TrimmedCurve.hxx>
#include<PGeom2d_Vector.hxx>
#include<PGeom2d_VectorWithMagnitude.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<gp_Ax22d.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Trsf2d.hxx>
#include<Handle_PColgp_HArray1OfPnt2d.hxx>
#include<Handle_PColStd_HArray1OfReal.hxx>
#include<gp_Ax2d.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_PColStd_HArray1OfInteger.hxx>
%}
