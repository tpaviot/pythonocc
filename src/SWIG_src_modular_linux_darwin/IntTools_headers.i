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

#include<Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox.hxx>
#include<Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox.hxx>
#include<Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress.hxx>
#include<Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress.hxx>
#include<Handle_IntTools_ListNodeOfListOfBox.hxx>
#include<Handle_IntTools_ListNodeOfListOfCurveRangeSample.hxx>
#include<Handle_IntTools_ListNodeOfListOfSurfaceRangeSample.hxx>
#include<Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts.hxx>
#include<Handle_IntTools_SequenceNodeOfSequenceOfCurves.hxx>
#include<Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces.hxx>
#include<Handle_IntTools_SequenceNodeOfSequenceOfRanges.hxx>
#include<Handle_IntTools_SequenceNodeOfSequenceOfRoots.hxx>
#include<Handle_IntTools_StdMapNodeOfMapOfCurveSample.hxx>
#include<Handle_IntTools_StdMapNodeOfMapOfSurfaceSample.hxx>
#include<Handle_IntTools_TopolTool.hxx>
#include<IntTools.hxx>
#include<IntTools_Array1OfRange.hxx>
#include<IntTools_Array1OfRoots.hxx>
#include<IntTools_BaseRangeSample.hxx>
#include<IntTools_BeanBeanIntersector.hxx>
#include<IntTools_BeanFaceIntersector.hxx>
#include<IntTools_CArray1OfInteger.hxx>
#include<IntTools_CArray1OfReal.hxx>
#include<IntTools_CommonPrt.hxx>
#include<IntTools_Compare.hxx>
#include<IntTools_CompareRange.hxx>
#include<IntTools_Context.hxx>
#include<IntTools_Curve.hxx>
#include<IntTools_CurveRangeLocalizeData.hxx>
#include<IntTools_CurveRangeSample.hxx>
#include<IntTools_CurveRangeSampleMapHasher.hxx>
#include<IntTools_DataMapIteratorOfDataMapOfCurveSampleBox.hxx>
#include<IntTools_DataMapIteratorOfDataMapOfSurfaceSampleBox.hxx>
#include<IntTools_DataMapNodeOfDataMapOfCurveSampleBox.hxx>
#include<IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox.hxx>
#include<IntTools_DataMapOfCurveSampleBox.hxx>
#include<IntTools_DataMapOfSurfaceSampleBox.hxx>
#include<IntTools_EdgeEdge.hxx>
#include<IntTools_EdgeFace.hxx>
#include<IntTools_FClass2d.hxx>
#include<IntTools_FaceFace.hxx>
#include<IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress.hxx>
#include<IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress.hxx>
#include<IntTools_IndexedDataMapOfShapeAddress.hxx>
#include<IntTools_IndexedDataMapOfTransientAddress.hxx>
#include<IntTools_LineConstructor.hxx>
#include<IntTools_ListIteratorOfListOfBox.hxx>
#include<IntTools_ListIteratorOfListOfCurveRangeSample.hxx>
#include<IntTools_ListIteratorOfListOfSurfaceRangeSample.hxx>
#include<IntTools_ListNodeOfListOfBox.hxx>
#include<IntTools_ListNodeOfListOfCurveRangeSample.hxx>
#include<IntTools_ListNodeOfListOfSurfaceRangeSample.hxx>
#include<IntTools_ListOfBox.hxx>
#include<IntTools_ListOfCurveRangeSample.hxx>
#include<IntTools_ListOfSurfaceRangeSample.hxx>
#include<IntTools_MapIteratorOfMapOfCurveSample.hxx>
#include<IntTools_MapIteratorOfMapOfSurfaceSample.hxx>
#include<IntTools_MapOfCurveSample.hxx>
#include<IntTools_MapOfSurfaceSample.hxx>
#include<IntTools_MarkedRangeSet.hxx>
#include<IntTools_PContext.hxx>
#include<IntTools_PntOn2Faces.hxx>
#include<IntTools_PntOnFace.hxx>
#include<IntTools_QuickSort.hxx>
#include<IntTools_QuickSortRange.hxx>
#include<IntTools_Range.hxx>
#include<IntTools_Root.hxx>
#include<IntTools_SequenceNodeOfSequenceOfCommonPrts.hxx>
#include<IntTools_SequenceNodeOfSequenceOfCurves.hxx>
#include<IntTools_SequenceNodeOfSequenceOfPntOn2Faces.hxx>
#include<IntTools_SequenceNodeOfSequenceOfRanges.hxx>
#include<IntTools_SequenceNodeOfSequenceOfRoots.hxx>
#include<IntTools_SequenceOfCommonPrts.hxx>
#include<IntTools_SequenceOfCurves.hxx>
#include<IntTools_SequenceOfPntOn2Faces.hxx>
#include<IntTools_SequenceOfRanges.hxx>
#include<IntTools_SequenceOfRoots.hxx>
#include<IntTools_ShrunkRange.hxx>
#include<IntTools_StdMapNodeOfMapOfCurveSample.hxx>
#include<IntTools_StdMapNodeOfMapOfSurfaceSample.hxx>
#include<IntTools_SurfaceRangeLocalizeData.hxx>
#include<IntTools_SurfaceRangeSample.hxx>
#include<IntTools_SurfaceRangeSampleMapHasher.hxx>
#include<IntTools_Tools.hxx>
#include<IntTools_TopolTool.hxx>

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
#include<TopoDS_Face.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<gp_Pnt.hxx>
#include<Bnd_Box.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_Solid.hxx>
#include<TopoDS_Vertex.hxx>
#include<BRepAdaptor_Surface.hxx>
#include<BRepAdaptor_Curve.hxx>
#include<Handle_Adaptor3d_TopolTool.hxx>
#include<Handle_GeomAdaptor_HSurface.hxx>
#include<Handle_IntPatch_Line.hxx>
#include<TopoDS_Wire.hxx>
#include<gp_Dir.hxx>
#include<IntSurf_ListOfPntOn2S.hxx>
%}
