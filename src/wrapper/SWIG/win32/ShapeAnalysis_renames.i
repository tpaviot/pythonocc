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
%rename(downcast) Handle_ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds::DownCast;
%rename(downcast) Handle_ShapeAnalysis_FreeBoundData::DownCast;
%rename(downcast) Handle_ShapeAnalysis_Wire::DownCast;
%rename(downcast) Handle_ShapeAnalysis_TransferParameters::DownCast;
%rename(downcast) Handle_ShapeAnalysis_TransferParametersProj::DownCast;
%rename(downcast) Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal::DownCast;
%rename(downcast) Handle_ShapeAnalysis_HSequenceOfFreeBounds::DownCast;
%rename(downcast) Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal::DownCast;
%rename(downcast) Handle_ShapeAnalysis_Surface::DownCast;
%rename(connectedgestowires) ShapeAnalysis_FreeBounds::ConnectEdgesToWires;
%rename(connectwirestowires) ShapeAnalysis_FreeBounds::ConnectWiresToWires;
%rename(connectwirestowires) ShapeAnalysis_FreeBounds::ConnectWiresToWires;
%rename(splitwires) ShapeAnalysis_FreeBounds::SplitWires;
%rename(dispatchwires) ShapeAnalysis_FreeBounds::DispatchWires;
%rename(outerwire) ShapeAnalysis::OuterWire;
%rename(totcross2d) ShapeAnalysis::TotCross2D;
%rename(contourarea) ShapeAnalysis::ContourArea;
%rename(isouterbound) ShapeAnalysis::IsOuterBound;
%rename(adjustbyperiod) ShapeAnalysis::AdjustByPeriod;
%rename(adjusttoperiod) ShapeAnalysis::AdjustToPeriod;
%rename(findbounds) ShapeAnalysis::FindBounds;
%rename(getfaceuvbounds) ShapeAnalysis::GetFaceUVBounds;
%rename(isplanar) ShapeAnalysis_Curve::IsPlanar;
%rename(isplanar) ShapeAnalysis_Curve::IsPlanar;
%rename(getsamplepoints) ShapeAnalysis_Curve::GetSamplePoints;
%rename(getsamplepoints) ShapeAnalysis_Curve::GetSamplePoints;
%rename(isclosed) ShapeAnalysis_Curve::IsClosed;
%rename(isperiodic) ShapeAnalysis_Curve::IsPeriodic;
%rename(isperiodic) ShapeAnalysis_Curve::IsPeriodic;
%rename(copynmvertex) ShapeAnalysis_TransferParametersProj::CopyNMVertex;
%rename(copynmvertex) ShapeAnalysis_TransferParametersProj::CopyNMVertex;
%rename(nearestplane) ShapeAnalysis_Geom::NearestPlane;
%rename(positiontrsf) ShapeAnalysis_Geom::PositionTrsf;
