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
%{

// Headers necessary to define wrapped classes.

#include<Approx_Array1OfAdHSurface.hxx>
#include<Approx_Array1OfGTrsf2d.hxx>
#include<Approx_Curve2d.hxx>
#include<Approx_Curve3d.hxx>
#include<Approx_CurveOnSurface.hxx>
#include<Approx_CurvilinearParameter.hxx>
#include<Approx_CurvlinFunc.hxx>
#include<Approx_FitAndDivide.hxx>
#include<Approx_FitAndDivide2d.hxx>
#include<Approx_HArray1OfAdHSurface.hxx>
#include<Approx_HArray1OfGTrsf2d.hxx>
#include<Approx_MCurvesToBSpCurve.hxx>
#include<Approx_MyLeastSquareOfFitAndDivide.hxx>
#include<Approx_MyLeastSquareOfFitAndDivide2d.hxx>
#include<Approx_ParametrizationType.hxx>
#include<Approx_SameParameter.hxx>
#include<Approx_SequenceNodeOfSequenceOfArray1OfPnt2d.hxx>
#include<Approx_SequenceNodeOfSequenceOfHArray1OfReal.hxx>
#include<Approx_SequenceOfArray1OfPnt2d.hxx>
#include<Approx_SequenceOfHArray1OfReal.hxx>
#include<Approx_Status.hxx>
#include<Approx_SweepApproximation.hxx>
#include<Approx_SweepFunction.hxx>
#include<Handle_Approx_CurvlinFunc.hxx>
#include<Handle_Approx_HArray1OfAdHSurface.hxx>
#include<Handle_Approx_HArray1OfGTrsf2d.hxx>
#include<Handle_Approx_SequenceNodeOfSequenceOfArray1OfPnt2d.hxx>
#include<Handle_Approx_SequenceNodeOfSequenceOfHArray1OfReal.hxx>
#include<Handle_Approx_SweepFunction.hxx>

// Additional headers necessary for compilation.

#include<ApproxInt_SvSurfaces.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_TColgp_HArray1OfPnt2d.hxx>
#include<Handle_Adaptor3d_HCurve.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<AppCont_Function2d.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<gp_Pnt.hxx>
#include<Handle_Adaptor2d_HCurve2d.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<AppParCurves_MultiCurve.hxx>
#include<AppParCurves_SequenceOfMultiCurve.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<gp_GTrsf2d.hxx>
#include<AppCont_Function.hxx>
#include<Adaptor3d_Curve.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Geom_Surface.hxx>
#include<TColgp_Array2OfPnt.hxx>
#include<TColStd_Array2OfReal.hxx>
%}
