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

$Revision
$Date
$Author
$HeaderURL

*/
%rename(downcast) Handle_SelectBasics_SequenceNodeOfSequenceOfOwner::DownCast;
%rename(downcast) Handle_SelectBasics_ListNodeOfListOfBox2d::DownCast;
%rename(downcast) Handle_SelectBasics_SequenceNodeOfSequenceOfAddress::DownCast;
%rename(downcast) Handle_SelectBasics_SensitiveEntity::DownCast;
%rename(downcast) Handle_SelectBasics_ListNodeOfListOfSensitive::DownCast;
%rename(downcast) Handle_SelectBasics_EntityOwner::DownCast;
%rename(matchsegments) SelectBasics_BasicTool::MatchSegments;
%rename(autointer) SelectBasics_BasicTool::AutoInter;
%rename(matchpolyg2d) SelectBasics_BasicTool::MatchPolyg2d;
%rename(maxownerpriority) SelectBasics::MaxOwnerPriority;
%rename(minownerpriority) SelectBasics::MinOwnerPriority;
