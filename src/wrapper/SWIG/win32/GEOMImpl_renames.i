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
%rename(downcast) Handle_GEOMImpl_ConeDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_CircleDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_MeasureDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_FillingDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_PositionDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_PlaneDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_DiskDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_ThickSolidDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_ThruSectionsDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_DraftDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_VariableFilletDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_ImportDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_SphereDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_MirrorDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_EllipseDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_PointDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_BoxDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_ChamferDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_Fillet1dDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_CopyDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_ArcDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_MarkerDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_FilletDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_VectorDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_OffsetDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_ScaleDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_FaceDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_BooleanDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_PartitionDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_CylinderDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_PipeDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_PolylineDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_PrismDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_GlueDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_ExportDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_RotateDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_TorusDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_RevolutionDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_BlockDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_PlateDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_3DSketcherDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_ArchimedeDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_LineDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_SplineDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_ShapeDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_HealingDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_TranslateDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_SketcherDriver::DownCast;
%rename(downcast) Handle_GEOMImpl_CurveDriver::DownCast;
%rename(getid) GEOMImpl_MarkerDriver::GetID;
%rename(getid) GEOMImpl_ScaleDriver::GetID;
%rename(sortshapes) GEOMImpl_IShapesOperations::SortShapes;
%rename(compsolidtocompound) GEOMImpl_IShapesOperations::CompsolidToCompound;
%rename(checktriangulation) GEOMImpl_IShapesOperations::CheckTriangulation;
%rename(getid) GEOMImpl_RevolutionDriver::GetID;
%rename(getparameters) GEOMImpl_IHealingOperations::GetParameters;
%rename(getid) GEOMImpl_MirrorDriver::GetID;
%rename(getid) GEOMImpl_VectorDriver::GetID;
%rename(getid) GEOMImpl_PrismDriver::GetID;
%rename(getposition) GEOMImpl_IMeasureOperations::GetPosition;
%rename(getid) GEOMImpl_PlaneDriver::GetID;
%rename(getid) GEOMImpl_ThickSolidDriver::GetID;
%rename(getid) GEOMImpl_TranslateDriver::GetID;
%rename(getid) GEOMImpl_CopyDriver::GetID;
%rename(getid) GEOMImpl_ExportDriver::GetID;
%rename(getid) GEOMImpl_BooleanDriver::GetID;
%rename(getid) GEOMImpl_3DSketcherDriver::GetID;
%rename(getid) GEOMImpl_CurveDriver::GetID;
%rename(getid) GEOMImpl_Fillet1dDriver::GetID;
%rename(getid) GEOMImpl_TorusDriver::GetID;
%rename(getid) GEOMImpl_FaceDriver::GetID;
%rename(getid) GEOMImpl_RotateDriver::GetID;
%rename(getid) GEOMImpl_MeasureDriver::GetID;
%rename(getid) GEOMImpl_ChamferDriver::GetID;
%rename(getid) GEOMImpl_DraftDriver::GetID;
%rename(getid) GEOMImpl_DiskDriver::GetID;
%rename(getid) GEOMImpl_OffsetDriver::GetID;
%rename(getid) GEOMImpl_ArchimedeDriver::GetID;
%rename(getid) GEOMImpl_ShapeDriver::GetID;
%rename(getid) GEOMImpl_PolylineDriver::GetID;
%rename(getid) GEOMImpl_PipeDriver::GetID;
%rename(getid) GEOMImpl_ThruSectionsDriver::GetID;
%rename(getid) GEOMImpl_HealingDriver::GetID;
%rename(getid) GEOMImpl_PartitionDriver::GetID;
%rename(getid) GEOMImpl_FilletDriver::GetID;
%rename(getid) GEOMImpl_GlueDriver::GetID;
%rename(gluefaces) GEOMImpl_GlueDriver::GlueFaces;
%rename(gluefacesbylist) GEOMImpl_GlueDriver::GlueFacesByList;
%rename(getid) GEOMImpl_SplineDriver::GetID;
%rename(getid) GEOMImpl_LineDriver::GetID;
%rename(getid) GEOMImpl_FillingDriver::GetID;
%rename(getid) GEOMImpl_SphereDriver::GetID;
%rename(getid) GEOMImpl_VariableFilletDriver::GetID;
%rename(addblocksfrom) GEOMImpl_IBlocksOperations::AddBlocksFrom;
%rename(getid) GEOMImpl_BoxDriver::GetID;
%rename(getid) GEOMImpl_PositionDriver::GetID;
%rename(getid) GEOMImpl_BlockDriver::GetID;
%rename(getid) GEOMImpl_PointDriver::GetID;
%rename(getid) GEOMImpl_SketcherDriver::GetID;
%rename(getid) GEOMImpl_ConeDriver::GetID;
%rename(getid) GEOMImpl_CylinderDriver::GetID;
%rename(getid) GEOMImpl_ArcDriver::GetID;
%rename(getsubshape) GEOMImpl_ILocalOperations::GetSubShape;
%rename(getid) GEOMImpl_CircleDriver::GetID;
%rename(getid) GEOMImpl_EllipseDriver::GetID;
%rename(getid) GEOMImpl_PlateDriver::GetID;
%rename(getid) GEOMImpl_ImportDriver::GetID;
