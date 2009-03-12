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
along with Foobar.  If not, see <http://www.gnu.org/licenses/>.

*/
%{

// Headers necessary to define wrapped classes.

#include<GeomConvert.hxx>
#include<GeomConvert_ApproxCurve.hxx>
#include<GeomConvert_ApproxSurface.hxx>
#include<GeomConvert_BSplineCurveKnotSplitting.hxx>
#include<GeomConvert_BSplineCurveToBezierCurve.hxx>
#include<GeomConvert_BSplineSurfaceKnotSplitting.hxx>
#include<GeomConvert_BSplineSurfaceToBezierSurface.hxx>
#include<GeomConvert_CompBezierSurfacesToBSplineSurface.hxx>
#include<GeomConvert_CompCurveToBSplineCurve.hxx>

// Additional headers necessary for compilation.

#include<GeomConvert.hxx>
#include<GeomConvert_ApproxCurve.hxx>
#include<GeomConvert_ApproxSurface.hxx>
#include<GeomConvert_BSplineCurveKnotSplitting.hxx>
#include<GeomConvert_BSplineCurveToBezierCurve.hxx>
#include<GeomConvert_BSplineSurfaceKnotSplitting.hxx>
#include<GeomConvert_BSplineSurfaceToBezierSurface.hxx>
#include<GeomConvert_CompBezierSurfacesToBSplineSurface.hxx>
#include<GeomConvert_CompCurveToBSplineCurve.hxx>

// Needed headers necessary for compilation.

#include<Handle_Geom_Curve.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<GeomConvert.hxx>
#include<TColGeom_Array1OfBSplineCurve.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<Handle_TColGeom_HArray1OfBSplineCurve.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<Handle_Geom_BezierSurface.hxx>
#include<TColGeom_Array2OfBezierSurface.hxx>
#include<Handle_Geom_BoundedCurve.hxx>
#include<Handle_Geom_BezierCurve.hxx>
#include<TColGeom_Array1OfBezierCurve.hxx>
%}
