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
%rename(DownCast) Handle_BRepOffset_ListNodeOfListOfInterval::DownCast;
%rename(DownCast) Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset::DownCast;
%rename(DownCast) Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval::DownCast;
%rename(DownCast) Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape::DownCast;
%rename(Surface) BRepOffset::Surface;
%rename(Compute) BRepOffset_Inter2d::Compute;
%rename(ConnexIntByInt) BRepOffset_Inter2d::ConnexIntByInt;
%rename(EdgeVertices) BRepOffset_Tool::EdgeVertices;
%rename(OriEdgeInFace) BRepOffset_Tool::OriEdgeInFace;
%rename(OrientSection) BRepOffset_Tool::OrientSection;
%rename(HasCommonShapes) BRepOffset_Tool::HasCommonShapes;
%rename(Inter3D) BRepOffset_Tool::Inter3D;
%rename(TryProject) BRepOffset_Tool::TryProject;
%rename(PipeInter) BRepOffset_Tool::PipeInter;
%rename(Inter2d) BRepOffset_Tool::Inter2d;
%rename(InterOrExtent) BRepOffset_Tool::InterOrExtent;
%rename(CheckBounds) BRepOffset_Tool::CheckBounds;
%rename(EnLargeFace) BRepOffset_Tool::EnLargeFace;
%rename(ExtentFace) BRepOffset_Tool::ExtentFace;
%rename(BuildNeighbour) BRepOffset_Tool::BuildNeighbour;
%rename(MapVertexEdges) BRepOffset_Tool::MapVertexEdges;
%rename(Deboucle3D) BRepOffset_Tool::Deboucle3D;
%rename(CorrectOrientation) BRepOffset_Tool::CorrectOrientation;
%rename(Gabarit) BRepOffset_Tool::Gabarit;
