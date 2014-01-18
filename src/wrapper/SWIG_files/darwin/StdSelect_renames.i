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
%rename(DownCast) Handle_StdSelect_Prs::DownCast;
%rename(DownCast) Handle_StdSelect_EdgeFilter::DownCast;
%rename(DownCast) Handle_StdSelect_ViewerSelector3d::DownCast;
%rename(DownCast) Handle_StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs::DownCast;
%rename(DownCast) Handle_StdSelect_ShapeTypeFilter::DownCast;
%rename(DownCast) Handle_StdSelect_Shape::DownCast;
%rename(DownCast) Handle_StdSelect_FaceFilter::DownCast;
%rename(DownCast) Handle_StdSelect_BRepOwner::DownCast;
%rename(Load) StdSelect_BRepSelectionTool::Load;
%rename(GetStandardPriority) StdSelect_BRepSelectionTool::GetStandardPriority;
%rename(ComputeSensitive) StdSelect_BRepSelectionTool::ComputeSensitive;
%rename(GetSensitiveForFace) StdSelect_BRepSelectionTool::GetSensitiveForFace;
%rename(GetProjector) StdSelect::GetProjector;
%rename(SetDrawerForBRepOwner) StdSelect::SetDrawerForBRepOwner;
