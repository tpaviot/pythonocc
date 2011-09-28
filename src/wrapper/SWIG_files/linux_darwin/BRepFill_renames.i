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
%rename(DownCast) Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape::DownCast;
%rename(DownCast) Handle_BRepFill_ListNodeOfListOfOffsetWire::DownCast;
%rename(DownCast) Handle_BRepFill_SectionLaw::DownCast;
%rename(DownCast) Handle_BRepFill_NSections::DownCast;
%rename(DownCast) Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape::DownCast;
%rename(DownCast) Handle_BRepFill_SequenceNodeOfSequenceOfSection::DownCast;
%rename(DownCast) Handle_BRepFill_LocationLaw::DownCast;
%rename(DownCast) Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal::DownCast;
%rename(DownCast) Handle_BRepFill_CurveConstraint::DownCast;
%rename(DownCast) Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape::DownCast;
%rename(DownCast) Handle_BRepFill_PipeShell::DownCast;
%rename(DownCast) Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt::DownCast;
%rename(DownCast) Handle_BRepFill_ACRLaw::DownCast;
%rename(DownCast) Handle_BRepFill_ShapeLaw::DownCast;
%rename(DownCast) Handle_BRepFill_Edge3DLaw::DownCast;
%rename(DownCast) Handle_BRepFill_DraftLaw::DownCast;
%rename(DownCast) Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder::DownCast;
%rename(DownCast) Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape::DownCast;
%rename(DownCast) Handle_BRepFill_EdgeOnSurfLaw::DownCast;
%rename(DownCast) Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder::DownCast;
%rename(DownCast) Handle_BRepFill_IndexedDataMapNodeOfIndexedDataMapOfOrientedShapeListOfShape::DownCast;
%rename(FirstParameter) BRepFill_MultiLineTool::FirstParameter;
%rename(LastParameter) BRepFill_MultiLineTool::LastParameter;
%rename(NbP2d) BRepFill_MultiLineTool::NbP2d;
%rename(NbP3d) BRepFill_MultiLineTool::NbP3d;
%rename(Value) BRepFill_MultiLineTool::Value;
%rename(D1) BRepFill_MultiLineTool::D1;
%rename(Face) BRepFill::Face;
%rename(Shell) BRepFill::Shell;
%rename(Axe) BRepFill::Axe;
%rename(ComputeACR) BRepFill::ComputeACR;
%rename(InsertACR) BRepFill::InsertACR;
