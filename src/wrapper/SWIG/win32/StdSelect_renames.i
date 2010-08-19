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
%rename(downcast) Handle_StdSelect_SensitiveText2d::DownCast;
%rename(downcast) Handle_StdSelect_TextProjector2d::DownCast;
%rename(downcast) Handle_StdSelect_EdgeFilter::DownCast;
%rename(downcast) Handle_StdSelect_BRepOwner::DownCast;
%rename(downcast) Handle_StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs::DownCast;
%rename(downcast) Handle_StdSelect_Shape::DownCast;
%rename(downcast) Handle_StdSelect_FaceFilter::DownCast;
%rename(downcast) Handle_StdSelect_ViewerSelector2d::DownCast;
%rename(downcast) Handle_StdSelect_ViewerSelector3d::DownCast;
%rename(downcast) Handle_StdSelect_ShapeTypeFilter::DownCast;
%rename(downcast) Handle_StdSelect_Prs::DownCast;
%rename(getprojector) StdSelect::GetProjector;
%rename(setdrawerforbrepowner) StdSelect::SetDrawerForBRepOwner;
%rename(load) StdSelect_BRepSelectionTool::Load;
%rename(load) StdSelect_BRepSelectionTool::Load;
%rename(getstandardpriority) StdSelect_BRepSelectionTool::GetStandardPriority;
%rename(computesensitive) StdSelect_BRepSelectionTool::ComputeSensitive;
%rename(getsensitiveforface) StdSelect_BRepSelectionTool::GetSensitiveForFace;
