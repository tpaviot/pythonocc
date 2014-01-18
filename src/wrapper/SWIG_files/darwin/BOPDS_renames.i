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
%rename(DownCast) Handle_BOPDS_CommonBlock::DownCast;
%rename(DownCast) Handle_BOPDS_PaveBlock::DownCast;
%rename(TypeToInteger) BOPDS_Tools::TypeToInteger;
%rename(HasBRep) BOPDS_Tools::HasBRep;
%rename(HashCode) BOPDS_PassKeyMapHasher::HashCode;
%rename(IsEqual) BOPDS_PassKeyMapHasher::IsEqual;
%rename(HashCode) BOPDS_PaveMapHasher::HashCode;
%rename(IsEqual) BOPDS_PaveMapHasher::IsEqual;
