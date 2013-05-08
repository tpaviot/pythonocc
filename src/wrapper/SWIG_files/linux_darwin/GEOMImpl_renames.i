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
%rename(DownCast) Handle_GEOMImpl_CircleDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_MeasureDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_MarkerDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_FillingDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_ScaleDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_FaceDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_SplineDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_ThickSolidDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_MirrorDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_BooleanDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_ConeDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_PositionDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_CylinderDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_PipeDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_ArchimedeDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_DiskDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_PolylineDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_PointDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_PrismDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_PlaneDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_ThruSectionsDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_DraftDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_PartitionDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_VariableFilletDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_ShapeDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_GlueDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_ExportDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_RotateDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_SphereDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_RevolutionDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_EllipseDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_NSketcherDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_TorusDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_PlateDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_LineDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_HealingDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_ImportDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_3DSketcherDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_BoxDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_CopyDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_PipeTShapeDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_TranslateDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_ProjectionDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_BlockDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_ChamferDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_ArcDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_Fillet1dDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_FilletDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_SketcherDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_VectorDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_CurveDriver::DownCast;
%rename(DownCast) Handle_GEOMImpl_OffsetDriver::DownCast;
%rename(GetID) GEOMImpl_PartitionDriver::GetID;
%rename(GetID) GEOMImpl_MarkerDriver::GetID;
%rename(GetID) GEOMImpl_ChamferDriver::GetID;
%rename(GetID) GEOMImpl_FilletDriver::GetID;
%rename(GetID) GEOMImpl_SplineDriver::GetID;
%rename(GetID) GEOMImpl_TorusDriver::GetID;
%rename(GetID) GEOMImpl_ScaleDriver::GetID;
%rename(GetID) GEOMImpl_MirrorDriver::GetID;
%rename(SortShapes) GEOMImpl_IShapesOperations::SortShapes;
%rename(CompsolidToCompound) GEOMImpl_IShapesOperations::CompsolidToCompound;
%rename(CheckTriangulation) GEOMImpl_IShapesOperations::CheckTriangulation;
%rename(GetTypeOfSimplePart) GEOMImpl_IShapesOperations::GetTypeOfSimplePart;
%rename(GetID) GEOMImpl_OffsetDriver::GetID;
%rename(GetID) GEOMImpl_GlueDriver::GetID;
%rename(GlueFaces) GEOMImpl_GlueDriver::GlueFaces;
%rename(GlueByList) GEOMImpl_GlueDriver::GlueByList;
%rename(GetID) GEOMImpl_PlaneDriver::GetID;
%rename(GetID) GEOMImpl_NSketcherDriver::GetID;
%rename(SetGUI) GEOMImpl_ISketcherOperations::SetGUI;
%rename(SetAISContext) GEOMImpl_ISketcherOperations::SetAISContext;
%rename(GetPosition) GEOMImpl_IMeasureOperations::GetPosition;
%rename(GetParameters) GEOMImpl_IHealingOperations::GetParameters;
%rename(GetID) GEOMImpl_LineDriver::GetID;
%rename(GetID) GEOMImpl_MeasureDriver::GetID;
%rename(GetID) GEOMImpl_DraftDriver::GetID;
%rename(GetID) GEOMImpl_FillingDriver::GetID;
%rename(GetID) GEOMImpl_PipeTShapeDriver::GetID;
%rename(GetID) GEOMImpl_TranslateDriver::GetID;
%rename(GetID) GEOMImpl_CopyDriver::GetID;
%rename(GetID) GEOMImpl_ExportDriver::GetID;
%rename(GetID) GEOMImpl_BooleanDriver::GetID;
%rename(GetID) GEOMImpl_3DSketcherDriver::GetID;
%rename(GetID) GEOMImpl_RotateDriver::GetID;
%rename(GetID) GEOMImpl_SphereDriver::GetID;
%rename(GetID) GEOMImpl_VariableFilletDriver::GetID;
%rename(GetID) GEOMImpl_ProjectionDriver::GetID;
%rename(GetID) GEOMImpl_BoxDriver::GetID;
%rename(GetID) GEOMImpl_ImportDriver::GetID;
%rename(GetID) GEOMImpl_PositionDriver::GetID;
%rename(GetID) GEOMImpl_CylinderDriver::GetID;
%rename(GetID) GEOMImpl_SketcherDriver::GetID;
%rename(GetID) GEOMImpl_PolylineDriver::GetID;
%rename(GetID) GEOMImpl_ConeDriver::GetID;
%rename(GetID) GEOMImpl_ThickSolidDriver::GetID;
%rename(GetID) GEOMImpl_RevolutionDriver::GetID;
%rename(GetID) GEOMImpl_FaceDriver::GetID;
%rename(GetSubShape) GEOMImpl_ILocalOperations::GetSubShape;
%rename(GetID) GEOMImpl_BlockDriver::GetID;
%rename(GetID) GEOMImpl_ArchimedeDriver::GetID;
%rename(GetID) GEOMImpl_ShapeDriver::GetID;
%rename(GetID) GEOMImpl_EllipseDriver::GetID;
%rename(GetID) GEOMImpl_VectorDriver::GetID;
%rename(GetID) GEOMImpl_PipeDriver::GetID;
%rename(CreatePipeWithDifferentSections) GEOMImpl_PipeDriver::CreatePipeWithDifferentSections;
%rename(GetID) GEOMImpl_PlateDriver::GetID;
%rename(GetID) GEOMImpl_ThruSectionsDriver::GetID;
%rename(GetID) GEOMImpl_PrismDriver::GetID;
%rename(MakeScaledPrism) GEOMImpl_PrismDriver::MakeScaledPrism;
%rename(GetID) GEOMImpl_DiskDriver::GetID;
%rename(GetID) GEOMImpl_Fillet1dDriver::GetID;
%rename(GetID) GEOMImpl_ArcDriver::GetID;
%rename(AddBlocksFrom) GEOMImpl_IBlocksOperations::AddBlocksFrom;
%rename(GetID) GEOMImpl_PointDriver::GetID;
%rename(GetID) GEOMImpl_HealingDriver::GetID;
%rename(GetID) GEOMImpl_CurveDriver::GetID;
%rename(GetID) GEOMImpl_CircleDriver::GetID;
