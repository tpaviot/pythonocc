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
%rename(DownCast) Handle_ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds::DownCast;
%rename(DownCast) Handle_ShapeAnalysis_FreeBoundData::DownCast;
%rename(DownCast) Handle_ShapeAnalysis_TransferParameters::DownCast;
%rename(DownCast) Handle_ShapeAnalysis_TransferParametersProj::DownCast;
%rename(DownCast) Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal::DownCast;
%rename(DownCast) Handle_ShapeAnalysis_HSequenceOfFreeBounds::DownCast;
%rename(DownCast) Handle_ShapeAnalysis_Wire::DownCast;
%rename(DownCast) Handle_ShapeAnalysis_Surface::DownCast;
%rename(ConnectEdgesToWires) ShapeAnalysis_FreeBounds::ConnectEdgesToWires;
%rename(ConnectWiresToWires) ShapeAnalysis_FreeBounds::ConnectWiresToWires;
%rename(SplitWires) ShapeAnalysis_FreeBounds::SplitWires;
%rename(DispatchWires) ShapeAnalysis_FreeBounds::DispatchWires;
%rename(OuterWire) ShapeAnalysis::OuterWire;
%rename(TotCross2D) ShapeAnalysis::TotCross2D;
%rename(ContourArea) ShapeAnalysis::ContourArea;
%rename(IsOuterBound) ShapeAnalysis::IsOuterBound;
%rename(AdjustByPeriod) ShapeAnalysis::AdjustByPeriod;
%rename(AdjustToPeriod) ShapeAnalysis::AdjustToPeriod;
%rename(FindBounds) ShapeAnalysis::FindBounds;
%rename(GetFaceUVBounds) ShapeAnalysis::GetFaceUVBounds;
%rename(IsPlanar) ShapeAnalysis_Curve::IsPlanar;
%rename(GetSamplePoints) ShapeAnalysis_Curve::GetSamplePoints;
%rename(IsClosed) ShapeAnalysis_Curve::IsClosed;
%rename(IsPeriodic) ShapeAnalysis_Curve::IsPeriodic;
%rename(CopyNMVertex) ShapeAnalysis_TransferParametersProj::CopyNMVertex;
%rename(NearestPlane) ShapeAnalysis_Geom::NearestPlane;
%rename(PositionTrsf) ShapeAnalysis_Geom::PositionTrsf;
