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
%rename(DownCast) Handle_ShapeFix_EdgeProjAux::DownCast;
%rename(DownCast) Handle_ShapeFix_Root::DownCast;
%rename(DownCast) Handle_ShapeFix_Face::DownCast;
%rename(DownCast) Handle_ShapeFix_Edge::DownCast;
%rename(DownCast) Handle_ShapeFix_ComposeShell::DownCast;
%rename(DownCast) Handle_ShapeFix_Shell::DownCast;
%rename(DownCast) Handle_ShapeFix_Solid::DownCast;
%rename(DownCast) Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment::DownCast;
%rename(DownCast) Handle_ShapeFix_Wire::DownCast;
%rename(DownCast) Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d::DownCast;
%rename(DownCast) Handle_ShapeFix_Wireframe::DownCast;
%rename(DownCast) Handle_ShapeFix_Shape::DownCast;
%rename(DownCast) Handle_ShapeFix_FixSmallFace::DownCast;
%rename(DownCast) Handle_ShapeFix_SplitCommonVertex::DownCast;
%rename(SameParameter) ShapeFix::SameParameter;
%rename(EncodeRegularity) ShapeFix::EncodeRegularity;
%rename(RemoveSmallEdges) ShapeFix::RemoveSmallEdges;
%rename(FixVertexPosition) ShapeFix::FixVertexPosition;
%rename(LeastEdgeSize) ShapeFix::LeastEdgeSize;
