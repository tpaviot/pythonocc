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
%rename(DownCast) Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_Interference::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_SurfaceCurveInterference::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_Marker::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_Association::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_DataMapNodeOfMapOfSurface::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_DataMapNodeOfShapeSurface::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_HDataStructure::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_DataMapNodeOfMapOfPoint::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_ShapeShapeInterference::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_ListNodeOfListOfInterference::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_SolidSurfaceInterference::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_DataMapNodeOfMapOfCurve::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_Check::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_FaceEdgeInterference::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_GapTool::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_EdgeVertexInterference::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_CurvePointInterference::DownCast;
%rename(DownCast) Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference::DownCast;
%rename(MakeEdgeInterference) TopOpeBRepDS_InterferenceTool::MakeEdgeInterference;
%rename(MakeCurveInterference) TopOpeBRepDS_InterferenceTool::MakeCurveInterference;
%rename(DuplicateCurvePointInterference) TopOpeBRepDS_InterferenceTool::DuplicateCurvePointInterference;
%rename(MakeFaceCurveInterference) TopOpeBRepDS_InterferenceTool::MakeFaceCurveInterference;
%rename(MakeSolidSurfaceInterference) TopOpeBRepDS_InterferenceTool::MakeSolidSurfaceInterference;
%rename(MakeEdgeVertexInterference) TopOpeBRepDS_InterferenceTool::MakeEdgeVertexInterference;
%rename(MakeFaceEdgeInterference) TopOpeBRepDS_InterferenceTool::MakeFaceEdgeInterference;
%rename(Parameter) TopOpeBRepDS_InterferenceTool::Parameter;
%rename(EShareG) TopOpeBRepDS_TOOL::EShareG;
%rename(ShareG) TopOpeBRepDS_TOOL::ShareG;
%rename(GetEsd) TopOpeBRepDS_TOOL::GetEsd;
%rename(ShareSplitON) TopOpeBRepDS_TOOL::ShareSplitON;
%rename(GetConfig) TopOpeBRepDS_TOOL::GetConfig;
%rename(SPrint) TopOpeBRepDS::SPrint;
%rename(Print) TopOpeBRepDS::Print;
%rename(IsGeometry) TopOpeBRepDS::IsGeometry;
%rename(IsTopology) TopOpeBRepDS::IsTopology;
%rename(KindToShape) TopOpeBRepDS::KindToShape;
%rename(ShapeToKind) TopOpeBRepDS::ShapeToKind;
