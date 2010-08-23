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
%rename(value) BRepLProp_SurfaceTool::Value;
%rename(d1) BRepLProp_SurfaceTool::D1;
%rename(d2) BRepLProp_SurfaceTool::D2;
%rename(dn) BRepLProp_SurfaceTool::DN;
%rename(continuity) BRepLProp_SurfaceTool::Continuity;
%rename(bounds) BRepLProp_SurfaceTool::Bounds;
%rename(value) BRepLProp_CurveTool::Value;
%rename(d1) BRepLProp_CurveTool::D1;
%rename(d2) BRepLProp_CurveTool::D2;
%rename(d3) BRepLProp_CurveTool::D3;
%rename(continuity) BRepLProp_CurveTool::Continuity;
%rename(firstparameter) BRepLProp_CurveTool::FirstParameter;
%rename(lastparameter) BRepLProp_CurveTool::LastParameter;
%rename(continuity) BRepLProp::Continuity;
