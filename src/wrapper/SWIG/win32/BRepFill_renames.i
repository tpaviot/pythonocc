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
%rename(downcast) Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape::DownCast;
%rename(downcast) Handle_BRepFill_SequenceNodeOfSequenceOfSection::DownCast;
%rename(downcast) Handle_BRepFill_LocationLaw::DownCast;
%rename(downcast) Handle_BRepFill_Edge3DLaw::DownCast;
%rename(downcast) Handle_BRepFill_CurveConstraint::DownCast;
%rename(downcast) Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape::DownCast;
%rename(downcast) Handle_BRepFill_PipeShell::DownCast;
%rename(downcast) Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal::DownCast;
%rename(downcast) Handle_BRepFill_ACRLaw::DownCast;
%rename(downcast) Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt::DownCast;
%rename(downcast) Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape::DownCast;
%rename(downcast) Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder::DownCast;
%rename(downcast) Handle_BRepFill_SectionLaw::DownCast;
%rename(downcast) Handle_BRepFill_ShapeLaw::DownCast;
%rename(downcast) Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape::DownCast;
%rename(downcast) Handle_BRepFill_DraftLaw::DownCast;
%rename(downcast) Handle_BRepFill_ListNodeOfListOfOffsetWire::DownCast;
%rename(downcast) Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape::DownCast;
%rename(downcast) Handle_BRepFill_NSections::DownCast;
%rename(downcast) Handle_BRepFill_EdgeOnSurfLaw::DownCast;
%rename(downcast) Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder::DownCast;
%rename(face) BRepFill::Face;
%rename(shell) BRepFill::Shell;
%rename(axe) BRepFill::Axe;
%rename(computeacr) BRepFill::ComputeACR;
%rename(insertacr) BRepFill::InsertACR;
%rename(firstparameter) BRepFill_MultiLineTool::FirstParameter;
%rename(lastparameter) BRepFill_MultiLineTool::LastParameter;
%rename(nbp2d) BRepFill_MultiLineTool::NbP2d;
%rename(nbp3d) BRepFill_MultiLineTool::NbP3d;
%rename(value) BRepFill_MultiLineTool::Value;
%rename(d1) BRepFill_MultiLineTool::D1;
