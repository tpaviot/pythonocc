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

#include<BRepTopAdaptor_DataMapIteratorOfMapOfShapeTool.hxx>
#include<BRepTopAdaptor_DataMapNodeOfMapOfShapeTool.hxx>
#include<BRepTopAdaptor_FClass2d.hxx>
#include<BRepTopAdaptor_HVertex.hxx>
#include<BRepTopAdaptor_MapOfShapeTool.hxx>
#include<BRepTopAdaptor_SeqOfPtr.hxx>
#include<BRepTopAdaptor_SequenceNodeOfSeqOfPtr.hxx>
#include<BRepTopAdaptor_Tool.hxx>
#include<BRepTopAdaptor_TopolTool.hxx>
#include<Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool.hxx>
#include<Handle_BRepTopAdaptor_HVertex.hxx>
#include<Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr.hxx>
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
#include<TopoDS_Shape.hxx>
#include<TopoDS_Vertex.hxx>
#include<Handle_BRepAdaptor_HCurve2d.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_Adaptor2d_HCurve2d.hxx>
#include<Handle_Adaptor3d_HVertex.hxx>
#include<TopoDS_Face.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<gp_Pnt.hxx>
%}
