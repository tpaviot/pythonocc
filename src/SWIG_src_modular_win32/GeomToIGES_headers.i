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

#include<GeomToIGES_GeomCurve.hxx>
#include<GeomToIGES_GeomEntity.hxx>
#include<GeomToIGES_GeomPoint.hxx>
#include<GeomToIGES_GeomSurface.hxx>
#include<GeomToIGES_GeomVector.hxx>

// Additional headers necessary for compilation.

#include<GeomToIGES_GeomCurve.hxx>
#include<GeomToIGES_GeomEntity.hxx>
#include<GeomToIGES_GeomPoint.hxx>
#include<GeomToIGES_GeomSurface.hxx>
#include<GeomToIGES_GeomVector.hxx>

// Needed headers necessary for compilation.

#include<Handle_IGESData_IGESModel.hxx>
#include<Handle_IGESData_IGESEntity.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Geom_BoundedCurve.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Handle_Geom_BezierCurve.hxx>
#include<Handle_Geom_TrimmedCurve.hxx>
#include<Handle_Geom_Conic.hxx>
#include<Handle_Geom_Circle.hxx>
#include<Handle_Geom_Ellipse.hxx>
#include<Handle_Geom_Hyperbola.hxx>
#include<Handle_Geom_Line.hxx>
#include<Handle_Geom_Parabola.hxx>
#include<Handle_Geom_OffsetCurve.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_Geom_BoundedSurface.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<Handle_Geom_BezierSurface.hxx>
#include<Handle_Geom_RectangularTrimmedSurface.hxx>
#include<Handle_Geom_ElementarySurface.hxx>
#include<Handle_Geom_Plane.hxx>
#include<Handle_Geom_CylindricalSurface.hxx>
#include<Handle_Geom_ConicalSurface.hxx>
#include<Handle_Geom_SphericalSurface.hxx>
#include<Handle_Geom_ToroidalSurface.hxx>
#include<Handle_Geom_SweptSurface.hxx>
#include<Handle_Geom_SurfaceOfLinearExtrusion.hxx>
#include<Handle_Geom_SurfaceOfRevolution.hxx>
#include<Handle_Geom_OffsetSurface.hxx>
#include<Handle_IGESGeom_Point.hxx>
#include<Handle_Geom_Point.hxx>
#include<Handle_Geom_CartesianPoint.hxx>
#include<Handle_IGESGeom_Direction.hxx>
#include<Handle_Geom_Vector.hxx>
#include<Handle_Geom_VectorWithMagnitude.hxx>
#include<Handle_Geom_Direction.hxx>
%}
