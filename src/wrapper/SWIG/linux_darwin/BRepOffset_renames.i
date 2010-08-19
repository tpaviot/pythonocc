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
%rename(downcast) Handle_BRepOffset_DataMapNodeOfDataMapOfShapeReal::DownCast;
%rename(downcast) Handle_BRepOffset_ListNodeOfListOfInterval::DownCast;
%rename(downcast) Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset::DownCast;
%rename(downcast) Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval::DownCast;
%rename(downcast) Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape::DownCast;
%rename(surface) BRepOffset::Surface;
%rename(compute) BRepOffset_Inter2d::Compute;
%rename(connexintbyint) BRepOffset_Inter2d::ConnexIntByInt;
%rename(edgevertices) BRepOffset_Tool::EdgeVertices;
%rename(oriedgeinface) BRepOffset_Tool::OriEdgeInFace;
%rename(orientsection) BRepOffset_Tool::OrientSection;
%rename(hascommonshapes) BRepOffset_Tool::HasCommonShapes;
%rename(inter3d) BRepOffset_Tool::Inter3D;
%rename(tryproject) BRepOffset_Tool::TryProject;
%rename(pipeinter) BRepOffset_Tool::PipeInter;
%rename(inter2d) BRepOffset_Tool::Inter2d;
%rename(interorextent) BRepOffset_Tool::InterOrExtent;
%rename(checkbounds) BRepOffset_Tool::CheckBounds;
%rename(enlargeface) BRepOffset_Tool::EnLargeFace;
%rename(extentface) BRepOffset_Tool::ExtentFace;
%rename(buildneighbour) BRepOffset_Tool::BuildNeighbour;
%rename(mapvertexedges) BRepOffset_Tool::MapVertexEdges;
%rename(deboucle3d) BRepOffset_Tool::Deboucle3D;
%rename(correctorientation) BRepOffset_Tool::CorrectOrientation;
%rename(gabarit) BRepOffset_Tool::Gabarit;
