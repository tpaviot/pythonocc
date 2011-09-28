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
%rename(DownCast) Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape::DownCast;
%rename(DownCast) Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox::DownCast;
%rename(DownCast) Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo::DownCast;
%rename(DownCast) Handle_GEOMAlgo_HAlgo::DownCast;
%rename(DownCast) Handle_GEOMAlgo_Clsf::DownCast;
%rename(DownCast) Handle_GEOMAlgo_ClsfBox::DownCast;
%rename(DownCast) Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal::DownCast;
%rename(DownCast) Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape::DownCast;
%rename(DownCast) Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape::DownCast;
%rename(DownCast) Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape::DownCast;
%rename(DownCast) Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet::DownCast;
%rename(DownCast) Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape::DownCast;
%rename(DownCast) Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger::DownCast;
%rename(DownCast) Handle_GEOMAlgo_ClsfSurf::DownCast;
%rename(DownCast) Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState::DownCast;
%rename(DownCast) Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape::DownCast;
%rename(DownCast) Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes::DownCast;
%rename(DownCast) Handle_GEOMAlgo_ClsfSolid::DownCast;
%rename(DownCast) Handle_GEOMAlgo_ListNodeOfListOfPnt::DownCast;
%rename(HashCode) GEOMAlgo_PassKeyShapeMapHasher::HashCode;
%rename(IsEqual) GEOMAlgo_PassKeyShapeMapHasher::IsEqual;
%rename(CopySource) GEOMAlgo_FinderShapeOn::CopySource;
%rename(BuildTriangulation) GEOMAlgo_FinderShapeOn::BuildTriangulation;
%rename(IsSplitToReverse) GEOMAlgo_Tools3D::IsSplitToReverse;
%rename(Sense) GEOMAlgo_Tools3D::Sense;
%rename(CopyFace) GEOMAlgo_Tools3D::CopyFace;
%rename(MakeContainer) GEOMAlgo_Tools3D::MakeContainer;
%rename(MakeConnexityBlock) GEOMAlgo_Tools3D::MakeConnexityBlock;
%rename(ComputeStateByOnePoint) GEOMAlgo_Tools3D::ComputeStateByOnePoint;
%rename(ComputeState) GEOMAlgo_Tools3D::ComputeState;
%rename(IsInternalFace) GEOMAlgo_Tools3D::IsInternalFace;
%rename(GetFaceOff) GEOMAlgo_Tools3D::GetFaceOff;
%rename(GetEdgeOnFace) GEOMAlgo_Tools3D::GetEdgeOnFace;
%rename(GetEdgeOff) GEOMAlgo_Tools3D::GetEdgeOff;
%rename(IsCompositeShape) GEOMAlgo_Tools::IsCompositeShape;
%rename(RefineSDShapes) GEOMAlgo_Tools::RefineSDShapes;
%rename(FindSDShapes) GEOMAlgo_Tools::FindSDShapes;
%rename(ProjectPointOnShape) GEOMAlgo_Tools::ProjectPointOnShape;
%rename(PointOnShape) GEOMAlgo_Tools::PointOnShape;
%rename(PointOnEdge) GEOMAlgo_Tools::PointOnEdge;
%rename(PointOnFace) GEOMAlgo_Tools::PointOnFace;
%rename(RefinePCurveForEdgeOnFace) GEOMAlgo_Tools::RefinePCurveForEdgeOnFace;
%rename(IsUPeriodic) GEOMAlgo_Tools::IsUPeriodic;
%rename(CorrectWires) GEOMAlgo_Tools::CorrectWires;
%rename(HashCode) GEOMAlgo_PassKeyMapHasher::HashCode;
%rename(IsEqual) GEOMAlgo_PassKeyMapHasher::IsEqual;
%rename(IsHole) GEOMAlgo_BuilderTools::IsHole;
%rename(IsAnalytic) GEOMAlgo_SurfaceTools::IsAnalytic;
%rename(IsCoaxial) GEOMAlgo_SurfaceTools::IsCoaxial;
%rename(IsConformState) GEOMAlgo_SurfaceTools::IsConformState;
%rename(GetState) GEOMAlgo_SurfaceTools::GetState;
%rename(Distance) GEOMAlgo_SurfaceTools::Distance;
%rename(ReverseState) GEOMAlgo_SurfaceTools::ReverseState;
