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

#include<Handle_PGeom_Axis1Placement.hxx>
#include<Handle_PGeom_Axis2Placement.hxx>
#include<Handle_PGeom_AxisPlacement.hxx>
#include<Handle_PGeom_BSplineCurve.hxx>
#include<Handle_PGeom_BSplineSurface.hxx>
#include<Handle_PGeom_BezierCurve.hxx>
#include<Handle_PGeom_BezierSurface.hxx>
#include<Handle_PGeom_BoundedCurve.hxx>
#include<Handle_PGeom_BoundedSurface.hxx>
#include<Handle_PGeom_CartesianPoint.hxx>
#include<Handle_PGeom_Circle.hxx>
#include<Handle_PGeom_Conic.hxx>
#include<Handle_PGeom_ConicalSurface.hxx>
#include<Handle_PGeom_Curve.hxx>
#include<Handle_PGeom_CylindricalSurface.hxx>
#include<Handle_PGeom_Direction.hxx>
#include<Handle_PGeom_ElementarySurface.hxx>
#include<Handle_PGeom_Ellipse.hxx>
#include<Handle_PGeom_Geometry.hxx>
#include<Handle_PGeom_Hyperbola.hxx>
#include<Handle_PGeom_Line.hxx>
#include<Handle_PGeom_OffsetCurve.hxx>
#include<Handle_PGeom_OffsetSurface.hxx>
#include<Handle_PGeom_Parabola.hxx>
#include<Handle_PGeom_Plane.hxx>
#include<Handle_PGeom_Point.hxx>
#include<Handle_PGeom_RectangularTrimmedSurface.hxx>
#include<Handle_PGeom_SphericalSurface.hxx>
#include<Handle_PGeom_Surface.hxx>
#include<Handle_PGeom_SurfaceOfLinearExtrusion.hxx>
#include<Handle_PGeom_SurfaceOfRevolution.hxx>
#include<Handle_PGeom_SweptSurface.hxx>
#include<Handle_PGeom_ToroidalSurface.hxx>
#include<Handle_PGeom_Transformation.hxx>
#include<Handle_PGeom_TrimmedCurve.hxx>
#include<Handle_PGeom_Vector.hxx>
#include<Handle_PGeom_VectorWithMagnitude.hxx>
#include<PGeom_Axis1Placement.hxx>
#include<PGeom_Axis2Placement.hxx>
#include<PGeom_AxisPlacement.hxx>
#include<PGeom_BSplineCurve.hxx>
#include<PGeom_BSplineSurface.hxx>
#include<PGeom_BezierCurve.hxx>
#include<PGeom_BezierSurface.hxx>
#include<PGeom_BoundedCurve.hxx>
#include<PGeom_BoundedSurface.hxx>
#include<PGeom_CartesianPoint.hxx>
#include<PGeom_Circle.hxx>
#include<PGeom_Conic.hxx>
#include<PGeom_ConicalSurface.hxx>
#include<PGeom_Curve.hxx>
#include<PGeom_CylindricalSurface.hxx>
#include<PGeom_Direction.hxx>
#include<PGeom_ElementarySurface.hxx>
#include<PGeom_Ellipse.hxx>
#include<PGeom_Geometry.hxx>
#include<PGeom_Hyperbola.hxx>
#include<PGeom_Line.hxx>
#include<PGeom_OffsetCurve.hxx>
#include<PGeom_OffsetSurface.hxx>
#include<PGeom_Parabola.hxx>
#include<PGeom_Plane.hxx>
#include<PGeom_Point.hxx>
#include<PGeom_RectangularTrimmedSurface.hxx>
#include<PGeom_SphericalSurface.hxx>
#include<PGeom_Surface.hxx>
#include<PGeom_SurfaceOfLinearExtrusion.hxx>
#include<PGeom_SurfaceOfRevolution.hxx>
#include<PGeom_SweptSurface.hxx>
#include<PGeom_ToroidalSurface.hxx>
#include<PGeom_Transformation.hxx>
#include<PGeom_TrimmedCurve.hxx>
#include<PGeom_Vector.hxx>
#include<PGeom_VectorWithMagnitude.hxx>

// Additional headers necessary for compilation.

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

// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<gp_Ax1.hxx>
#include<gp_Dir.hxx>
#include<gp_Trsf.hxx>
#include<gp_Pnt.hxx>
#include<Handle_PColgp_HArray1OfPnt.hxx>
#include<Handle_PColStd_HArray1OfReal.hxx>
#include<Handle_PColStd_HArray1OfInteger.hxx>
#include<Handle_PColgp_HArray2OfPnt.hxx>
#include<Handle_PColStd_HArray2OfReal.hxx>
#include<gp_Vec.hxx>
#include<gp_Ax2.hxx>
#include<gp_Ax3.hxx>
%}
