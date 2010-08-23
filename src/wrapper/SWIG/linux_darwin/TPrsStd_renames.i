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
%rename(downcast) Handle_TPrsStd_Driver::DownCast;
%rename(downcast) Handle_TPrsStd_ConstraintDriver::DownCast;
%rename(downcast) Handle_TPrsStd_DriverTable::DownCast;
%rename(downcast) Handle_TPrsStd_PlaneDriver::DownCast;
%rename(downcast) Handle_TPrsStd_AISPresentation::DownCast;
%rename(downcast) Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver::DownCast;
%rename(downcast) Handle_TPrsStd_AxisDriver::DownCast;
%rename(downcast) Handle_TPrsStd_PointDriver::DownCast;
%rename(downcast) Handle_TPrsStd_AISViewer::DownCast;
%rename(downcast) Handle_TPrsStd_GeometryDriver::DownCast;
%rename(downcast) Handle_TPrsStd_NamedShapeDriver::DownCast;
%rename(updateonlyvalue) TPrsStd_ConstraintTools::UpdateOnlyValue;
%rename(computedistance) TPrsStd_ConstraintTools::ComputeDistance;
%rename(computeparallel) TPrsStd_ConstraintTools::ComputeParallel;
%rename(computetangent) TPrsStd_ConstraintTools::ComputeTangent;
%rename(computeperpendicular) TPrsStd_ConstraintTools::ComputePerpendicular;
%rename(computeconcentric) TPrsStd_ConstraintTools::ComputeConcentric;
%rename(computesymmetry) TPrsStd_ConstraintTools::ComputeSymmetry;
%rename(computemidpoint) TPrsStd_ConstraintTools::ComputeMidPoint;
%rename(computeangle) TPrsStd_ConstraintTools::ComputeAngle;
%rename(computeradius) TPrsStd_ConstraintTools::ComputeRadius;
%rename(computeminradius) TPrsStd_ConstraintTools::ComputeMinRadius;
%rename(computemaxradius) TPrsStd_ConstraintTools::ComputeMaxRadius;
%rename(computeequaldistance) TPrsStd_ConstraintTools::ComputeEqualDistance;
%rename(computeequalradius) TPrsStd_ConstraintTools::ComputeEqualRadius;
%rename(computefix) TPrsStd_ConstraintTools::ComputeFix;
%rename(computediameter) TPrsStd_ConstraintTools::ComputeDiameter;
%rename(computeoffset) TPrsStd_ConstraintTools::ComputeOffset;
%rename(computeplacement) TPrsStd_ConstraintTools::ComputePlacement;
%rename(computecoincident) TPrsStd_ConstraintTools::ComputeCoincident;
%rename(computeround) TPrsStd_ConstraintTools::ComputeRound;
%rename(computeothers) TPrsStd_ConstraintTools::ComputeOthers;
%rename(computetextandvalue) TPrsStd_ConstraintTools::ComputeTextAndValue;
%rename(computeangleforoneface) TPrsStd_ConstraintTools::ComputeAngleForOneFace;
%rename(getid) TPrsStd_AISViewer::GetID;
%rename(has) TPrsStd_AISViewer::Has;
%rename(new) TPrsStd_AISViewer::New;
%rename(find) TPrsStd_AISViewer::Find;
%rename(update) TPrsStd_AISViewer::Update;
%rename(getid) TPrsStd_AISPresentation::GetID;
%rename(set) TPrsStd_AISPresentation::Set;
%rename(unset) TPrsStd_AISPresentation::Unset;
%rename(get) TPrsStd_DriverTable::Get;
