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
%rename(DownCast) Handle_NIS_InteractiveObject::DownCast;
%rename(DownCast) Handle_NIS_Triangulated::DownCast;
%rename(DownCast) Handle_NIS_Drawer::DownCast;
%rename(DownCast) Handle_NIS_SurfaceDrawer::DownCast;
%rename(DownCast) Handle_NIS_TriangulatedDrawer::DownCast;
%rename(DownCast) Handle_NIS_Allocator::DownCast;
%rename(DownCast) Handle_NIS_View::DownCast;
%rename(DownCast) Handle_NIS_SelectFilter::DownCast;
%rename(DownCast) Handle_NIS_InteractiveContext::DownCast;
%rename(DownCast) Handle_NIS_Surface::DownCast;
%rename(tri2d_line_intersect) NIS_Triangulated::tri2d_line_intersect;
%rename(seg2d_line_intersect) NIS_Triangulated::seg2d_line_intersect;
%rename(seg_box_intersect) NIS_Triangulated::seg_box_intersect;
%rename(seg_box_included) NIS_Triangulated::seg_box_included;
%rename(seg_polygon_intersect) NIS_Triangulated::seg_polygon_intersect;
%rename(seg_polygon_included) NIS_Triangulated::seg_polygon_included;
%rename(ComputeBox) NIS_Triangulated::ComputeBox;
%rename(IsIn) NIS_Triangulated::IsIn;
