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

#include<GeomFill.hxx>
#include<GeomFill_AppSurf.hxx>
#include<GeomFill_AppSweep.hxx>
#include<GeomFill_ApproxStyle.hxx>
#include<GeomFill_Array1OfLocationLaw.hxx>
#include<GeomFill_Array1OfSectionLaw.hxx>
#include<GeomFill_BSplineCurves.hxx>
#include<GeomFill_BezierCurves.hxx>
#include<GeomFill_BoundWithSurf.hxx>
#include<GeomFill_Boundary.hxx>
#include<GeomFill_CircularBlendFunc.hxx>
#include<GeomFill_ConstantBiNormal.hxx>
#include<GeomFill_ConstrainedFilling.hxx>
#include<GeomFill_Coons.hxx>
#include<GeomFill_CoonsAlgPatch.hxx>
#include<GeomFill_CornerState.hxx>
#include<GeomFill_CorrectedFrenet.hxx>
#include<GeomFill_CurveAndTrihedron.hxx>
#include<GeomFill_Curved.hxx>
#include<GeomFill_Darboux.hxx>
#include<GeomFill_DegeneratedBound.hxx>
#include<GeomFill_DraftTrihedron.hxx>
#include<GeomFill_EvolvedSection.hxx>
#include<GeomFill_Filling.hxx>
#include<GeomFill_FillingStyle.hxx>
#include<GeomFill_Fixed.hxx>
#include<GeomFill_Frenet.hxx>
#include<GeomFill_FunctionDraft.hxx>
#include<GeomFill_FunctionGuide.hxx>
#include<GeomFill_Generator.hxx>
#include<GeomFill_GuideTrihedronAC.hxx>
#include<GeomFill_GuideTrihedronPlan.hxx>
#include<GeomFill_HArray1OfLocationLaw.hxx>
#include<GeomFill_HArray1OfSectionLaw.hxx>
#include<GeomFill_Line.hxx>
#include<GeomFill_LocFunction.hxx>
#include<GeomFill_LocationDraft.hxx>
#include<GeomFill_LocationGuide.hxx>
#include<GeomFill_LocationLaw.hxx>
#include<GeomFill_NSections.hxx>
#include<GeomFill_Pipe.hxx>
#include<GeomFill_PipeError.hxx>
#include<GeomFill_PlanFunc.hxx>
#include<GeomFill_PolynomialConvertor.hxx>
#include<GeomFill_Profiler.hxx>
#include<GeomFill_QuasiAngularConvertor.hxx>
#include<GeomFill_SectionGenerator.hxx>
#include<GeomFill_SectionLaw.hxx>
#include<GeomFill_SectionPlacement.hxx>
#include<GeomFill_SequenceNodeOfSequenceOfTrsf.hxx>
#include<GeomFill_SequenceOfTrsf.hxx>
#include<GeomFill_SimpleBound.hxx>
#include<GeomFill_SnglrFunc.hxx>
#include<GeomFill_Stretch.hxx>
#include<GeomFill_Sweep.hxx>
#include<GeomFill_SweepFunction.hxx>
#include<GeomFill_SweepSectionGenerator.hxx>
#include<GeomFill_Tensor.hxx>
#include<GeomFill_TgtField.hxx>
#include<GeomFill_TgtOnCoons.hxx>
#include<GeomFill_Trihedron.hxx>
#include<GeomFill_TrihedronLaw.hxx>
#include<GeomFill_TrihedronWithGuide.hxx>
#include<GeomFill_UniformSection.hxx>
#include<Handle_GeomFill_BoundWithSurf.hxx>
#include<Handle_GeomFill_Boundary.hxx>
#include<Handle_GeomFill_CircularBlendFunc.hxx>
#include<Handle_GeomFill_ConstantBiNormal.hxx>
#include<Handle_GeomFill_CoonsAlgPatch.hxx>
#include<Handle_GeomFill_CorrectedFrenet.hxx>
#include<Handle_GeomFill_CurveAndTrihedron.hxx>
#include<Handle_GeomFill_Darboux.hxx>
#include<Handle_GeomFill_DegeneratedBound.hxx>
#include<Handle_GeomFill_DraftTrihedron.hxx>
#include<Handle_GeomFill_EvolvedSection.hxx>
#include<Handle_GeomFill_Fixed.hxx>
#include<Handle_GeomFill_Frenet.hxx>
#include<Handle_GeomFill_GuideTrihedronAC.hxx>
#include<Handle_GeomFill_GuideTrihedronPlan.hxx>
#include<Handle_GeomFill_HArray1OfLocationLaw.hxx>
#include<Handle_GeomFill_HArray1OfSectionLaw.hxx>
#include<Handle_GeomFill_Line.hxx>
#include<Handle_GeomFill_LocationDraft.hxx>
#include<Handle_GeomFill_LocationGuide.hxx>
#include<Handle_GeomFill_LocationLaw.hxx>
#include<Handle_GeomFill_NSections.hxx>
#include<Handle_GeomFill_SectionLaw.hxx>
#include<Handle_GeomFill_SequenceNodeOfSequenceOfTrsf.hxx>
#include<Handle_GeomFill_SimpleBound.hxx>
#include<Handle_GeomFill_SweepFunction.hxx>
#include<Handle_GeomFill_TgtField.hxx>
#include<Handle_GeomFill_TgtOnCoons.hxx>
#include<Handle_GeomFill_TrihedronLaw.hxx>
#include<Handle_GeomFill_TrihedronWithGuide.hxx>
#include<Handle_GeomFill_UniformSection.hxx>

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
#include<gp.hxx>
#include<gp_Ax1.hxx>
#include<gp_Ax2.hxx>
#include<gp_Ax22d.hxx>
#include<gp_Ax2d.hxx>
#include<gp_Ax3.hxx>
#include<gp_Circ.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Cone.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Dir.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Elips.hxx>
#include<gp_Elips2d.hxx>
#include<gp_EulerSequence.hxx>
#include<gp_GTrsf.hxx>
#include<gp_GTrsf2d.hxx>
#include<gp_Hypr.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Lin.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Mat.hxx>
#include<gp_Mat2d.hxx>
#include<gp_Parab.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Pln.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Quaternion.hxx>
#include<gp_QuaternionNLerp.hxx>
#include<gp_QuaternionSLerp.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<gp_Trsf.hxx>
#include<gp_Trsf2d.hxx>
#include<gp_TrsfForm.hxx>
#include<gp_Vec.hxx>
#include<gp_Vec2d.hxx>
#include<gp_VectorWithNullMagnitude.hxx>
#include<gp_XY.hxx>
#include<gp_XYZ.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Geom_Geometry.hxx>
#include<Handle_Adaptor3d_HCurve.hxx>
#include<gp_Trsf.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Law_BSpline.hxx>
#include<gp_Vec.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<gp_Pnt.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<gp_Dir.hxx>
#include<GeomFill.hxx>
#include<Handle_Geom_Surface.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<math_Vector.hxx>
#include<math_Matrix.hxx>
#include<TColgp_Array2OfPnt.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<gp_Mat.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<TColGeom_SequenceOfCurve.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Adaptor3d_CurveOnSurface.hxx>
#include<Handle_Law_Function.hxx>
#include<Handle_Geom_BezierCurve.hxx>
%}
