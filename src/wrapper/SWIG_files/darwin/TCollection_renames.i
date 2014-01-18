/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/
%rename(DownCast) Handle_TCollection_SeqNode::DownCast;
%rename(DownCast) Handle_TCollection_HExtendedString::DownCast;
%rename(DownCast) Handle_TCollection_AVLBaseNode::DownCast;
%rename(DownCast) Handle_TCollection_HAsciiString::DownCast;
%rename(DownCast) Handle_TCollection_MapNode::DownCast;
%rename(HashCode) TCollection_AsciiString::HashCode;
%rename(IsEqual) TCollection_AsciiString::IsEqual;
%rename(HASHCODE) TCollection_AsciiString::HASHCODE;
%rename(ISSIMILAR) TCollection_AsciiString::ISSIMILAR;
%rename(NextPrimeForMap) TCollection::NextPrimeForMap;
%rename(Height) TCollection_AVLBaseNode::Height;
%rename(RecursiveExtent) TCollection_AVLBaseNode::RecursiveExtent;
%rename(RecursiveTotalExtent) TCollection_AVLBaseNode::RecursiveTotalExtent;
%rename(HashCode) TCollection_ExtendedString::HashCode;
%rename(IsEqual) TCollection_ExtendedString::IsEqual;
