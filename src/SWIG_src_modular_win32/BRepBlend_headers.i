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

#include<BRepBlend_AppFunc.hxx>
#include<BRepBlend_AppFuncRoot.hxx>
#include<BRepBlend_AppFuncRst.hxx>
#include<BRepBlend_AppFuncRstRst.hxx>
#include<BRepBlend_AppSurf.hxx>
#include<BRepBlend_AppSurface.hxx>
#include<BRepBlend_BlendTool.hxx>
#include<BRepBlend_CSCircular.hxx>
#include<BRepBlend_CSConstRad.hxx>
#include<BRepBlend_CSWalking.hxx>
#include<BRepBlend_ChAsym.hxx>
#include<BRepBlend_ChAsymInv.hxx>
#include<BRepBlend_ChamfInv.hxx>
#include<BRepBlend_Chamfer.hxx>
#include<BRepBlend_ConstRad.hxx>
#include<BRepBlend_ConstRadInv.hxx>
#include<BRepBlend_Corde.hxx>
#include<BRepBlend_CurvPointRadInv.hxx>
#include<BRepBlend_EvolRad.hxx>
#include<BRepBlend_EvolRadInv.hxx>
#include<BRepBlend_Extremity.hxx>
#include<BRepBlend_HCurve2dTool.hxx>
#include<BRepBlend_HCurveTool.hxx>
#include<BRepBlend_HSurfaceTool.hxx>
#include<BRepBlend_Line.hxx>
#include<BRepBlend_PointOnRst.hxx>
#include<BRepBlend_RstRstConstRad.hxx>
#include<BRepBlend_RstRstEvolRad.hxx>
#include<BRepBlend_RstRstLineBuilder.hxx>
#include<BRepBlend_Ruled.hxx>
#include<BRepBlend_RuledInv.hxx>
#include<BRepBlend_SequenceNodeOfSequenceOfLine.hxx>
#include<BRepBlend_SequenceNodeOfSequenceOfPointOnRst.hxx>
#include<BRepBlend_SequenceOfLine.hxx>
#include<BRepBlend_SequenceOfPointOnRst.hxx>
#include<BRepBlend_SurfCurvConstRadInv.hxx>
#include<BRepBlend_SurfCurvEvolRadInv.hxx>
#include<BRepBlend_SurfPointConstRadInv.hxx>
#include<BRepBlend_SurfPointEvolRadInv.hxx>
#include<BRepBlend_SurfRstConstRad.hxx>
#include<BRepBlend_SurfRstEvolRad.hxx>
#include<BRepBlend_SurfRstLineBuilder.hxx>
#include<BRepBlend_Walking.hxx>
#include<Handle_BRepBlend_AppFunc.hxx>
#include<Handle_BRepBlend_AppFuncRoot.hxx>
#include<Handle_BRepBlend_AppFuncRst.hxx>
#include<Handle_BRepBlend_AppFuncRstRst.hxx>
#include<Handle_BRepBlend_Line.hxx>
#include<Handle_BRepBlend_SequenceNodeOfSequenceOfLine.hxx>
#include<Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst.hxx>

// Additional headers necessary for compilation.

#include<AppParCurves.hxx>
#include<AppParCurves_Array1OfConstraintCouple.hxx>
#include<AppParCurves_Array1OfMultiBSpCurve.hxx>
#include<AppParCurves_Array1OfMultiCurve.hxx>
#include<AppParCurves_Array1OfMultiPoint.hxx>
#include<AppParCurves_Constraint.hxx>
#include<AppParCurves_ConstraintCouple.hxx>
#include<AppParCurves_HArray1OfConstraintCouple.hxx>
#include<AppParCurves_HArray1OfMultiBSpCurve.hxx>
#include<AppParCurves_HArray1OfMultiCurve.hxx>
#include<AppParCurves_HArray1OfMultiPoint.hxx>
#include<AppParCurves_MultiBSpCurve.hxx>
#include<AppParCurves_MultiCurve.hxx>
#include<AppParCurves_MultiPoint.hxx>
#include<AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve.hxx>
#include<AppParCurves_SequenceNodeOfSequenceOfMultiCurve.hxx>
#include<AppParCurves_SequenceOfMultiBSpCurve.hxx>
#include<AppParCurves_SequenceOfMultiCurve.hxx>
#include<AppParCurves_SmoothCriterion.hxx>
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
#include<Handle_Adaptor3d_HSurface.hxx>
#include<Handle_Adaptor3d_HCurve.hxx>
#include<Handle_Adaptor2d_HCurve2d.hxx>
#include<math_Vector.hxx>
#include<math_Matrix.hxx>
#include<gp_Vec.hxx>
#include<gp_Circ.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<Blend_Point.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<gp_Ax1.hxx>
#include<gp_Pnt.hxx>
#include<Blend_AppFunction.hxx>
#include<Blend_SurfRstFunction.hxx>
#include<Handle_Law_Function.hxx>
#include<gp_Lin.hxx>
#include<Handle_Approx_SweepFunction.hxx>
#include<TColgp_Array2OfPnt.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<Handle_Adaptor3d_HVertex.hxx>
#include<IntSurf_Transition.hxx>
#include<Blend_Function.hxx>
#include<Handle_Adaptor3d_TopolTool.hxx>
#include<Blend_CSFunction.hxx>
#include<Blend_RstRstFunction.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Parab2d.hxx>
#include<Handle_Geom2d_BezierCurve.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<gp_Elips.hxx>
#include<gp_Hypr.hxx>
#include<gp_Parab.hxx>
#include<Handle_Geom_BezierCurve.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<gp_Pln.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Cone.hxx>
#include<gp_Torus.hxx>
#include<gp_Sphere.hxx>
#include<Handle_Geom_BezierSurface.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<gp_Dir.hxx>
#include<Blend_FuncInv.hxx>
#include<Blend_SurfPointFuncInv.hxx>
#include<Blend_SurfCurvFuncInv.hxx>
#include<Blend_CurvPointFuncInv.hxx>
%}
