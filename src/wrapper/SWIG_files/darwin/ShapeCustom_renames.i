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
%rename(DownCast) Handle_ShapeCustom_BSplineRestriction::DownCast;
%rename(DownCast) Handle_ShapeCustom_TrsfModification::DownCast;
%rename(DownCast) Handle_ShapeCustom_SweptToElementary::DownCast;
%rename(DownCast) Handle_ShapeCustom_RestrictionParameters::DownCast;
%rename(DownCast) Handle_ShapeCustom_ConvertToBSpline::DownCast;
%rename(DownCast) Handle_ShapeCustom_ConvertToRevolution::DownCast;
%rename(DownCast) Handle_ShapeCustom_DirectModification::DownCast;
%rename(IsLinear) ShapeCustom_Curve2d::IsLinear;
%rename(ConvertToLine2d) ShapeCustom_Curve2d::ConvertToLine2d;
%rename(SimplifyBSpline2d) ShapeCustom_Curve2d::SimplifyBSpline2d;
%rename(ApplyModifier) ShapeCustom::ApplyModifier;
%rename(DirectFaces) ShapeCustom::DirectFaces;
%rename(ScaleShape) ShapeCustom::ScaleShape;
