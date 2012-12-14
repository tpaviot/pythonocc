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
%rename(DownCast) Handle_NMTDS_StdMapNodeOfMapOfPassKey::DownCast;
%rename(DownCast) Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape::DownCast;
%rename(DownCast) Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBndSphere::DownCast;
%rename(DownCast) Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors::DownCast;
%rename(DownCast) Handle_NMTDS_ListNodeOfListOfPassKey::DownCast;
%rename(DownCast) Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger::DownCast;
%rename(DownCast) Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger::DownCast;
%rename(DownCast) Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean::DownCast;
%rename(DownCast) Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox::DownCast;
%rename(DownCast) Handle_NMTDS_ListNodeOfListOfPassKeyBoolean::DownCast;
%rename(HashCode) NMTDS_PassKeyShapeMapHasher::HashCode;
%rename(IsEqual) NMTDS_PassKeyShapeMapHasher::IsEqual;
%rename(HashCode) NMTDS_PassKeyMapHasher::HashCode;
%rename(IsEqual) NMTDS_PassKeyMapHasher::IsEqual;
%rename(FillMVSD) NMTDS_Iterator::FillMVSD;
%rename(TypeToInteger) NMTDS_Tools::TypeToInteger;
%rename(HasBRep) NMTDS_Tools::HasBRep;
%rename(ComputeVV) NMTDS_Tools::ComputeVV;
%rename(CopyShape) NMTDS_Tools::CopyShape;
