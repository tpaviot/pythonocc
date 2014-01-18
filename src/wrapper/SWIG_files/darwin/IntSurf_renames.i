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
%rename(DownCast) Handle_IntSurf_LineOn2S::DownCast;
%rename(DownCast) Handle_IntSurf_SequenceNodeOfSequenceOfCouple::DownCast;
%rename(DownCast) Handle_IntSurf_ListNodeOfListOfPntOn2S::DownCast;
%rename(DownCast) Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint::DownCast;
%rename(DownCast) Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S::DownCast;
%rename(DownCast) Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint::DownCast;
%rename(MakeTransition) IntSurf::MakeTransition;
%rename(Value3d) IntSurf_PathPointTool::Value3d;
%rename(Value2d) IntSurf_PathPointTool::Value2d;
%rename(IsPassingPnt) IntSurf_PathPointTool::IsPassingPnt;
%rename(IsTangent) IntSurf_PathPointTool::IsTangent;
%rename(Direction3d) IntSurf_PathPointTool::Direction3d;
%rename(Direction2d) IntSurf_PathPointTool::Direction2d;
%rename(Multiplicity) IntSurf_PathPointTool::Multiplicity;
%rename(Parameters) IntSurf_PathPointTool::Parameters;
%rename(Value3d) IntSurf_InteriorPointTool::Value3d;
%rename(Value2d) IntSurf_InteriorPointTool::Value2d;
%rename(Direction3d) IntSurf_InteriorPointTool::Direction3d;
%rename(Direction2d) IntSurf_InteriorPointTool::Direction2d;
%rename(Value) IntSurf_QuadricTool::Value;
%rename(Gradient) IntSurf_QuadricTool::Gradient;
%rename(ValueAndGradient) IntSurf_QuadricTool::ValueAndGradient;
%rename(Tolerance) IntSurf_QuadricTool::Tolerance;
