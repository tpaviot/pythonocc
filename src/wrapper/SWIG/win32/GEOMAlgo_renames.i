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
%rename(downcast) Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape::DownCast;
%rename(downcast) Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger::DownCast;
%rename(downcast) Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes::DownCast;
%rename(downcast) Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox::DownCast;
%rename(downcast) Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal::DownCast;
%rename(downcast) Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape::DownCast;
%rename(downcast) Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape::DownCast;
%rename(downcast) Handle_GEOMAlgo_HAlgo::DownCast;
%rename(downcast) Handle_GEOMAlgo_Clsf::DownCast;
%rename(downcast) Handle_GEOMAlgo_ClsfBox::DownCast;
%rename(downcast) Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet::DownCast;
%rename(downcast) Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo::DownCast;
%rename(downcast) Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape::DownCast;
%rename(downcast) Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState::DownCast;
%rename(downcast) Handle_GEOMAlgo_ClsfSurf::DownCast;
%rename(downcast) Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape::DownCast;
%rename(downcast) Handle_GEOMAlgo_ClsfSolid::DownCast;
%rename(downcast) Handle_GEOMAlgo_ListNodeOfListOfPnt::DownCast;
%rename(hashcode) GEOMAlgo_PassKeyShapeMapHasher::HashCode;
%rename(isequal) GEOMAlgo_PassKeyShapeMapHasher::IsEqual;
%rename(copysource) GEOMAlgo_FinderShapeOn::CopySource;
%rename(buildtriangulation) GEOMAlgo_FinderShapeOn::BuildTriangulation;
%rename(issplittoreverse) GEOMAlgo_Tools3D::IsSplitToReverse;
%rename(issplittoreverse) GEOMAlgo_Tools3D::IsSplitToReverse;
%rename(issplittoreverse) GEOMAlgo_Tools3D::IsSplitToReverse;
%rename(sense) GEOMAlgo_Tools3D::Sense;
%rename(copyface) GEOMAlgo_Tools3D::CopyFace;
%rename(makecontainer) GEOMAlgo_Tools3D::MakeContainer;
%rename(makeconnexityblock) GEOMAlgo_Tools3D::MakeConnexityBlock;
%rename(computestatebyonepoint) GEOMAlgo_Tools3D::ComputeStateByOnePoint;
%rename(computestate) GEOMAlgo_Tools3D::ComputeState;
%rename(computestate) GEOMAlgo_Tools3D::ComputeState;
%rename(computestate) GEOMAlgo_Tools3D::ComputeState;
%rename(computestate) GEOMAlgo_Tools3D::ComputeState;
%rename(isinternalface) GEOMAlgo_Tools3D::IsInternalFace;
%rename(isinternalface) GEOMAlgo_Tools3D::IsInternalFace;
%rename(isinternalface) GEOMAlgo_Tools3D::IsInternalFace;
%rename(getfaceoff) GEOMAlgo_Tools3D::GetFaceOff;
%rename(getedgeonface) GEOMAlgo_Tools3D::GetEdgeOnFace;
%rename(getedgeoff) GEOMAlgo_Tools3D::GetEdgeOff;
%rename(hashcode) GEOMAlgo_PassKeyMapHasher::HashCode;
%rename(isequal) GEOMAlgo_PassKeyMapHasher::IsEqual;
%rename(isanalytic) GEOMAlgo_SurfaceTools::IsAnalytic;
%rename(iscoaxial) GEOMAlgo_SurfaceTools::IsCoaxial;
%rename(isconformstate) GEOMAlgo_SurfaceTools::IsConformState;
%rename(getstate) GEOMAlgo_SurfaceTools::GetState;
%rename(getstate) GEOMAlgo_SurfaceTools::GetState;
%rename(distance) GEOMAlgo_SurfaceTools::Distance;
%rename(distance) GEOMAlgo_SurfaceTools::Distance;
%rename(distance) GEOMAlgo_SurfaceTools::Distance;
%rename(reversestate) GEOMAlgo_SurfaceTools::ReverseState;
%rename(iscompositeshape) GEOMAlgo_Tools::IsCompositeShape;
%rename(refinesdshapes) GEOMAlgo_Tools::RefineSDShapes;
%rename(findsdshapes) GEOMAlgo_Tools::FindSDShapes;
%rename(findsdshapes) GEOMAlgo_Tools::FindSDShapes;
%rename(projectpointonshape) GEOMAlgo_Tools::ProjectPointOnShape;
%rename(pointonshape) GEOMAlgo_Tools::PointOnShape;
%rename(pointonedge) GEOMAlgo_Tools::PointOnEdge;
%rename(pointonedge) GEOMAlgo_Tools::PointOnEdge;
%rename(pointonface) GEOMAlgo_Tools::PointOnFace;
%rename(pointonface) GEOMAlgo_Tools::PointOnFace;
%rename(refinepcurveforedgeonface) GEOMAlgo_Tools::RefinePCurveForEdgeOnFace;
%rename(isuperiodic) GEOMAlgo_Tools::IsUPeriodic;
%rename(ishole) GEOMAlgo_BuilderTools::IsHole;
%rename(ishole) GEOMAlgo_BuilderTools::IsHole;
