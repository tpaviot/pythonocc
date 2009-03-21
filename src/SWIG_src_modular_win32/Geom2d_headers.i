/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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

*/
%{

// Headers necessary to define wrapped classes.

#include<Geom2d_AxisPlacement.hxx>
#include<Geom2d_BSplineCurve.hxx>
#include<Geom2d_BezierCurve.hxx>
#include<Geom2d_BoundedCurve.hxx>
#include<Geom2d_CartesianPoint.hxx>
#include<Geom2d_Circle.hxx>
#include<Geom2d_Conic.hxx>
#include<Geom2d_Curve.hxx>
#include<Geom2d_Direction.hxx>
#include<Geom2d_Ellipse.hxx>
#include<Geom2d_Geometry.hxx>
#include<Geom2d_Hyperbola.hxx>
#include<Geom2d_Line.hxx>
#include<Geom2d_OffsetCurve.hxx>
#include<Geom2d_Parabola.hxx>
#include<Geom2d_Point.hxx>
#include<Geom2d_Transformation.hxx>
#include<Geom2d_TrimmedCurve.hxx>
#include<Geom2d_UndefinedDerivative.hxx>
#include<Geom2d_UndefinedValue.hxx>
#include<Geom2d_Vector.hxx>
#include<Geom2d_VectorWithMagnitude.hxx>
#include<Handle_Geom2d_AxisPlacement.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<Handle_Geom2d_BezierCurve.hxx>
#include<Handle_Geom2d_BoundedCurve.hxx>
#include<Handle_Geom2d_CartesianPoint.hxx>
#include<Handle_Geom2d_Circle.hxx>
#include<Handle_Geom2d_Conic.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Geom2d_Direction.hxx>
#include<Handle_Geom2d_Ellipse.hxx>
#include<Handle_Geom2d_Geometry.hxx>
#include<Handle_Geom2d_Hyperbola.hxx>
#include<Handle_Geom2d_Line.hxx>
#include<Handle_Geom2d_OffsetCurve.hxx>
#include<Handle_Geom2d_Parabola.hxx>
#include<Handle_Geom2d_Point.hxx>
#include<Handle_Geom2d_Transformation.hxx>
#include<Handle_Geom2d_TrimmedCurve.hxx>
#include<Handle_Geom2d_UndefinedDerivative.hxx>
#include<Handle_Geom2d_UndefinedValue.hxx>
#include<Handle_Geom2d_Vector.hxx>
#include<Handle_Geom2d_VectorWithMagnitude.hxx>

// Additional headers necessary for compilation.

#include<GProp.hxx>
#include<GProp_CelGProps.hxx>
#include<GProp_EquaType.hxx>
#include<GProp_GProps.hxx>
#include<GProp_PEquation.hxx>
#include<GProp_PGProps.hxx>
#include<GProp_PrincipalProps.hxx>
#include<GProp_SelGProps.hxx>
#include<GProp_UndefinedAxis.hxx>
#include<GProp_ValueType.hxx>
#include<GProp_VelGProps.hxx>
#include<gp.hxx>
#include<gp_Ax1.hxx>
#include<gp_Ax2.hxx>
#include<gp_Ax22d.hxx>
#include<gp_Ax2d.hxx>
#include<gp_Ax3.hxx>
#include<gp_Circ.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Cone.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Dir.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Elips.hxx>
#include<gp_Elips2d.hxx>
#include<gp_GTrsf.hxx>
#include<gp_GTrsf2d.hxx>
#include<gp_Hypr.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Lin.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Mat.hxx>
#include<gp_Mat2d.hxx>
#include<gp_Parab.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Pln.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<gp_Trsf.hxx>
#include<gp_Trsf2d.hxx>
#include<gp_TrsfForm.hxx>
#include<gp_Vec.hxx>
#include<gp_Vec2d.hxx>
#include<gp_VectorWithNullMagnitude.hxx>
#include<gp_XY.hxx>
#include<gp_XYZ.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Ax2d.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Trsf2d.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Ax22d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Parab2d.hxx>
#include<Standard_SStream.hxx>
#include<gp_Hypr2d.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Elips2d.hxx>
%}
