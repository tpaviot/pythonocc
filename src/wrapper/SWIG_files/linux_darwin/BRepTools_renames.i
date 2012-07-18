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
%rename(DownCast) Handle_BRepTools_ReShape::DownCast;
%rename(DownCast) Handle_BRepTools_Modification::DownCast;
%rename(DownCast) Handle_BRepTools_NurbsConvertModification::DownCast;
%rename(DownCast) Handle_BRepTools_GTrsfModification::DownCast;
%rename(DownCast) Handle_BRepTools_TrsfModification::DownCast;
%rename(DownCast) Handle_BRepTools_DataMapNodeOfMapOfVertexPnt2d::DownCast;
%rename(UVBounds) BRepTools::UVBounds;
%rename(AddUVBounds) BRepTools::AddUVBounds;
%rename(Update) BRepTools::Update;
%rename(UpdateFaceUVPoints) BRepTools::UpdateFaceUVPoints;
%rename(Clean) BRepTools::Clean;
%rename(RemoveUnusedPCurves) BRepTools::RemoveUnusedPCurves;
%rename(Triangulation) BRepTools::Triangulation;
%rename(Compare) BRepTools::Compare;
%rename(OuterWire) BRepTools::OuterWire;
%rename(OuterShell) BRepTools::OuterShell;
%rename(Map3DEdges) BRepTools::Map3DEdges;
%rename(IsReallyClosed) BRepTools::IsReallyClosed;
%rename(Dump) BRepTools::Dump;
%rename(Write) BRepTools::Write;
%rename(Read) BRepTools::Read;
