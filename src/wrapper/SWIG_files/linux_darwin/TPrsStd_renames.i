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
%rename(DownCast) Handle_TPrsStd_Driver::DownCast;
%rename(DownCast) Handle_TPrsStd_ConstraintDriver::DownCast;
%rename(DownCast) Handle_TPrsStd_PlaneDriver::DownCast;
%rename(DownCast) Handle_TPrsStd_NamedShapeDriver::DownCast;
%rename(DownCast) Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver::DownCast;
%rename(DownCast) Handle_TPrsStd_AxisDriver::DownCast;
%rename(DownCast) Handle_TPrsStd_DriverTable::DownCast;
%rename(DownCast) Handle_TPrsStd_PointDriver::DownCast;
%rename(DownCast) Handle_TPrsStd_AISViewer::DownCast;
%rename(DownCast) Handle_TPrsStd_AISPresentation::DownCast;
%rename(DownCast) Handle_TPrsStd_GeometryDriver::DownCast;
%rename(UpdateOnlyValue) TPrsStd_ConstraintTools::UpdateOnlyValue;
%rename(ComputeDistance) TPrsStd_ConstraintTools::ComputeDistance;
%rename(ComputeParallel) TPrsStd_ConstraintTools::ComputeParallel;
%rename(ComputeTangent) TPrsStd_ConstraintTools::ComputeTangent;
%rename(ComputePerpendicular) TPrsStd_ConstraintTools::ComputePerpendicular;
%rename(ComputeConcentric) TPrsStd_ConstraintTools::ComputeConcentric;
%rename(ComputeSymmetry) TPrsStd_ConstraintTools::ComputeSymmetry;
%rename(ComputeMidPoint) TPrsStd_ConstraintTools::ComputeMidPoint;
%rename(ComputeAngle) TPrsStd_ConstraintTools::ComputeAngle;
%rename(ComputeRadius) TPrsStd_ConstraintTools::ComputeRadius;
%rename(ComputeMinRadius) TPrsStd_ConstraintTools::ComputeMinRadius;
%rename(ComputeMaxRadius) TPrsStd_ConstraintTools::ComputeMaxRadius;
%rename(ComputeEqualDistance) TPrsStd_ConstraintTools::ComputeEqualDistance;
%rename(ComputeEqualRadius) TPrsStd_ConstraintTools::ComputeEqualRadius;
%rename(ComputeFix) TPrsStd_ConstraintTools::ComputeFix;
%rename(ComputeDiameter) TPrsStd_ConstraintTools::ComputeDiameter;
%rename(ComputeOffset) TPrsStd_ConstraintTools::ComputeOffset;
%rename(ComputePlacement) TPrsStd_ConstraintTools::ComputePlacement;
%rename(ComputeCoincident) TPrsStd_ConstraintTools::ComputeCoincident;
%rename(ComputeRound) TPrsStd_ConstraintTools::ComputeRound;
%rename(ComputeOthers) TPrsStd_ConstraintTools::ComputeOthers;
%rename(ComputeTextAndValue) TPrsStd_ConstraintTools::ComputeTextAndValue;
%rename(ComputeAngleForOneFace) TPrsStd_ConstraintTools::ComputeAngleForOneFace;
%rename(GetID) TPrsStd_AISPresentation::GetID;
%rename(Set) TPrsStd_AISPresentation::Set;
%rename(Unset) TPrsStd_AISPresentation::Unset;
%rename(GetID) TPrsStd_AISViewer::GetID;
%rename(Has) TPrsStd_AISViewer::Has;
%rename(New) TPrsStd_AISViewer::New;
%rename(Find) TPrsStd_AISViewer::Find;
%rename(Update) TPrsStd_AISViewer::Update;
%rename(Get) TPrsStd_DriverTable::Get;
