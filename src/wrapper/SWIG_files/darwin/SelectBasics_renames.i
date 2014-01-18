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
%rename(DownCast) Handle_SelectBasics_ListNodeOfListOfBox2d::DownCast;
%rename(DownCast) Handle_SelectBasics_ListNodeOfListOfSensitive::DownCast;
%rename(DownCast) Handle_SelectBasics_SequenceNodeOfSequenceOfOwner::DownCast;
%rename(DownCast) Handle_SelectBasics_SensitiveEntity::DownCast;
%rename(DownCast) Handle_SelectBasics_EntityOwner::DownCast;
%rename(MatchSegments) SelectBasics_BasicTool::MatchSegments;
%rename(MatchSegment) SelectBasics_BasicTool::MatchSegment;
%rename(AutoInter) SelectBasics_BasicTool::AutoInter;
%rename(MatchPolyg2d) SelectBasics_BasicTool::MatchPolyg2d;
%rename(MaxOwnerPriority) SelectBasics::MaxOwnerPriority;
%rename(MinOwnerPriority) SelectBasics::MinOwnerPriority;
