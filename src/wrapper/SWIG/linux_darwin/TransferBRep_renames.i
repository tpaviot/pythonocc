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
%rename(downcast) Handle_TransferBRep_BinderOfShape::DownCast;
%rename(downcast) Handle_TransferBRep_ShapeBinder::DownCast;
%rename(downcast) Handle_TransferBRep_ShapeMapper::DownCast;
%rename(downcast) Handle_TransferBRep_HSequenceOfTransferResultInfo::DownCast;
%rename(downcast) Handle_TransferBRep_SequenceNodeOfSequenceOfTransferResultInfo::DownCast;
%rename(downcast) Handle_TransferBRep_OrientedShapeMapper::DownCast;
%rename(downcast) Handle_TransferBRep_ShapeListBinder::DownCast;
%rename(downcast) Handle_TransferBRep_TransferResultInfo::DownCast;
%rename(shaperesult) TransferBRep::ShapeResult;
%rename(shaperesult) TransferBRep::ShapeResult;
%rename(setshaperesult) TransferBRep::SetShapeResult;
%rename(shapes) TransferBRep::Shapes;
%rename(shapes) TransferBRep::Shapes;
%rename(shapestate) TransferBRep::ShapeState;
%rename(resultfromshape) TransferBRep::ResultFromShape;
%rename(transientfromshape) TransferBRep::TransientFromShape;
%rename(settransientfromshape) TransferBRep::SetTransientFromShape;
%rename(shapemapper) TransferBRep::ShapeMapper;
%rename(transferresultinfo) TransferBRep::TransferResultInfo;
%rename(transferresultinfo) TransferBRep::TransferResultInfo;
%rename(printresultinfo) TransferBRep::PrintResultInfo;
%rename(resultchecklist) TransferBRep::ResultCheckList;
%rename(checked) TransferBRep::Checked;
%rename(checkedshapes) TransferBRep::CheckedShapes;
%rename(checkobject) TransferBRep::CheckObject;
%rename(type) TransferBRep_ShapeInfo::Type;
%rename(typename) TransferBRep_ShapeInfo::TypeName;
