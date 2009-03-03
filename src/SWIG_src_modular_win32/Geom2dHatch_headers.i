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

#include<Geom2dHatch_ClassifierOfHatcher.hxx>
#include<Geom2dHatch_DataMapIteratorOfHatchingsOfHatcher.hxx>
#include<Geom2dHatch_DataMapIteratorOfMapOfElementsOfElementsOfHatcher.hxx>
#include<Geom2dHatch_DataMapNodeOfHatchingsOfHatcher.hxx>
#include<Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher.hxx>
#include<Geom2dHatch_ElementOfHatcher.hxx>
#include<Geom2dHatch_ElementsOfHatcher.hxx>
#include<Geom2dHatch_FClass2dOfClassifierOfHatcher.hxx>
#include<Geom2dHatch_Hatcher.hxx>
#include<Geom2dHatch_HatchingOfHatcher.hxx>
#include<Geom2dHatch_HatchingsOfHatcher.hxx>
#include<Geom2dHatch_Intersector.hxx>
#include<Geom2dHatch_MapOfElementsOfElementsOfHatcher.hxx>
#include<Handle_Geom2dHatch_DataMapNodeOfHatchingsOfHatcher.hxx>
#include<Handle_Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher.hxx>

// Additional headers necessary for compilation.

#include<Contap_ContAna.hxx>
#include<Contap_Contour.hxx>
#include<Contap_HContTool.hxx>
#include<Contap_HCurve2dTool.hxx>
#include<Contap_HSurfaceTool.hxx>
#include<Contap_IType.hxx>
#include<Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour.hxx>
#include<Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour.hxx>
#include<Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour.hxx>
#include<Contap_SequenceNodeOfTheSequenceOfLineOfContour.hxx>
#include<Contap_SequenceNodeOfTheSequenceOfPointOfContour.hxx>
#include<Contap_SequenceOfIWLineOfTheIWalkingOfContour.hxx>
#include<Contap_SequenceOfPathPointOfTheSearchOfContour.hxx>
#include<Contap_SequenceOfSegmentOfTheSearchOfContour.hxx>
#include<Contap_TFunction.hxx>
#include<Contap_TheArcFunctionOfContour.hxx>
#include<Contap_TheHSequenceOfPointOfContour.hxx>
#include<Contap_TheIWLineOfTheIWalkingOfContour.hxx>
#include<Contap_TheIWalkingOfContour.hxx>
#include<Contap_TheLineOfContour.hxx>
#include<Contap_ThePathPointOfTheSearchOfContour.hxx>
#include<Contap_ThePointOfContour.hxx>
#include<Contap_TheSearchInsideOfContour.hxx>
#include<Contap_TheSearchOfContour.hxx>
#include<Contap_TheSegmentOfTheSearchOfContour.hxx>
#include<Contap_TheSequenceOfLineOfContour.hxx>
#include<Contap_TheSequenceOfPointOfContour.hxx>
#include<Contap_TheSurfFunctionOfContour.hxx>
#include<Contap_TheSurfPropsOfContour.hxx>
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
#include<Geom2dAdaptor_Curve.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Dir2d.hxx>
#include<HatchGen_PointOnHatching.hxx>
#include<HatchGen_Domain.hxx>
%}
