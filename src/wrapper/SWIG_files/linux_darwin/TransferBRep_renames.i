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
%rename(DownCast) Handle_TransferBRep_BinderOfShape::DownCast;
%rename(DownCast) Handle_TransferBRep_ShapeBinder::DownCast;
%rename(DownCast) Handle_TransferBRep_ShapeMapper::DownCast;
%rename(DownCast) Handle_TransferBRep_HSequenceOfTransferResultInfo::DownCast;
%rename(DownCast) Handle_TransferBRep_SequenceNodeOfSequenceOfTransferResultInfo::DownCast;
%rename(DownCast) Handle_TransferBRep_OrientedShapeMapper::DownCast;
%rename(DownCast) Handle_TransferBRep_ShapeListBinder::DownCast;
%rename(DownCast) Handle_TransferBRep_TransferResultInfo::DownCast;
%rename(ShapeResult) TransferBRep::ShapeResult;
%rename(SetShapeResult) TransferBRep::SetShapeResult;
%rename(Shapes) TransferBRep::Shapes;
%rename(ShapeState) TransferBRep::ShapeState;
%rename(ResultFromShape) TransferBRep::ResultFromShape;
%rename(TransientFromShape) TransferBRep::TransientFromShape;
%rename(SetTransientFromShape) TransferBRep::SetTransientFromShape;
%rename(ShapeMapper) TransferBRep::ShapeMapper;
%rename(TransferResultInfo) TransferBRep::TransferResultInfo;
%rename(PrintResultInfo) TransferBRep::PrintResultInfo;
%rename(ResultCheckList) TransferBRep::ResultCheckList;
%rename(Checked) TransferBRep::Checked;
%rename(CheckedShapes) TransferBRep::CheckedShapes;
%rename(CheckObject) TransferBRep::CheckObject;
%rename(Type) TransferBRep_ShapeInfo::Type;
%rename(TypeName) TransferBRep_ShapeInfo::TypeName;
