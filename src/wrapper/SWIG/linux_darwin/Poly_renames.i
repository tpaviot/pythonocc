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
%rename(downcast) Handle_Poly_PolygonOnTriangulation::DownCast;
%rename(downcast) Handle_Poly_HArray1OfTriangle::DownCast;
%rename(downcast) Handle_Poly_Polygon3D::DownCast;
%rename(downcast) Handle_Poly_Polygon2D::DownCast;
%rename(downcast) Handle_Poly_CoherentTriangulation::DownCast;
%rename(downcast) Handle_Poly_Triangulation::DownCast;
%rename(write) Poly::Write;
%rename(dump) Poly::Dump;
%rename(readtriangulation) Poly::ReadTriangulation;
%rename(readpolygon3d) Poly::ReadPolygon3D;
%rename(readpolygon2d) Poly::ReadPolygon2D;
%rename(computenormals) Poly::ComputeNormals;
