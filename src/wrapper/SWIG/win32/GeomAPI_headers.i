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

#include<GeomAPI.hxx>
#include<GeomAPI_ExtremaCurveCurve.hxx>
#include<GeomAPI_ExtremaCurveSurface.hxx>
#include<GeomAPI_ExtremaSurfaceSurface.hxx>
#include<GeomAPI_IntCS.hxx>
#include<GeomAPI_IntSS.hxx>
#include<GeomAPI_Interpolate.hxx>
#include<GeomAPI_PointsToBSpline.hxx>
#include<GeomAPI_PointsToBSplineSurface.hxx>
#include<GeomAPI_ProjectPointOnCurve.hxx>
#include<GeomAPI_ProjectPointOnSurf.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Geom_Surface.hxx>
#include<gp_Pnt.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_TColgp_HArray1OfPnt.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<gp_Vec.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<Handle_TColStd_HArray1OfBoolean.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColgp_Array2OfPnt.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<GeomAPI.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<gp_Pln.hxx>
%}
