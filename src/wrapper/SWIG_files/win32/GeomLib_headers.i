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

#include<GeomLib.hxx>
#include<GeomLib_Array1OfMat.hxx>
#include<GeomLib_Check2dBSplineCurve.hxx>
#include<GeomLib_CheckBSplineCurve.hxx>
#include<GeomLib_DenominatorMultiplier.hxx>
#include<GeomLib_DenominatorMultiplierPtr.hxx>
#include<GeomLib_Interpolate.hxx>
#include<GeomLib_InterpolationErrors.hxx>
#include<GeomLib_IsPlanarSurface.hxx>
#include<GeomLib_LogSample.hxx>
#include<GeomLib_MakeCurvefromApprox.hxx>
#include<GeomLib_PolyFunc.hxx>
#include<GeomLib_Tool.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Geom_BSplineSurface.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<Handle_Geom_Curve.hxx>
#include<gp_Pnt.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Mat.hxx>
#include<math_Vector.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<AdvApprox_ApproxAFunction.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<GeomLib.hxx>
#include<gp_Ax2.hxx>
#include<gp_GTrsf2d.hxx>
#include<Adaptor3d_CurveOnSurface.hxx>
#include<Handle_Geom_BoundedCurve.hxx>
#include<gp_Vec.hxx>
#include<Handle_Geom_BoundedSurface.hxx>
#include<gp_Dir.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<TColStd_SequenceOfReal.hxx>
#include<Adaptor3d_Curve.hxx>
%}
