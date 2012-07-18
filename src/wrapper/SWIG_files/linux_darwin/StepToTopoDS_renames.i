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
%rename(DownCast) Handle_StepToTopoDS_DataMapNodeOfDataMapOfRINames::DownCast;
%rename(DownCast) Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI::DownCast;
%rename(DownCast) Handle_StepToTopoDS_DataMapNodeOfDataMapOfRI::DownCast;
%rename(DownCast) Handle_StepToTopoDS_DataMapNodeOfPointVertexMap::DownCast;
%rename(DownCast) Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap::DownCast;
%rename(HashCode) StepToTopoDS_CartesianPointHasher::HashCode;
%rename(IsEqual) StepToTopoDS_CartesianPointHasher::IsEqual;
%rename(HashCode) StepToTopoDS_PointPairHasher::HashCode;
%rename(IsEqual) StepToTopoDS_PointPairHasher::IsEqual;
%rename(PCurve) StepToTopoDS_GeometricTool::PCurve;
%rename(IsSeamCurve) StepToTopoDS_GeometricTool::IsSeamCurve;
%rename(IsLikeSeam) StepToTopoDS_GeometricTool::IsLikeSeam;
%rename(UpdateParam3d) StepToTopoDS_GeometricTool::UpdateParam3d;
%rename(DecodeBuilderError) StepToTopoDS::DecodeBuilderError;
%rename(DecodeShellError) StepToTopoDS::DecodeShellError;
%rename(DecodeFaceError) StepToTopoDS::DecodeFaceError;
%rename(DecodeEdgeError) StepToTopoDS::DecodeEdgeError;
%rename(DecodeVertexError) StepToTopoDS::DecodeVertexError;
%rename(DecodeVertexLoopError) StepToTopoDS::DecodeVertexLoopError;
%rename(DecodePolyLoopError) StepToTopoDS::DecodePolyLoopError;
%rename(DecodeGeometricToolError) StepToTopoDS::DecodeGeometricToolError;
