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
%rename(downcast) Handle_TCollection_SeqNode::DownCast;
%rename(downcast) Handle_TCollection_HExtendedString::DownCast;
%rename(downcast) Handle_TCollection_AVLBaseNode::DownCast;
%rename(downcast) Handle_TCollection_HAsciiString::DownCast;
%rename(downcast) Handle_TCollection_MapNode::DownCast;
%rename(hashcode) TCollection_AsciiString::HashCode;
%rename(isequal) TCollection_AsciiString::IsEqual;
%rename(isequal) TCollection_AsciiString::IsEqual;
%rename(hashcode) TCollection_AsciiString::HASHCODE;
%rename(issimilar) TCollection_AsciiString::ISSIMILAR;
%rename(nextprimeformap) TCollection::NextPrimeForMap;
%rename(height) TCollection_AVLBaseNode::Height;
%rename(recursiveextent) TCollection_AVLBaseNode::RecursiveExtent;
%rename(recursivetotalextent) TCollection_AVLBaseNode::RecursiveTotalExtent;
%rename(hashcode) TCollection_ExtendedString::HashCode;
%rename(isequal) TCollection_ExtendedString::IsEqual;
