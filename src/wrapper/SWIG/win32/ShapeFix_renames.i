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
%rename(downcast) Handle_ShapeFix_EdgeProjAux::DownCast;
%rename(downcast) Handle_ShapeFix_Root::DownCast;
%rename(downcast) Handle_ShapeFix_Face::DownCast;
%rename(downcast) Handle_ShapeFix_ComposeShell::DownCast;
%rename(downcast) Handle_ShapeFix_SplitCommonVertex::DownCast;
%rename(downcast) Handle_ShapeFix_Edge::DownCast;
%rename(downcast) Handle_ShapeFix_Solid::DownCast;
%rename(downcast) Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d::DownCast;
%rename(downcast) Handle_ShapeFix_Wire::DownCast;
%rename(downcast) Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment::DownCast;
%rename(downcast) Handle_ShapeFix_Wireframe::DownCast;
%rename(downcast) Handle_ShapeFix_Shape::DownCast;
%rename(downcast) Handle_ShapeFix_FixSmallFace::DownCast;
%rename(downcast) Handle_ShapeFix_Shell::DownCast;
%rename(sameparameter) ShapeFix::SameParameter;
%rename(encoderegularity) ShapeFix::EncodeRegularity;
%rename(removesmalledges) ShapeFix::RemoveSmallEdges;
%rename(fixvertexposition) ShapeFix::FixVertexPosition;
