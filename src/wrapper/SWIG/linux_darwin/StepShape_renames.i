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

$Revision
$Date
$Author
$HeaderURL

*/
%rename(downcast) Handle_StepShape_TopologicalRepresentationItem::DownCast;
%rename(downcast) Handle_StepShape_ConnectedEdgeSet::DownCast;
%rename(downcast) Handle_StepShape_HArray1OfConnectedEdgeSet::DownCast;
%rename(downcast) Handle_StepShape_SolidModel::DownCast;
%rename(downcast) Handle_StepShape_SweptFaceSolid::DownCast;
%rename(downcast) Handle_StepShape_RevolvedFaceSolid::DownCast;
%rename(downcast) Handle_StepShape_ShapeRepresentation::DownCast;
%rename(downcast) Handle_StepShape_FacetedBrepShapeRepresentation::DownCast;
%rename(downcast) Handle_StepShape_NonManifoldSurfaceShapeRepresentation::DownCast;
%rename(downcast) Handle_StepShape_RightCircularCone::DownCast;
%rename(downcast) Handle_StepShape_Edge::DownCast;
%rename(downcast) Handle_StepShape_OrientedEdge::DownCast;
%rename(downcast) Handle_StepShape_SeamEdge::DownCast;
%rename(downcast) Handle_StepShape_ManifoldSurfaceShapeRepresentation::DownCast;
%rename(downcast) Handle_StepShape_HArray1OfFaceBound::DownCast;
%rename(downcast) Handle_StepShape_ConnectedFaceSet::DownCast;
%rename(downcast) Handle_StepShape_OpenShell::DownCast;
%rename(downcast) Handle_StepShape_OrientedOpenShell::DownCast;
%rename(downcast) Handle_StepShape_ExtrudedFaceSolid::DownCast;
%rename(downcast) Handle_StepShape_MeasureQualification::DownCast;
%rename(downcast) Handle_StepShape_Loop::DownCast;
%rename(downcast) Handle_StepShape_PointRepresentation::DownCast;
%rename(downcast) Handle_StepShape_Face::DownCast;
%rename(downcast) Handle_StepShape_Subface::DownCast;
%rename(downcast) Handle_StepShape_BooleanResult::DownCast;
%rename(downcast) Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem::DownCast;
%rename(downcast) Handle_StepShape_PolyLoop::DownCast;
%rename(downcast) Handle_StepShape_HArray1OfValueQualifier::DownCast;
%rename(downcast) Handle_StepShape_HalfSpaceSolid::DownCast;
%rename(downcast) Handle_StepShape_BoxedHalfSpace::DownCast;
%rename(downcast) Handle_StepShape_Path::DownCast;
%rename(downcast) Handle_StepShape_OrientedPath::DownCast;
%rename(downcast) Handle_StepShape_FaceBound::DownCast;
%rename(downcast) Handle_StepShape_FaceOuterBound::DownCast;
%rename(downcast) Handle_StepShape_HArray1OfOrientedClosedShell::DownCast;
%rename(downcast) Handle_StepShape_SolidReplica::DownCast;
%rename(downcast) Handle_StepShape_HArray1OfGeometricSetSelect::DownCast;
%rename(downcast) Handle_StepShape_HArray1OfFace::DownCast;
%rename(downcast) Handle_StepShape_ClosedShell::DownCast;
%rename(downcast) Handle_StepShape_DimensionalCharacteristicRepresentation::DownCast;
%rename(downcast) Handle_StepShape_FaceSurface::DownCast;
%rename(downcast) Handle_StepShape_LimitsAndFits::DownCast;
%rename(downcast) Handle_StepShape_SweptAreaSolid::DownCast;
%rename(downcast) Handle_StepShape_RevolvedAreaSolid::DownCast;
%rename(downcast) Handle_StepShape_DimensionalSize::DownCast;
%rename(downcast) Handle_StepShape_DimensionalSizeWithPath::DownCast;
%rename(downcast) Handle_StepShape_LoopAndPath::DownCast;
%rename(downcast) Handle_StepShape_HArray1OfConnectedFaceSet::DownCast;
%rename(downcast) Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation::DownCast;
%rename(downcast) Handle_StepShape_HArray1OfShell::DownCast;
%rename(downcast) Handle_StepShape_DimensionalLocation::DownCast;
%rename(downcast) Handle_StepShape_TransitionalShapeRepresentation::DownCast;
%rename(downcast) Handle_StepShape_ManifoldSolidBrep::DownCast;
%rename(downcast) Handle_StepShape_FaceBasedSurfaceModel::DownCast;
%rename(downcast) Handle_StepShape_CsgSolid::DownCast;
%rename(downcast) Handle_StepShape_GeometricSet::DownCast;
%rename(downcast) Handle_StepShape_ExtrudedAreaSolid::DownCast;
%rename(downcast) Handle_StepShape_PrecisionQualifier::DownCast;
%rename(downcast) Handle_StepShape_ToleranceValue::DownCast;
%rename(downcast) Handle_StepShape_EdgeCurve::DownCast;
%rename(downcast) Handle_StepShape_ConnectedFaceSubSet::DownCast;
%rename(downcast) Handle_StepShape_ShapeRepresentationWithParameters::DownCast;
%rename(downcast) Handle_StepShape_DimensionalLocationWithPath::DownCast;
%rename(downcast) Handle_StepShape_RightAngularWedge::DownCast;
%rename(downcast) Handle_StepShape_CompoundShapeRepresentation::DownCast;
%rename(downcast) Handle_StepShape_DirectedDimensionalLocation::DownCast;
%rename(downcast) Handle_StepShape_AdvancedBrepShapeRepresentation::DownCast;
%rename(downcast) Handle_StepShape_TypeQualifier::DownCast;
%rename(downcast) Handle_StepShape_ShapeDefinitionRepresentation::DownCast;
%rename(downcast) Handle_StepShape_PlusMinusTolerance::DownCast;
%rename(downcast) Handle_StepShape_Torus::DownCast;
%rename(downcast) Handle_StepShape_OrientedFace::DownCast;
%rename(downcast) Handle_StepShape_ConnectedFaceShapeRepresentation::DownCast;
%rename(downcast) Handle_StepShape_ShellBasedSurfaceModel::DownCast;
%rename(downcast) Handle_StepShape_BoxDomain::DownCast;
%rename(downcast) Handle_StepShape_Sphere::DownCast;
%rename(downcast) Handle_StepShape_EdgeBasedWireframeShapeRepresentation::DownCast;
%rename(downcast) Handle_StepShape_Block::DownCast;
%rename(downcast) Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation::DownCast;
%rename(downcast) Handle_StepShape_CsgShapeRepresentation::DownCast;
%rename(downcast) Handle_StepShape_AngularLocation::DownCast;
%rename(downcast) Handle_StepShape_Subedge::DownCast;
%rename(downcast) Handle_StepShape_Vertex::DownCast;
%rename(downcast) Handle_StepShape_HArray1OfOrientedEdge::DownCast;
%rename(downcast) Handle_StepShape_RightCircularCylinder::DownCast;
%rename(downcast) Handle_StepShape_EdgeLoop::DownCast;
%rename(downcast) Handle_StepShape_GeometricCurveSet::DownCast;
%rename(downcast) Handle_StepShape_EdgeBasedWireframeModel::DownCast;
%rename(downcast) Handle_StepShape_FacetedBrep::DownCast;
%rename(downcast) Handle_StepShape_AngularSize::DownCast;
%rename(downcast) Handle_StepShape_VertexPoint::DownCast;
%rename(downcast) Handle_StepShape_VertexLoop::DownCast;
%rename(downcast) Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation::DownCast;
%rename(downcast) Handle_StepShape_BrepWithVoids::DownCast;
%rename(downcast) Handle_StepShape_FacetedBrepAndBrepWithVoids::DownCast;
%rename(downcast) Handle_StepShape_AdvancedFace::DownCast;
%rename(downcast) Handle_StepShape_QualifiedRepresentationItem::DownCast;
%rename(downcast) Handle_StepShape_OrientedClosedShell::DownCast;
%rename(downcast) Handle_StepShape_ShapeDimensionRepresentation::DownCast;
%rename(downcast) Handle_StepShape_HArray1OfEdge::DownCast;
%rename(downcast) Handle_StepShape_ContextDependentShapeRepresentation::DownCast;
