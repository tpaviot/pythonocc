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
%rename(downcast) Handle_StepFEA_NodeRepresentation::DownCast;
%rename(downcast) Handle_StepFEA_DummyNode::DownCast;
%rename(downcast) Handle_StepFEA_FeaMaterialPropertyRepresentationItem::DownCast;
%rename(downcast) Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness::DownCast;
%rename(downcast) Handle_StepFEA_FeaLinearElasticity::DownCast;
%rename(downcast) Handle_StepFEA_FeaShellMembraneStiffness::DownCast;
%rename(downcast) Handle_StepFEA_HSequenceOfCurve3dElementProperty::DownCast;
%rename(downcast) Handle_StepFEA_FeaModel::DownCast;
%rename(downcast) Handle_StepFEA_FeaModel3d::DownCast;
%rename(downcast) Handle_StepFEA_SequenceNodeOfSequenceOfElementRepresentation::DownCast;
%rename(downcast) Handle_StepFEA_FeaModelDefinition::DownCast;
%rename(downcast) Handle_StepFEA_HArray1OfDegreeOfFreedom::DownCast;
%rename(downcast) Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion::DownCast;
%rename(downcast) Handle_StepFEA_ElementRepresentation::DownCast;
%rename(downcast) Handle_StepFEA_HArray1OfNodeRepresentation::DownCast;
%rename(downcast) Handle_StepFEA_FeaRepresentationItem::DownCast;
%rename(downcast) Handle_StepFEA_AlignedSurface3dElementCoordinateSystem::DownCast;
%rename(downcast) Handle_StepFEA_FeaMoistureAbsorption::DownCast;
%rename(downcast) Handle_StepFEA_Surface3dElementRepresentation::DownCast;
%rename(downcast) Handle_StepFEA_FeaAreaDensity::DownCast;
%rename(downcast) Handle_StepFEA_FeaMaterialPropertyRepresentation::DownCast;
%rename(downcast) Handle_StepFEA_ConstantSurface3dElementCoordinateSystem::DownCast;
%rename(downcast) Handle_StepFEA_FeaCurveSectionGeometricRelationship::DownCast;
%rename(downcast) Handle_StepFEA_CurveElementLocation::DownCast;
%rename(downcast) Handle_StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty::DownCast;
%rename(downcast) Handle_StepFEA_Curve3dElementRepresentation::DownCast;
%rename(downcast) Handle_StepFEA_HArray1OfElementRepresentation::DownCast;
%rename(downcast) Handle_StepFEA_AlignedCurve3dElementCoordinateSystem::DownCast;
%rename(downcast) Handle_StepFEA_NodeSet::DownCast;
%rename(downcast) Handle_StepFEA_ParametricCurve3dElementCoordinateSystem::DownCast;
%rename(downcast) Handle_StepFEA_CurveElementInterval::DownCast;
%rename(downcast) Handle_StepFEA_CurveElementIntervalLinearlyVarying::DownCast;
%rename(downcast) Handle_StepFEA_Node::DownCast;
%rename(downcast) Handle_StepFEA_NodeWithSolutionCoordinateSystem::DownCast;
%rename(downcast) Handle_StepFEA_CurveElementEndRelease::DownCast;
%rename(downcast) Handle_StepFEA_NodeWithVector::DownCast;
%rename(downcast) Handle_StepFEA_FreedomAndCoefficient::DownCast;
%rename(downcast) Handle_StepFEA_NodeDefinition::DownCast;
%rename(downcast) Handle_StepFEA_HArray1OfCurveElementInterval::DownCast;
%rename(downcast) Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion::DownCast;
%rename(downcast) Handle_StepFEA_CurveElementIntervalConstant::DownCast;
%rename(downcast) Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem::DownCast;
%rename(downcast) Handle_StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship::DownCast;
%rename(downcast) Handle_StepFEA_GeometricNode::DownCast;
%rename(downcast) Handle_StepFEA_SymmetricTensor23dMember::DownCast;
%rename(downcast) Handle_StepFEA_CurveElementEndOffset::DownCast;
%rename(downcast) Handle_StepFEA_HSequenceOfElementGeometricRelationship::DownCast;
%rename(downcast) Handle_StepFEA_FeaGroup::DownCast;
%rename(downcast) Handle_StepFEA_ElementGroup::DownCast;
%rename(downcast) Handle_StepFEA_FeaShellBendingStiffness::DownCast;
%rename(downcast) Handle_StepFEA_FeaMassDensity::DownCast;
%rename(downcast) Handle_StepFEA_FeaSurfaceSectionGeometricRelationship::DownCast;
%rename(downcast) Handle_StepFEA_ParametricSurface3dElementCoordinateSystem::DownCast;
%rename(downcast) Handle_StepFEA_Curve3dElementProperty::DownCast;
%rename(downcast) Handle_StepFEA_FeaShellShearStiffness::DownCast;
%rename(downcast) Handle_StepFEA_HSequenceOfElementRepresentation::DownCast;
%rename(downcast) Handle_StepFEA_HSequenceOfNodeRepresentation::DownCast;
%rename(downcast) Handle_StepFEA_FeaAxis2Placement3d::DownCast;
%rename(downcast) Handle_StepFEA_FreedomsList::DownCast;
%rename(downcast) Handle_StepFEA_SequenceNodeOfSequenceOfNodeRepresentation::DownCast;
%rename(downcast) Handle_StepFEA_Volume3dElementRepresentation::DownCast;
%rename(downcast) Handle_StepFEA_ParametricCurve3dElementCoordinateDirection::DownCast;
%rename(downcast) Handle_StepFEA_SymmetricTensor43dMember::DownCast;
%rename(downcast) Handle_StepFEA_HArray1OfCurveElementEndOffset::DownCast;
%rename(downcast) Handle_StepFEA_NodeGroup::DownCast;
%rename(downcast) Handle_StepFEA_HArray1OfCurveElementEndRelease::DownCast;
%rename(downcast) Handle_StepFEA_ElementGeometricRelationship::DownCast;
%rename(downcast) Handle_StepFEA_DegreeOfFreedomMember::DownCast;
%rename(downcast) Handle_StepFEA_FeaParametricPoint::DownCast;
