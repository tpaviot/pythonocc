/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%{

// Headers necessary to define wrapped classes.

#include<BRepAdaptor_HCurve2d.hxx>
#include<BRepAdaptor_Curve2d.hxx>
#include<BRepAdaptor_HCurve.hxx>
#include<BRepAdaptor_HArray1OfCurve.hxx>
#include<BRepAdaptor_Surface.hxx>
#include<BRepAdaptor_Array1OfCurve.hxx>
#include<BRepAdaptor_CompCurve.hxx>
#include<BRepAdaptor_Curve.hxx>
#include<BRepAdaptor_HSurface.hxx>
#include<BRepAdaptor_HCompCurve.hxx>
#include<Handle_BRepAdaptor_HArray1OfCurve.hxx>
#include<Handle_BRepAdaptor_HCurve.hxx>
#include<Handle_BRepAdaptor_HSurface.hxx>
#include<Handle_BRepAdaptor_HCurve2d.hxx>
#include<Handle_BRepAdaptor_HCompCurve.hxx>

// Additional headers necessary for compilation.

#include<math_ComputeKronrodPointsAndWeights.hxx>
#include<math_GaussPoints.hxx>
#include<math_GaussMultipleIntegration.hxx>
#include<math_Jacobi.hxx>
#include<math_TrigonometricFunctionRoots.hxx>
#include<math_Uzawa.hxx>
#include<math_Memory.hxx>
#include<math_FunctionRoot.hxx>
#include<math_FunctionRoots.hxx>
#include<math_FunctionAllRoots.hxx>
#include<math_DoubleTabOfReal.hxx>
#include<math_SingleTabOfReal.hxx>
#include<math_GaussSingleIntegration.hxx>
#include<math.hxx>
#include<math_ValueAndWeight.hxx>
#include<math_Array1OfValueAndWeight.hxx>
#include<math_FunctionSample.hxx>
#include<math_FunctionWithDerivative.hxx>
#include<math_BracketMinimum.hxx>
#include<math_FunctionSet.hxx>
#include<math_BracketedRoot.hxx>
#include<math_Matrix.hxx>
#include<math_Householder.hxx>
#include<math_NewtonFunctionRoot.hxx>
#include<math_KronrodSingleIntegration.hxx>
#include<math_IntegerVector.hxx>
#include<math_FRPR.hxx>
#include<math_EigenValuesSearcher.hxx>
#include<math_Function.hxx>
#include<math_SingleTabOfInteger.hxx>
#include<math_MultipleVarFunction.hxx>
#include<math_BrentMinimum.hxx>
#include<math_MultipleVarFunctionWithGradient.hxx>
#include<math_FunctionSetRoot.hxx>
#include<math_DirectPolynomialRoots.hxx>
#include<math_NewtonFunctionSetRoot.hxx>
#include<math_IntegerRandom.hxx>
#include<math_Powell.hxx>
#include<math_Status.hxx>
#include<math_SVD.hxx>
#include<math_ComputeGaussPointsAndWeights.hxx>
#include<math_NewtonMinimum.hxx>
#include<math_NotSquare.hxx>
#include<math_Gauss.hxx>
#include<math_GaussLeastSquare.hxx>
#include<math_BissecNewton.hxx>
#include<math_SingularMatrix.hxx>
#include<math_Vector.hxx>
#include<math_BFGS.hxx>
#include<math_Recipes.hxx>
#include<math_CompareOfValueAndWeight.hxx>
#include<math_RealRandom.hxx>
#include<math_MultipleVarFunctionWithHessian.hxx>
#include<math_Crout.hxx>
#include<math_GaussSetIntegration.hxx>
#include<math_FunctionSetWithDerivatives.hxx>
#include<math_QuickSortOfValueAndWeight.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_Wire.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<Handle_Adaptor3d_HCurve.hxx>
#include<gp_Pnt.hxx>
#include<gp_Vec.hxx>
#include<gp_Lin.hxx>
#include<gp_Circ.hxx>
#include<gp_Elips.hxx>
#include<gp_Hypr.hxx>
#include<gp_Parab.hxx>
#include<Handle_Geom_BezierCurve.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<gp_Pln.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Cone.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<Handle_Geom_BezierSurface.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<gp_Ax1.hxx>
#include<gp_Dir.hxx>
%}
