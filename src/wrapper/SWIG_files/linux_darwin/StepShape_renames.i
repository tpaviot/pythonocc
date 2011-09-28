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
%rename(DownCast) Handle_StepShape_TopologicalRepresentationItem::DownCast;
%rename(DownCast) Handle_StepShape_ConnectedEdgeSet::DownCast;
%rename(DownCast) Handle_StepShape_HArray1OfConnectedEdgeSet::DownCast;
%rename(DownCast) Handle_StepShape_SolidModel::DownCast;
%rename(DownCast) Handle_StepShape_SweptFaceSolid::DownCast;
%rename(DownCast) Handle_StepShape_RevolvedFaceSolid::DownCast;
%rename(DownCast) Handle_StepShape_ShapeRepresentation::DownCast;
%rename(DownCast) Handle_StepShape_FacetedBrepShapeRepresentation::DownCast;
%rename(DownCast) Handle_StepShape_NonManifoldSurfaceShapeRepresentation::DownCast;
%rename(DownCast) Handle_StepShape_RightCircularCone::DownCast;
%rename(DownCast) Handle_StepShape_Edge::DownCast;
%rename(DownCast) Handle_StepShape_OrientedEdge::DownCast;
%rename(DownCast) Handle_StepShape_SeamEdge::DownCast;
%rename(DownCast) Handle_StepShape_ManifoldSurfaceShapeRepresentation::DownCast;
%rename(DownCast) Handle_StepShape_HArray1OfFaceBound::DownCast;
%rename(DownCast) Handle_StepShape_ConnectedFaceSet::DownCast;
%rename(DownCast) Handle_StepShape_OpenShell::DownCast;
%rename(DownCast) Handle_StepShape_OrientedOpenShell::DownCast;
%rename(DownCast) Handle_StepShape_ExtrudedFaceSolid::DownCast;
%rename(DownCast) Handle_StepShape_MeasureQualification::DownCast;
%rename(DownCast) Handle_StepShape_Loop::DownCast;
%rename(DownCast) Handle_StepShape_PointRepresentation::DownCast;
%rename(DownCast) Handle_StepShape_Face::DownCast;
%rename(DownCast) Handle_StepShape_Subface::DownCast;
%rename(DownCast) Handle_StepShape_BooleanResult::DownCast;
%rename(DownCast) Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem::DownCast;
%rename(DownCast) Handle_StepShape_PolyLoop::DownCast;
%rename(DownCast) Handle_StepShape_HArray1OfValueQualifier::DownCast;
%rename(DownCast) Handle_StepShape_HalfSpaceSolid::DownCast;
%rename(DownCast) Handle_StepShape_BoxedHalfSpace::DownCast;
%rename(DownCast) Handle_StepShape_Path::DownCast;
%rename(DownCast) Handle_StepShape_OrientedPath::DownCast;
%rename(DownCast) Handle_StepShape_FaceBound::DownCast;
%rename(DownCast) Handle_StepShape_FaceOuterBound::DownCast;
%rename(DownCast) Handle_StepShape_HArray1OfOrientedClosedShell::DownCast;
%rename(DownCast) Handle_StepShape_SolidReplica::DownCast;
%rename(DownCast) Handle_StepShape_HArray1OfGeometricSetSelect::DownCast;
%rename(DownCast) Handle_StepShape_HArray1OfFace::DownCast;
%rename(DownCast) Handle_StepShape_ClosedShell::DownCast;
%rename(DownCast) Handle_StepShape_DimensionalCharacteristicRepresentation::DownCast;
%rename(DownCast) Handle_StepShape_FaceSurface::DownCast;
%rename(DownCast) Handle_StepShape_LimitsAndFits::DownCast;
%rename(DownCast) Handle_StepShape_SweptAreaSolid::DownCast;
%rename(DownCast) Handle_StepShape_RevolvedAreaSolid::DownCast;
%rename(DownCast) Handle_StepShape_DimensionalSize::DownCast;
%rename(DownCast) Handle_StepShape_DimensionalSizeWithPath::DownCast;
%rename(DownCast) Handle_StepShape_LoopAndPath::DownCast;
%rename(DownCast) Handle_StepShape_HArray1OfConnectedFaceSet::DownCast;
%rename(DownCast) Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation::DownCast;
%rename(DownCast) Handle_StepShape_HArray1OfShell::DownCast;
%rename(DownCast) Handle_StepShape_DimensionalLocation::DownCast;
%rename(DownCast) Handle_StepShape_TransitionalShapeRepresentation::DownCast;
%rename(DownCast) Handle_StepShape_ManifoldSolidBrep::DownCast;
%rename(DownCast) Handle_StepShape_FaceBasedSurfaceModel::DownCast;
%rename(DownCast) Handle_StepShape_CsgSolid::DownCast;
%rename(DownCast) Handle_StepShape_GeometricSet::DownCast;
%rename(DownCast) Handle_StepShape_ExtrudedAreaSolid::DownCast;
%rename(DownCast) Handle_StepShape_PrecisionQualifier::DownCast;
%rename(DownCast) Handle_StepShape_ToleranceValue::DownCast;
%rename(DownCast) Handle_StepShape_EdgeCurve::DownCast;
%rename(DownCast) Handle_StepShape_ConnectedFaceSubSet::DownCast;
%rename(DownCast) Handle_StepShape_ShapeRepresentationWithParameters::DownCast;
%rename(DownCast) Handle_StepShape_DimensionalLocationWithPath::DownCast;
%rename(DownCast) Handle_StepShape_RightAngularWedge::DownCast;
%rename(DownCast) Handle_StepShape_CompoundShapeRepresentation::DownCast;
%rename(DownCast) Handle_StepShape_DirectedDimensionalLocation::DownCast;
%rename(DownCast) Handle_StepShape_AdvancedBrepShapeRepresentation::DownCast;
%rename(DownCast) Handle_StepShape_TypeQualifier::DownCast;
%rename(DownCast) Handle_StepShape_ShapeDefinitionRepresentation::DownCast;
%rename(DownCast) Handle_StepShape_PlusMinusTolerance::DownCast;
%rename(DownCast) Handle_StepShape_Torus::DownCast;
%rename(DownCast) Handle_StepShape_OrientedFace::DownCast;
%rename(DownCast) Handle_StepShape_ConnectedFaceShapeRepresentation::DownCast;
%rename(DownCast) Handle_StepShape_ShellBasedSurfaceModel::DownCast;
%rename(DownCast) Handle_StepShape_BoxDomain::DownCast;
%rename(DownCast) Handle_StepShape_Sphere::DownCast;
%rename(DownCast) Handle_StepShape_EdgeBasedWireframeShapeRepresentation::DownCast;
%rename(DownCast) Handle_StepShape_Block::DownCast;
%rename(DownCast) Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation::DownCast;
%rename(DownCast) Handle_StepShape_CsgShapeRepresentation::DownCast;
%rename(DownCast) Handle_StepShape_AngularLocation::DownCast;
%rename(DownCast) Handle_StepShape_Subedge::DownCast;
%rename(DownCast) Handle_StepShape_Vertex::DownCast;
%rename(DownCast) Handle_StepShape_HArray1OfOrientedEdge::DownCast;
%rename(DownCast) Handle_StepShape_RightCircularCylinder::DownCast;
%rename(DownCast) Handle_StepShape_EdgeLoop::DownCast;
%rename(DownCast) Handle_StepShape_GeometricCurveSet::DownCast;
%rename(DownCast) Handle_StepShape_EdgeBasedWireframeModel::DownCast;
%rename(DownCast) Handle_StepShape_FacetedBrep::DownCast;
%rename(DownCast) Handle_StepShape_AngularSize::DownCast;
%rename(DownCast) Handle_StepShape_VertexPoint::DownCast;
%rename(DownCast) Handle_StepShape_VertexLoop::DownCast;
%rename(DownCast) Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation::DownCast;
%rename(DownCast) Handle_StepShape_BrepWithVoids::DownCast;
%rename(DownCast) Handle_StepShape_FacetedBrepAndBrepWithVoids::DownCast;
%rename(DownCast) Handle_StepShape_AdvancedFace::DownCast;
%rename(DownCast) Handle_StepShape_QualifiedRepresentationItem::DownCast;
%rename(DownCast) Handle_StepShape_OrientedClosedShell::DownCast;
%rename(DownCast) Handle_StepShape_ShapeDimensionRepresentation::DownCast;
%rename(DownCast) Handle_StepShape_HArray1OfEdge::DownCast;
%rename(DownCast) Handle_StepShape_ContextDependentShapeRepresentation::DownCast;
