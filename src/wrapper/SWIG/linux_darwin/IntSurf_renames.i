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
%rename(downcast) Handle_IntSurf_LineOn2S::DownCast;
%rename(downcast) Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint::DownCast;
%rename(downcast) Handle_IntSurf_ListNodeOfListOfPntOn2S::DownCast;
%rename(downcast) Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint::DownCast;
%rename(downcast) Handle_IntSurf_SequenceNodeOfSequenceOfCouple::DownCast;
%rename(downcast) Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S::DownCast;
%rename(maketransition) IntSurf::MakeTransition;
%rename(value3d) IntSurf_PathPointTool::Value3d;
%rename(value2d) IntSurf_PathPointTool::Value2d;
%rename(ispassingpnt) IntSurf_PathPointTool::IsPassingPnt;
%rename(istangent) IntSurf_PathPointTool::IsTangent;
%rename(direction3d) IntSurf_PathPointTool::Direction3d;
%rename(direction2d) IntSurf_PathPointTool::Direction2d;
%rename(multiplicity) IntSurf_PathPointTool::Multiplicity;
%rename(parameters) IntSurf_PathPointTool::Parameters;
%rename(value3d) IntSurf_InteriorPointTool::Value3d;
%rename(value2d) IntSurf_InteriorPointTool::Value2d;
%rename(direction3d) IntSurf_InteriorPointTool::Direction3d;
%rename(direction2d) IntSurf_InteriorPointTool::Direction2d;
%rename(value) IntSurf_QuadricTool::Value;
%rename(gradient) IntSurf_QuadricTool::Gradient;
%rename(valueandgradient) IntSurf_QuadricTool::ValueAndGradient;
%rename(tolerance) IntSurf_QuadricTool::Tolerance;
