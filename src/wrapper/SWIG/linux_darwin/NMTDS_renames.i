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
%rename(downcast) Handle_NMTDS_StdMapNodeOfMapOfPassKey::DownCast;
%rename(downcast) Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean::DownCast;
%rename(downcast) Handle_NMTDS_ListNodeOfListOfPassKey::DownCast;
%rename(downcast) Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger::DownCast;
%rename(downcast) Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger::DownCast;
%rename(downcast) Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors::DownCast;
%rename(downcast) Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox::DownCast;
%rename(downcast) Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape::DownCast;
%rename(downcast) Handle_NMTDS_ListNodeOfListOfPassKeyBoolean::DownCast;
%rename(hashcode) NMTDS_PassKeyShapeMapHasher::HashCode;
%rename(isequal) NMTDS_PassKeyShapeMapHasher::IsEqual;
%rename(hashcode) NMTDS_PassKeyMapHasher::HashCode;
%rename(isequal) NMTDS_PassKeyMapHasher::IsEqual;
%rename(fillmvsd) NMTDS_Iterator::FillMVSD;
%rename(typetointeger) NMTDS_Tools::TypeToInteger;
%rename(hasbrep) NMTDS_Tools::HasBRep;
%rename(computevv) NMTDS_Tools::ComputeVV;
%rename(copyshape) NMTDS_Tools::CopyShape;
%rename(copyshape) NMTDS_Tools::CopyShape;
