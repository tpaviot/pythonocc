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
%rename(downcast) Handle_Select3D_ListNodeOfListOfSensitive::DownCast;
%rename(downcast) Handle_Select3D_SensitiveEntity::DownCast;
%rename(downcast) Handle_Select3D_SensitivePoly::DownCast;
%rename(downcast) Handle_Select3D_SensitiveCircle::DownCast;
%rename(downcast) Handle_Select3D_SensitiveBox::DownCast;
%rename(downcast) Handle_Select3D_SensitiveFace::DownCast;
%rename(downcast) Handle_Select3D_SensitiveTriangle::DownCast;
%rename(downcast) Handle_Select3D_SensitiveCurve::DownCast;
%rename(downcast) Handle_Select3D_SensitiveWire::DownCast;
%rename(downcast) Handle_Select3D_ListNodeOfListOfSensitiveTriangle::DownCast;
%rename(downcast) Handle_Select3D_SensitiveTriangulation::DownCast;
%rename(downcast) Handle_Select3D_SensitiveGroup::DownCast;
%rename(downcast) Handle_Select3D_SensitiveSegment::DownCast;
%rename(downcast) Handle_Select3D_SensitivePoint::DownCast;
%rename(downcast) Handle_Select3D_SequenceNodeOfSensitiveEntitySequence::DownCast;
%rename(dumpbox) Select3D_SensitiveEntity::DumpBox;
%rename(status) Select3D_SensitiveTriangle::Status;
