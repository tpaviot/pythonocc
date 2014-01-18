/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/
%{

// Headers necessary to define wrapped classes.

#include<BRepTopAdaptor_DataMapIteratorOfMapOfShapeTool.hxx>
#include<BRepTopAdaptor_DataMapNodeOfMapOfShapeTool.hxx>
#include<BRepTopAdaptor_FClass2d.hxx>
#include<BRepTopAdaptor_HVertex.hxx>
#include<BRepTopAdaptor_MapOfShapeTool.hxx>
#include<BRepTopAdaptor_SeqOfPtr.hxx>
#include<BRepTopAdaptor_Tool.hxx>
#include<BRepTopAdaptor_TopolTool.hxx>
#include<Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool.hxx>
#include<Handle_BRepTopAdaptor_HVertex.hxx>
#include<Handle_BRepTopAdaptor_TopolTool.hxx>

// Additional headers necessary for compilation.

#include<ChFiDS_ChamfMethod.hxx>
#include<ChFiDS_ChamfSpine.hxx>
#include<ChFiDS_CircSection.hxx>
#include<ChFiDS_CommonPoint.hxx>
#include<ChFiDS_ElSpine.hxx>
#include<ChFiDS_ErrorStatus.hxx>
#include<ChFiDS_FaceInterference.hxx>
#include<ChFiDS_FilSpine.hxx>
#include<ChFiDS_HData.hxx>
#include<ChFiDS_HElSpine.hxx>
#include<ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe.hxx>
#include<ChFiDS_IndexedDataMapOfVertexListOfStripe.hxx>
#include<ChFiDS_ListIteratorOfListOfHElSpine.hxx>
#include<ChFiDS_ListIteratorOfListOfStripe.hxx>
#include<ChFiDS_ListIteratorOfRegularities.hxx>
#include<ChFiDS_ListNodeOfListOfHElSpine.hxx>
#include<ChFiDS_ListNodeOfListOfStripe.hxx>
#include<ChFiDS_ListNodeOfRegularities.hxx>
#include<ChFiDS_ListOfHElSpine.hxx>
#include<ChFiDS_ListOfStripe.hxx>
#include<ChFiDS_Map.hxx>
#include<ChFiDS_Regul.hxx>
#include<ChFiDS_Regularities.hxx>
#include<ChFiDS_SecArray1.hxx>
#include<ChFiDS_SecHArray1.hxx>
#include<ChFiDS_SequenceNodeOfSequenceOfSpine.hxx>
#include<ChFiDS_SequenceNodeOfSequenceOfSurfData.hxx>
#include<ChFiDS_SequenceOfSpine.hxx>
#include<ChFiDS_SequenceOfSurfData.hxx>
#include<ChFiDS_Spine.hxx>
#include<ChFiDS_State.hxx>
#include<ChFiDS_Stripe.hxx>
#include<ChFiDS_StripeArray1.hxx>
#include<ChFiDS_StripeMap.hxx>
#include<ChFiDS_SurfData.hxx>
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
#include<TopoDS_Face.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<TopoDS_Vertex.hxx>
#include<Handle_BRepAdaptor_HCurve2d.hxx>
#include<Handle_Adaptor2d_HCurve2d.hxx>
#include<Handle_Adaptor3d_HVertex.hxx>
#include<gp_Pnt.hxx>
#include<TopoDS_Shape.hxx>
%}
