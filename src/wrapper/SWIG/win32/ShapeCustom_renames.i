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
%rename(downcast) Handle_ShapeCustom_BSplineRestriction::DownCast;
%rename(downcast) Handle_ShapeCustom_TrsfModification::DownCast;
%rename(downcast) Handle_ShapeCustom_SweptToElementary::DownCast;
%rename(downcast) Handle_ShapeCustom_ConvertToBSpline::DownCast;
%rename(downcast) Handle_ShapeCustom_ConvertToRevolution::DownCast;
%rename(downcast) Handle_ShapeCustom_RestrictionParameters::DownCast;
%rename(downcast) Handle_ShapeCustom_DirectModification::DownCast;
%rename(islinear) ShapeCustom_Curve2d::IsLinear;
%rename(converttoline2d) ShapeCustom_Curve2d::ConvertToLine2d;
%rename(simplifybspline2d) ShapeCustom_Curve2d::SimplifyBSpline2d;
%rename(applymodifier) ShapeCustom::ApplyModifier;
%rename(directfaces) ShapeCustom::DirectFaces;
%rename(scaleshape) ShapeCustom::ScaleShape;
