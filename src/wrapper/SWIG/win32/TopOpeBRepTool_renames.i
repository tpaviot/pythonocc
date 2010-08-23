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
%rename(downcast) Handle_TopOpeBRepTool_HBoxTool::DownCast;
%rename(downcast) Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity::DownCast;
%rename(downcast) Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress::DownCast;
%rename(downcast) Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF::DownCast;
%rename(downcast) Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal::DownCast;
%rename(downcast) Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF::DownCast;
%rename(downcast) Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface::DownCast;
%rename(downcast) Handle_TopOpeBRepTool_ListNodeOfListOfC2DF::DownCast;
%rename(downcast) Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier::DownCast;
%rename(downcast) Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d::DownCast;
%rename(downcast) Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox::DownCast;
%rename(makehabcob) TopOpeBRepTool_BoxSort::MakeHABCOB;
%rename(wiretoface) TopOpeBRepTool_REGUS::WireToFace;
%rename(splitf) TopOpeBRepTool_REGUS::SplitF;
%rename(computebox) TopOpeBRepTool_HBoxTool::ComputeBox;
%rename(computeboxonvertices) TopOpeBRepTool_HBoxTool::ComputeBoxOnVertices;
%rename(dumpb) TopOpeBRepTool_HBoxTool::DumpB;
%rename(makebspline1frompnt) TopOpeBRepTool_CurveTool::MakeBSpline1fromPnt;
%rename(makebspline1frompnt2d) TopOpeBRepTool_CurveTool::MakeBSpline1fromPnt2d;
%rename(isprojectable) TopOpeBRepTool_CurveTool::IsProjectable;
%rename(makepcurveonface) TopOpeBRepTool_CurveTool::MakePCurveOnFace;
%rename(oriinsor) TopOpeBRepTool_TOOL::OriinSor;
%rename(oriinsorclosed) TopOpeBRepTool_TOOL::OriinSorclosed;
%rename(closede) TopOpeBRepTool_TOOL::ClosedE;
%rename(closeds) TopOpeBRepTool_TOOL::ClosedS;
%rename(isclosinge) TopOpeBRepTool_TOOL::IsClosingE;
%rename(vertices) TopOpeBRepTool_TOOL::Vertices;
%rename(vertex) TopOpeBRepTool_TOOL::Vertex;
%rename(pare) TopOpeBRepTool_TOOL::ParE;
%rename(onboundary) TopOpeBRepTool_TOOL::OnBoundary;
%rename(uvf) TopOpeBRepTool_TOOL::UVF;
%rename(pariso) TopOpeBRepTool_TOOL::ParISO;
%rename(pare2d) TopOpeBRepTool_TOOL::ParE2d;
%rename(getduv) TopOpeBRepTool_TOOL::Getduv;
%rename(uvapp) TopOpeBRepTool_TOOL::uvApp;
%rename(toluv) TopOpeBRepTool_TOOL::TolUV;
%rename(tolp) TopOpeBRepTool_TOOL::TolP;
%rename(minduv) TopOpeBRepTool_TOOL::minDUV;
%rename(outuvbounds) TopOpeBRepTool_TOOL::outUVbounds;
%rename(stuvf) TopOpeBRepTool_TOOL::stuvF;
%rename(tggeome) TopOpeBRepTool_TOOL::TggeomE;
%rename(tginside) TopOpeBRepTool_TOOL::TgINSIDE;
%rename(tg2d) TopOpeBRepTool_TOOL::Tg2d;
%rename(tg2dapp) TopOpeBRepTool_TOOL::Tg2dApp;
%rename(trytg2dapp) TopOpeBRepTool_TOOL::tryTg2dApp;
%rename(xx) TopOpeBRepTool_TOOL::XX;
%rename(nt) TopOpeBRepTool_TOOL::Nt;
%rename(nggeomf) TopOpeBRepTool_TOOL::NggeomF;
%rename(ngapp) TopOpeBRepTool_TOOL::NgApp;
%rename(tryngapp) TopOpeBRepTool_TOOL::tryNgApp;
%rename(tryorieinf) TopOpeBRepTool_TOOL::tryOriEinF;
%rename(isquad) TopOpeBRepTool_TOOL::IsQuad;
%rename(curve) TopOpeBRepTool_TOOL::CurvE;
%rename(curvf) TopOpeBRepTool_TOOL::CurvF;
%rename(uviso) TopOpeBRepTool_TOOL::UVISO;
%rename(isonclo) TopOpeBRepTool_TOOL::IsonCLO;
%rename(trsluv) TopOpeBRepTool_TOOL::TrslUV;
%rename(trsluvmodife) TopOpeBRepTool_TOOL::TrslUVModifE;
%rename(matter) TopOpeBRepTool_TOOL::Matter;
%rename(matterkptg) TopOpeBRepTool_TOOL::MatterKPtg;
%rename(getstp3df) TopOpeBRepTool_TOOL::Getstp3dF;
%rename(splite) TopOpeBRepTool_TOOL::SplitE;
%rename(mkshell) TopOpeBRepTool_TOOL::MkShell;
%rename(remove) TopOpeBRepTool_TOOL::Remove;
%rename(wiretoface) TopOpeBRepTool_TOOL::WireToFace;
%rename(edgeonface) TopOpeBRepTool_TOOL::EdgeONFace;
%rename(tolerance) TopOpeBRepTool_ShapeTool::Tolerance;
%rename(pnt) TopOpeBRepTool_ShapeTool::Pnt;
%rename(basiscurve) TopOpeBRepTool_ShapeTool::BASISCURVE;
%rename(basissurface) TopOpeBRepTool_ShapeTool::BASISSURFACE;
%rename(uvbounds) TopOpeBRepTool_ShapeTool::UVBOUNDS;
%rename(adjustonperiodic) TopOpeBRepTool_ShapeTool::AdjustOnPeriodic;
%rename(closed) TopOpeBRepTool_ShapeTool::Closed;
%rename(periodizeparameter) TopOpeBRepTool_ShapeTool::PeriodizeParameter;
%rename(shapessameoriented) TopOpeBRepTool_ShapeTool::ShapesSameOriented;
%rename(surfacessameoriented) TopOpeBRepTool_ShapeTool::SurfacesSameOriented;
%rename(facessameoriented) TopOpeBRepTool_ShapeTool::FacesSameOriented;
%rename(curvessameoriented) TopOpeBRepTool_ShapeTool::CurvesSameOriented;
%rename(edgessameoriented) TopOpeBRepTool_ShapeTool::EdgesSameOriented;
%rename(edgedata) TopOpeBRepTool_ShapeTool::EdgeData;
%rename(resolution3du) TopOpeBRepTool_ShapeTool::Resolution3dU;
%rename(resolution3dv) TopOpeBRepTool_ShapeTool::Resolution3dV;
%rename(resolution3d) TopOpeBRepTool_ShapeTool::Resolution3d;
%rename(makeancestors) TopOpeBRepTool_AncestorsTool::MakeAncestors;
%rename(purgeclosingedges) TopOpeBRepTool::PurgeClosingEdges;
%rename(correctonuviso) TopOpeBRepTool::CorrectONUVISO;
%rename(makefaces) TopOpeBRepTool::MakeFaces;
%rename(regularize) TopOpeBRepTool::Regularize;
%rename(regularizewires) TopOpeBRepTool::RegularizeWires;
%rename(regularizeface) TopOpeBRepTool::RegularizeFace;
%rename(regularizeshells) TopOpeBRepTool::RegularizeShells;
%rename(print) TopOpeBRepTool::Print;
