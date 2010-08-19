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
%rename(downcast) Handle_StepToTopoDS_DataMapNodeOfDataMapOfTRI::DownCast;
%rename(downcast) Handle_StepToTopoDS_DataMapNodeOfPointVertexMap::DownCast;
%rename(downcast) Handle_StepToTopoDS_DataMapNodeOfPointEdgeMap::DownCast;
%rename(hashcode) StepToTopoDS_CartesianPointHasher::HashCode;
%rename(isequal) StepToTopoDS_CartesianPointHasher::IsEqual;
%rename(hashcode) StepToTopoDS_PointPairHasher::HashCode;
%rename(isequal) StepToTopoDS_PointPairHasher::IsEqual;
%rename(pcurve) StepToTopoDS_GeometricTool::PCurve;
%rename(isseamcurve) StepToTopoDS_GeometricTool::IsSeamCurve;
%rename(islikeseam) StepToTopoDS_GeometricTool::IsLikeSeam;
%rename(updateparam3d) StepToTopoDS_GeometricTool::UpdateParam3d;
%rename(decodebuildererror) StepToTopoDS::DecodeBuilderError;
%rename(decodeshellerror) StepToTopoDS::DecodeShellError;
%rename(decodefaceerror) StepToTopoDS::DecodeFaceError;
%rename(decodeedgeerror) StepToTopoDS::DecodeEdgeError;
%rename(decodevertexerror) StepToTopoDS::DecodeVertexError;
%rename(decodevertexlooperror) StepToTopoDS::DecodeVertexLoopError;
%rename(decodepolylooperror) StepToTopoDS::DecodePolyLoopError;
%rename(decodegeometrictoolerror) StepToTopoDS::DecodeGeometricToolError;
