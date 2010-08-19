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
%rename(downcast) Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_Interference::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_SurfaceCurveInterference::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_Marker::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_Association::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_DataMapNodeOfMapOfPoint::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_ShapeShapeInterference::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_DataMapNodeOfMapOfSurface::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_HDataStructure::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_SolidSurfaceInterference::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_DataMapNodeOfMapOfCurve::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_ListNodeOfListOfInterference::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_Check::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_FaceEdgeInterference::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_DataMapNodeOfShapeSurface::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_GapTool::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_EdgeVertexInterference::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_CurvePointInterference::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State::DownCast;
%rename(downcast) Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState::DownCast;
%rename(makeedgeinterference) TopOpeBRepDS_InterferenceTool::MakeEdgeInterference;
%rename(makecurveinterference) TopOpeBRepDS_InterferenceTool::MakeCurveInterference;
%rename(duplicatecurvepointinterference) TopOpeBRepDS_InterferenceTool::DuplicateCurvePointInterference;
%rename(makefacecurveinterference) TopOpeBRepDS_InterferenceTool::MakeFaceCurveInterference;
%rename(makesolidsurfaceinterference) TopOpeBRepDS_InterferenceTool::MakeSolidSurfaceInterference;
%rename(makeedgevertexinterference) TopOpeBRepDS_InterferenceTool::MakeEdgeVertexInterference;
%rename(makefaceedgeinterference) TopOpeBRepDS_InterferenceTool::MakeFaceEdgeInterference;
%rename(parameter) TopOpeBRepDS_InterferenceTool::Parameter;
%rename(parameter) TopOpeBRepDS_InterferenceTool::Parameter;
%rename(eshareg) TopOpeBRepDS_TOOL::EShareG;
%rename(shareg) TopOpeBRepDS_TOOL::ShareG;
%rename(getesd) TopOpeBRepDS_TOOL::GetEsd;
%rename(sharespliton) TopOpeBRepDS_TOOL::ShareSplitON;
%rename(getconfig) TopOpeBRepDS_TOOL::GetConfig;
%rename(sprint) TopOpeBRepDS::SPrint;
%rename(print) TopOpeBRepDS::Print;
%rename(sprint) TopOpeBRepDS::SPrint;
%rename(sprint) TopOpeBRepDS::SPrint;
%rename(print) TopOpeBRepDS::Print;
%rename(print) TopOpeBRepDS::Print;
%rename(sprint) TopOpeBRepDS::SPrint;
%rename(sprint) TopOpeBRepDS::SPrint;
%rename(print) TopOpeBRepDS::Print;
%rename(sprint) TopOpeBRepDS::SPrint;
%rename(sprint) TopOpeBRepDS::SPrint;
%rename(print) TopOpeBRepDS::Print;
%rename(isgeometry) TopOpeBRepDS::IsGeometry;
%rename(istopology) TopOpeBRepDS::IsTopology;
%rename(kindtoshape) TopOpeBRepDS::KindToShape;
%rename(shapetokind) TopOpeBRepDS::ShapeToKind;
