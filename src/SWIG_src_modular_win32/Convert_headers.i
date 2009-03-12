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

#include<Convert_CircleToBSplineCurve.hxx>
#include<Convert_CompBezierCurves2dToBSplineCurve2d.hxx>
#include<Convert_CompBezierCurvesToBSplineCurve.hxx>
#include<Convert_CompPolynomialToPoles.hxx>
#include<Convert_ConeToBSplineSurface.hxx>
#include<Convert_ConicToBSplineCurve.hxx>
#include<Convert_CosAndSinEvalFunction.hxx>
#include<Convert_CylinderToBSplineSurface.hxx>
#include<Convert_ElementarySurfaceToBSplineSurface.hxx>
#include<Convert_EllipseToBSplineCurve.hxx>
#include<Convert_GridPolynomialToPoles.hxx>
#include<Convert_HyperbolaToBSplineCurve.hxx>
#include<Convert_ParabolaToBSplineCurve.hxx>
#include<Convert_ParameterisationType.hxx>
#include<Convert_PolynomialCosAndSin.hxx>
#include<Convert_SequenceNodeOfSequenceOfArray1OfPoles.hxx>
#include<Convert_SequenceNodeOfSequenceOfArray1OfPoles2d.hxx>
#include<Convert_SequenceOfArray1OfPoles.hxx>
#include<Convert_SequenceOfArray1OfPoles2d.hxx>
#include<Convert_SphereToBSplineSurface.hxx>
#include<Convert_TorusToBSplineSurface.hxx>
#include<Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles.hxx>
#include<Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles2d.hxx>

// Additional headers necessary for compilation.

#include<Convert_CircleToBSplineCurve.hxx>
#include<Convert_CompBezierCurves2dToBSplineCurve2d.hxx>
#include<Convert_CompBezierCurvesToBSplineCurve.hxx>
#include<Convert_CompPolynomialToPoles.hxx>
#include<Convert_ConeToBSplineSurface.hxx>
#include<Convert_ConicToBSplineCurve.hxx>
#include<Convert_CosAndSinEvalFunction.hxx>
#include<Convert_CylinderToBSplineSurface.hxx>
#include<Convert_ElementarySurfaceToBSplineSurface.hxx>
#include<Convert_EllipseToBSplineCurve.hxx>
#include<Convert_GridPolynomialToPoles.hxx>
#include<Convert_HyperbolaToBSplineCurve.hxx>
#include<Convert_ParabolaToBSplineCurve.hxx>
#include<Convert_ParameterisationType.hxx>
#include<Convert_PolynomialCosAndSin.hxx>
#include<Convert_SequenceNodeOfSequenceOfArray1OfPoles.hxx>
#include<Convert_SequenceNodeOfSequenceOfArray1OfPoles2d.hxx>
#include<Convert_SequenceOfArray1OfPoles.hxx>
#include<Convert_SequenceOfArray1OfPoles2d.hxx>
#include<Convert_SphereToBSplineSurface.hxx>
#include<Convert_TorusToBSplineSurface.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_TColStd_HArray2OfReal.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Pnt.hxx>
#include<gp_Cone.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Torus.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Hypr2d.hxx>
#include<Handle_TColStd_HArray2OfInteger.hxx>
#include<Handle_TColgp_HArray1OfPnt2d.hxx>
#include<gp_Sphere.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<Handle_TColgp_HArray1OfPnt.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Elips2d.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
%}
