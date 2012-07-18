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
%rename(DownCast) Handle_TopoDS_TShape::DownCast;
%rename(DownCast) Handle_TopoDS_TVertex::DownCast;
%rename(DownCast) Handle_TopoDS_FrozenShape::DownCast;
%rename(DownCast) Handle_TopoDS_ListNodeOfListOfShape::DownCast;
%rename(DownCast) Handle_TopoDS_TFace::DownCast;
%rename(DownCast) Handle_TopoDS_TCompSolid::DownCast;
%rename(DownCast) Handle_TopoDS_UnCompatibleShapes::DownCast;
%rename(DownCast) Handle_TopoDS_TCompound::DownCast;
%rename(DownCast) Handle_TopoDS_HShape::DownCast;
%rename(DownCast) Handle_TopoDS_TShell::DownCast;
%rename(DownCast) Handle_TopoDS_TEdge::DownCast;
%rename(DownCast) Handle_TopoDS_TSolid::DownCast;
%rename(DownCast) Handle_TopoDS_TWire::DownCast;
%rename(vertex) TopoDS::Vertex;
%rename(edge) TopoDS::Edge;
%rename(wire) TopoDS::Wire;
%rename(face) TopoDS::Face;
%rename(shell) TopoDS::Shell;
%rename(solid) TopoDS::Solid;
%rename(compsolid) TopoDS::CompSolid;
%rename(compound) TopoDS::Compound;
