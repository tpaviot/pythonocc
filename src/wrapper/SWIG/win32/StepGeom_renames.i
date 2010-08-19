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
%rename(downcast) Handle_StepGeom_GeometricRepresentationItem::DownCast;
%rename(downcast) Handle_StepGeom_Curve::DownCast;
%rename(downcast) Handle_StepGeom_SurfaceCurve::DownCast;
%rename(downcast) Handle_StepGeom_Surface::DownCast;
%rename(downcast) Handle_StepGeom_BoundedSurface::DownCast;
%rename(downcast) Handle_StepGeom_BSplineSurface::DownCast;
%rename(downcast) Handle_StepGeom_BSplineSurfaceWithKnots::DownCast;
%rename(downcast) Handle_StepGeom_BoundedCurve::DownCast;
%rename(downcast) Handle_StepGeom_CompositeCurve::DownCast;
%rename(downcast) Handle_StepGeom_CompositeCurveOnSurface::DownCast;
%rename(downcast) Handle_StepGeom_BoundaryCurve::DownCast;
%rename(downcast) Handle_StepGeom_OuterBoundaryCurve::DownCast;
%rename(downcast) Handle_StepGeom_Point::DownCast;
%rename(downcast) Handle_StepGeom_DegeneratePcurve::DownCast;
%rename(downcast) Handle_StepGeom_EvaluatedDegeneratePcurve::DownCast;
%rename(downcast) Handle_StepGeom_BSplineCurve::DownCast;
%rename(downcast) Handle_StepGeom_QuasiUniformCurve::DownCast;
%rename(downcast) Handle_StepGeom_HArray2OfCartesianPoint::DownCast;
%rename(downcast) Handle_StepGeom_BezierSurface::DownCast;
%rename(downcast) Handle_StepGeom_PointOnSurface::DownCast;
%rename(downcast) Handle_StepGeom_BezierCurveAndRationalBSplineCurve::DownCast;
%rename(downcast) Handle_StepGeom_HArray1OfCompositeCurveSegment::DownCast;
%rename(downcast) Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext::DownCast;
%rename(downcast) Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext::DownCast;
%rename(downcast) Handle_StepGeom_Conic::DownCast;
%rename(downcast) Handle_StepGeom_Hyperbola::DownCast;
%rename(downcast) Handle_StepGeom_SurfaceCurveAndBoundedCurve::DownCast;
%rename(downcast) Handle_StepGeom_Direction::DownCast;
%rename(downcast) Handle_StepGeom_HArray1OfCurve::DownCast;
%rename(downcast) Handle_StepGeom_Placement::DownCast;
%rename(downcast) Handle_StepGeom_Axis2Placement2d::DownCast;
%rename(downcast) Handle_StepGeom_ElementarySurface::DownCast;
%rename(downcast) Handle_StepGeom_SphericalSurface::DownCast;
%rename(downcast) Handle_StepGeom_Axis2Placement3d::DownCast;
%rename(downcast) Handle_StepGeom_SurfaceReplica::DownCast;
%rename(downcast) Handle_StepGeom_HArray1OfTrimmingSelect::DownCast;
%rename(downcast) Handle_StepGeom_RectangularCompositeSurface::DownCast;
%rename(downcast) Handle_StepGeom_BSplineCurveWithKnots::DownCast;
%rename(downcast) Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx::DownCast;
%rename(downcast) Handle_StepGeom_HArray2OfSurfacePatch::DownCast;
%rename(downcast) Handle_StepGeom_CartesianTransformationOperator::DownCast;
%rename(downcast) Handle_StepGeom_CartesianTransformationOperator3d::DownCast;
%rename(downcast) Handle_StepGeom_HArray1OfCartesianPoint::DownCast;
%rename(downcast) Handle_StepGeom_TrimmedCurve::DownCast;
%rename(downcast) Handle_StepGeom_OrientedSurface::DownCast;
%rename(downcast) Handle_StepGeom_OffsetSurface::DownCast;
%rename(downcast) Handle_StepGeom_CurveBoundedSurface::DownCast;
%rename(downcast) Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface::DownCast;
%rename(downcast) Handle_StepGeom_Axis1Placement::DownCast;
%rename(downcast) Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve::DownCast;
%rename(downcast) Handle_StepGeom_CurveReplica::DownCast;
%rename(downcast) Handle_StepGeom_CylindricalSurface::DownCast;
%rename(downcast) Handle_StepGeom_SweptSurface::DownCast;
%rename(downcast) Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve::DownCast;
%rename(downcast) Handle_StepGeom_HArray1OfPcurveOrSurface::DownCast;
%rename(downcast) Handle_StepGeom_Ellipse::DownCast;
%rename(downcast) Handle_StepGeom_CompositeCurveSegment::DownCast;
%rename(downcast) Handle_StepGeom_UniformCurve::DownCast;
%rename(downcast) Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface::DownCast;
%rename(downcast) Handle_StepGeom_ToroidalSurface::DownCast;
%rename(downcast) Handle_StepGeom_PointOnCurve::DownCast;
%rename(downcast) Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface::DownCast;
%rename(downcast) Handle_StepGeom_CartesianPoint::DownCast;
%rename(downcast) Handle_StepGeom_Vector::DownCast;
%rename(downcast) Handle_StepGeom_ConicalSurface::DownCast;
%rename(downcast) Handle_StepGeom_CartesianTransformationOperator2d::DownCast;
%rename(downcast) Handle_StepGeom_ReparametrisedCompositeCurveSegment::DownCast;
%rename(downcast) Handle_StepGeom_TrimmingMember::DownCast;
%rename(downcast) Handle_StepGeom_SurfaceOfRevolution::DownCast;
%rename(downcast) Handle_StepGeom_SeamCurve::DownCast;
%rename(downcast) Handle_StepGeom_HArray1OfSurfaceBoundary::DownCast;
%rename(downcast) Handle_StepGeom_RationalBSplineCurve::DownCast;
%rename(downcast) Handle_StepGeom_Parabola::DownCast;
%rename(downcast) Handle_StepGeom_QuasiUniformSurface::DownCast;
%rename(downcast) Handle_StepGeom_Circle::DownCast;
%rename(downcast) Handle_StepGeom_UniformSurface::DownCast;
%rename(downcast) Handle_StepGeom_RectangularTrimmedSurface::DownCast;
%rename(downcast) Handle_StepGeom_DegenerateToroidalSurface::DownCast;
%rename(downcast) Handle_StepGeom_SurfaceOfLinearExtrusion::DownCast;
%rename(downcast) Handle_StepGeom_Plane::DownCast;
%rename(downcast) Handle_StepGeom_PointReplica::DownCast;
%rename(downcast) Handle_StepGeom_RationalBSplineSurface::DownCast;
%rename(downcast) Handle_StepGeom_BezierCurve::DownCast;
%rename(downcast) Handle_StepGeom_OffsetCurve3d::DownCast;
%rename(downcast) Handle_StepGeom_IntersectionCurve::DownCast;
%rename(downcast) Handle_StepGeom_HArray1OfBoundaryCurve::DownCast;
%rename(downcast) Handle_StepGeom_Polyline::DownCast;
%rename(downcast) Handle_StepGeom_SurfacePatch::DownCast;
%rename(downcast) Handle_StepGeom_Pcurve::DownCast;
%rename(downcast) Handle_StepGeom_UniformCurveAndRationalBSplineCurve::DownCast;
%rename(downcast) Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface::DownCast;
%rename(downcast) Handle_StepGeom_GeometricRepresentationContext::DownCast;
%rename(downcast) Handle_StepGeom_Line::DownCast;
