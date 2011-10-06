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
%rename(DownCast) Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF::DownCast;
%rename(DownCast) Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface::DownCast;
%rename(DownCast) Handle_TopOpeBRepTool_HBoxTool::DownCast;
%rename(DownCast) Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity::DownCast;
%rename(DownCast) Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF::DownCast;
%rename(DownCast) Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier::DownCast;
%rename(DownCast) Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d::DownCast;
%rename(DownCast) Handle_TopOpeBRepTool_ListNodeOfListOfC2DF::DownCast;
%rename(DownCast) Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox::DownCast;
%rename(MakeHABCOB) TopOpeBRepTool_BoxSort::MakeHABCOB;
%rename(WireToFace) TopOpeBRepTool_REGUS::WireToFace;
%rename(SplitF) TopOpeBRepTool_REGUS::SplitF;
%rename(MakeBSpline1fromPnt) TopOpeBRepTool_CurveTool::MakeBSpline1fromPnt;
%rename(MakeBSpline1fromPnt2d) TopOpeBRepTool_CurveTool::MakeBSpline1fromPnt2d;
%rename(IsProjectable) TopOpeBRepTool_CurveTool::IsProjectable;
%rename(MakePCurveOnFace) TopOpeBRepTool_CurveTool::MakePCurveOnFace;
%rename(ComputeBox) TopOpeBRepTool_HBoxTool::ComputeBox;
%rename(ComputeBoxOnVertices) TopOpeBRepTool_HBoxTool::ComputeBoxOnVertices;
%rename(DumpB) TopOpeBRepTool_HBoxTool::DumpB;
%rename(OriinSor) TopOpeBRepTool_TOOL::OriinSor;
%rename(OriinSorclosed) TopOpeBRepTool_TOOL::OriinSorclosed;
%rename(ClosedE) TopOpeBRepTool_TOOL::ClosedE;
%rename(ClosedS) TopOpeBRepTool_TOOL::ClosedS;
%rename(IsClosingE) TopOpeBRepTool_TOOL::IsClosingE;
%rename(Vertices) TopOpeBRepTool_TOOL::Vertices;
%rename(Vertex) TopOpeBRepTool_TOOL::Vertex;
%rename(ParE) TopOpeBRepTool_TOOL::ParE;
%rename(OnBoundary) TopOpeBRepTool_TOOL::OnBoundary;
%rename(UVF) TopOpeBRepTool_TOOL::UVF;
%rename(ParISO) TopOpeBRepTool_TOOL::ParISO;
%rename(ParE2d) TopOpeBRepTool_TOOL::ParE2d;
%rename(Getduv) TopOpeBRepTool_TOOL::Getduv;
%rename(uvApp) TopOpeBRepTool_TOOL::uvApp;
%rename(TolUV) TopOpeBRepTool_TOOL::TolUV;
%rename(TolP) TopOpeBRepTool_TOOL::TolP;
%rename(minDUV) TopOpeBRepTool_TOOL::minDUV;
%rename(outUVbounds) TopOpeBRepTool_TOOL::outUVbounds;
%rename(stuvF) TopOpeBRepTool_TOOL::stuvF;
%rename(TggeomE) TopOpeBRepTool_TOOL::TggeomE;
%rename(TgINSIDE) TopOpeBRepTool_TOOL::TgINSIDE;
%rename(Tg2d) TopOpeBRepTool_TOOL::Tg2d;
%rename(Tg2dApp) TopOpeBRepTool_TOOL::Tg2dApp;
%rename(tryTg2dApp) TopOpeBRepTool_TOOL::tryTg2dApp;
%rename(XX) TopOpeBRepTool_TOOL::XX;
%rename(Nt) TopOpeBRepTool_TOOL::Nt;
%rename(NggeomF) TopOpeBRepTool_TOOL::NggeomF;
%rename(NgApp) TopOpeBRepTool_TOOL::NgApp;
%rename(tryNgApp) TopOpeBRepTool_TOOL::tryNgApp;
%rename(tryOriEinF) TopOpeBRepTool_TOOL::tryOriEinF;
%rename(IsQuad) TopOpeBRepTool_TOOL::IsQuad;
%rename(CurvE) TopOpeBRepTool_TOOL::CurvE;
%rename(CurvF) TopOpeBRepTool_TOOL::CurvF;
%rename(UVISO) TopOpeBRepTool_TOOL::UVISO;
%rename(IsonCLO) TopOpeBRepTool_TOOL::IsonCLO;
%rename(TrslUV) TopOpeBRepTool_TOOL::TrslUV;
%rename(TrslUVModifE) TopOpeBRepTool_TOOL::TrslUVModifE;
%rename(Matter) TopOpeBRepTool_TOOL::Matter;
%rename(MatterKPtg) TopOpeBRepTool_TOOL::MatterKPtg;
%rename(Getstp3dF) TopOpeBRepTool_TOOL::Getstp3dF;
%rename(SplitE) TopOpeBRepTool_TOOL::SplitE;
%rename(MkShell) TopOpeBRepTool_TOOL::MkShell;
%rename(Remove) TopOpeBRepTool_TOOL::Remove;
%rename(WireToFace) TopOpeBRepTool_TOOL::WireToFace;
%rename(EdgeONFace) TopOpeBRepTool_TOOL::EdgeONFace;
%rename(Tolerance) TopOpeBRepTool_ShapeTool::Tolerance;
%rename(Pnt) TopOpeBRepTool_ShapeTool::Pnt;
%rename(BASISCURVE) TopOpeBRepTool_ShapeTool::BASISCURVE;
%rename(BASISSURFACE) TopOpeBRepTool_ShapeTool::BASISSURFACE;
%rename(UVBOUNDS) TopOpeBRepTool_ShapeTool::UVBOUNDS;
%rename(AdjustOnPeriodic) TopOpeBRepTool_ShapeTool::AdjustOnPeriodic;
%rename(Closed) TopOpeBRepTool_ShapeTool::Closed;
%rename(PeriodizeParameter) TopOpeBRepTool_ShapeTool::PeriodizeParameter;
%rename(ShapesSameOriented) TopOpeBRepTool_ShapeTool::ShapesSameOriented;
%rename(SurfacesSameOriented) TopOpeBRepTool_ShapeTool::SurfacesSameOriented;
%rename(FacesSameOriented) TopOpeBRepTool_ShapeTool::FacesSameOriented;
%rename(CurvesSameOriented) TopOpeBRepTool_ShapeTool::CurvesSameOriented;
%rename(EdgesSameOriented) TopOpeBRepTool_ShapeTool::EdgesSameOriented;
%rename(EdgeData) TopOpeBRepTool_ShapeTool::EdgeData;
%rename(Resolution3dU) TopOpeBRepTool_ShapeTool::Resolution3dU;
%rename(Resolution3dV) TopOpeBRepTool_ShapeTool::Resolution3dV;
%rename(Resolution3d) TopOpeBRepTool_ShapeTool::Resolution3d;
%rename(MakeAncestors) TopOpeBRepTool_AncestorsTool::MakeAncestors;
%rename(PurgeClosingEdges) TopOpeBRepTool::PurgeClosingEdges;
%rename(CorrectONUVISO) TopOpeBRepTool::CorrectONUVISO;
%rename(MakeFaces) TopOpeBRepTool::MakeFaces;
%rename(Regularize) TopOpeBRepTool::Regularize;
%rename(RegularizeWires) TopOpeBRepTool::RegularizeWires;
%rename(RegularizeFace) TopOpeBRepTool::RegularizeFace;
%rename(RegularizeShells) TopOpeBRepTool::RegularizeShells;
%rename(Print) TopOpeBRepTool::Print;
