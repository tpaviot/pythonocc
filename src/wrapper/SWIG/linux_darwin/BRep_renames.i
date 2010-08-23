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
%rename(downcast) Handle_BRep_ListNodeOfListOfCurveRepresentation::DownCast;
%rename(downcast) Handle_BRep_CurveRepresentation::DownCast;
%rename(downcast) Handle_BRep_GCurve::DownCast;
%rename(downcast) Handle_BRep_CurveOnSurface::DownCast;
%rename(downcast) Handle_BRep_Curve3D::DownCast;
%rename(downcast) Handle_BRep_PointRepresentation::DownCast;
%rename(downcast) Handle_BRep_Polygon3D::DownCast;
%rename(downcast) Handle_BRep_TVertex::DownCast;
%rename(downcast) Handle_BRep_PolygonOnSurface::DownCast;
%rename(downcast) Handle_BRep_PolygonOnClosedSurface::DownCast;
%rename(downcast) Handle_BRep_PointsOnSurface::DownCast;
%rename(downcast) Handle_BRep_PointOnSurface::DownCast;
%rename(downcast) Handle_BRep_PointOnCurve::DownCast;
%rename(downcast) Handle_BRep_TEdge::DownCast;
%rename(downcast) Handle_BRep_ListNodeOfListOfPointRepresentation::DownCast;
%rename(downcast) Handle_BRep_CurveOn2Surfaces::DownCast;
%rename(downcast) Handle_BRep_PolygonOnTriangulation::DownCast;
%rename(downcast) Handle_BRep_PolygonOnClosedTriangulation::DownCast;
%rename(downcast) Handle_BRep_CurveOnClosedSurface::DownCast;
%rename(downcast) Handle_BRep_TFace::DownCast;
%rename(downcast) Handle_BRep_PointOnCurveOnSurface::DownCast;
%rename(isclosed) BRep_Tool::IsClosed;
%rename(surface) BRep_Tool::Surface;
%rename(triangulation) BRep_Tool::Triangulation;
%rename(tolerance) BRep_Tool::Tolerance;
%rename(naturalrestriction) BRep_Tool::NaturalRestriction;
%rename(isgeometric) BRep_Tool::IsGeometric;
%rename(curve) BRep_Tool::Curve;
%rename(polygon3d) BRep_Tool::Polygon3D;
%rename(curveonsurface) BRep_Tool::CurveOnSurface;
%rename(polygononsurface) BRep_Tool::PolygonOnSurface;
%rename(polygonontriangulation) BRep_Tool::PolygonOnTriangulation;
%rename(sameparameter) BRep_Tool::SameParameter;
%rename(samerange) BRep_Tool::SameRange;
%rename(degenerated) BRep_Tool::Degenerated;
%rename(range) BRep_Tool::Range;
%rename(uvpoints) BRep_Tool::UVPoints;
%rename(setuvpoints) BRep_Tool::SetUVPoints;
%rename(uvbox) BRep_Tool::UVBox;
%rename(changeuvbox) BRep_Tool::ChangeUVBox;
%rename(hascontinuity) BRep_Tool::HasContinuity;
%rename(continuity) BRep_Tool::Continuity;
%rename(pnt) BRep_Tool::Pnt;
%rename(parameter) BRep_Tool::Parameter;
%rename(parameters) BRep_Tool::Parameters;
