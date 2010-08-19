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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<BRepAdaptor_Array1OfCurve.hxx>
#include<BRepAdaptor_CompCurve.hxx>
#include<BRepAdaptor_Curve.hxx>
#include<BRepAdaptor_Curve2d.hxx>
#include<BRepAdaptor_HArray1OfCurve.hxx>
#include<BRepAdaptor_HCompCurve.hxx>
#include<BRepAdaptor_HCurve.hxx>
#include<BRepAdaptor_HCurve2d.hxx>
#include<BRepAdaptor_HSurface.hxx>
#include<BRepAdaptor_Surface.hxx>
#include<Handle_BRepAdaptor_HArray1OfCurve.hxx>
#include<Handle_BRepAdaptor_HCompCurve.hxx>
#include<Handle_BRepAdaptor_HCurve.hxx>
#include<Handle_BRepAdaptor_HCurve2d.hxx>
#include<Handle_BRepAdaptor_HSurface.hxx>

// Additional headers necessary for compilation.

#include<math.hxx>
#include<math_Array1OfValueAndWeight.hxx>
#include<math_BFGS.hxx>
#include<math_BissecNewton.hxx>
#include<math_BracketMinimum.hxx>
#include<math_BracketedRoot.hxx>
#include<math_BrentMinimum.hxx>
#include<math_CompareOfValueAndWeight.hxx>
#include<math_ComputeGaussPointsAndWeights.hxx>
#include<math_ComputeKronrodPointsAndWeights.hxx>
#include<math_Crout.hxx>
#include<math_DirectPolynomialRoots.hxx>
#include<math_DoubleTabOfReal.hxx>
#include<math_EigenValuesSearcher.hxx>
#include<math_FRPR.hxx>
#include<math_Function.hxx>
#include<math_FunctionAllRoots.hxx>
#include<math_FunctionRoot.hxx>
#include<math_FunctionRoots.hxx>
#include<math_FunctionSample.hxx>
#include<math_FunctionSet.hxx>
#include<math_FunctionSetRoot.hxx>
#include<math_FunctionSetWithDerivatives.hxx>
#include<math_FunctionWithDerivative.hxx>
#include<math_Gauss.hxx>
#include<math_GaussLeastSquare.hxx>
#include<math_GaussMultipleIntegration.hxx>
#include<math_GaussPoints.hxx>
#include<math_GaussSetIntegration.hxx>
#include<math_GaussSingleIntegration.hxx>
#include<math_Householder.hxx>
#include<math_IntegerRandom.hxx>
#include<math_IntegerVector.hxx>
#include<math_Jacobi.hxx>
#include<math_KronrodSingleIntegration.hxx>
#include<math_Matrix.hxx>
#include<math_Memory.hxx>
#include<math_MultipleVarFunction.hxx>
#include<math_MultipleVarFunctionWithGradient.hxx>
#include<math_MultipleVarFunctionWithHessian.hxx>
#include<math_NewtonFunctionRoot.hxx>
#include<math_NewtonFunctionSetRoot.hxx>
#include<math_NewtonMinimum.hxx>
#include<math_NotSquare.hxx>
#include<math_Powell.hxx>
#include<math_QuickSortOfValueAndWeight.hxx>
#include<math_RealRandom.hxx>
#include<math_Recipes.hxx>
#include<math_SVD.hxx>
#include<math_SingleTabOfInteger.hxx>
#include<math_SingleTabOfReal.hxx>
#include<math_SingularMatrix.hxx>
#include<math_Status.hxx>
#include<math_TrigonometricFunctionRoots.hxx>
#include<math_Uzawa.hxx>
#include<math_ValueAndWeight.hxx>
#include<math_Vector.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_Face.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<gp_Pnt.hxx>
#include<gp_Vec.hxx>
#include<gp_Pln.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Cone.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<Handle_Geom_BezierSurface.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<gp_Ax1.hxx>
#include<gp_Dir.hxx>
#include<Handle_Adaptor3d_HCurve.hxx>
#include<TopoDS_Wire.hxx>
#include<gp_Lin.hxx>
#include<gp_Circ.hxx>
#include<gp_Elips.hxx>
#include<gp_Hypr.hxx>
#include<gp_Parab.hxx>
#include<Handle_Geom_BezierCurve.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
%}
