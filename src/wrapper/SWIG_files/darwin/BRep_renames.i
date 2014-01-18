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
%rename(DownCast) Handle_BRep_ListNodeOfListOfCurveRepresentation::DownCast;
%rename(DownCast) Handle_BRep_CurveRepresentation::DownCast;
%rename(DownCast) Handle_BRep_GCurve::DownCast;
%rename(DownCast) Handle_BRep_CurveOnSurface::DownCast;
%rename(DownCast) Handle_BRep_Curve3D::DownCast;
%rename(DownCast) Handle_BRep_PointRepresentation::DownCast;
%rename(DownCast) Handle_BRep_Polygon3D::DownCast;
%rename(DownCast) Handle_BRep_PolygonOnSurface::DownCast;
%rename(DownCast) Handle_BRep_PolygonOnClosedSurface::DownCast;
%rename(DownCast) Handle_BRep_CurveOn2Surfaces::DownCast;
%rename(DownCast) Handle_BRep_PointsOnSurface::DownCast;
%rename(DownCast) Handle_BRep_PointOnSurface::DownCast;
%rename(DownCast) Handle_BRep_PointOnCurve::DownCast;
%rename(DownCast) Handle_BRep_TEdge::DownCast;
%rename(DownCast) Handle_BRep_ListNodeOfListOfPointRepresentation::DownCast;
%rename(DownCast) Handle_BRep_PolygonOnTriangulation::DownCast;
%rename(DownCast) Handle_BRep_PolygonOnClosedTriangulation::DownCast;
%rename(DownCast) Handle_BRep_TVertex::DownCast;
%rename(DownCast) Handle_BRep_CurveOnClosedSurface::DownCast;
%rename(DownCast) Handle_BRep_TFace::DownCast;
%rename(DownCast) Handle_BRep_PointOnCurveOnSurface::DownCast;
%rename(IsClosed) BRep_Tool::IsClosed;
%rename(Surface) BRep_Tool::Surface;
%rename(Triangulation) BRep_Tool::Triangulation;
%rename(Tolerance) BRep_Tool::Tolerance;
%rename(NaturalRestriction) BRep_Tool::NaturalRestriction;
%rename(IsGeometric) BRep_Tool::IsGeometric;
%rename(Curve) BRep_Tool::Curve;
%rename(Polygon3D) BRep_Tool::Polygon3D;
%rename(CurveOnSurface) BRep_Tool::CurveOnSurface;
%rename(PolygonOnSurface) BRep_Tool::PolygonOnSurface;
%rename(PolygonOnTriangulation) BRep_Tool::PolygonOnTriangulation;
%rename(SameParameter) BRep_Tool::SameParameter;
%rename(SameRange) BRep_Tool::SameRange;
%rename(Degenerated) BRep_Tool::Degenerated;
%rename(Range) BRep_Tool::Range;
%rename(UVPoints) BRep_Tool::UVPoints;
%rename(SetUVPoints) BRep_Tool::SetUVPoints;
%rename(HasContinuity) BRep_Tool::HasContinuity;
%rename(Continuity) BRep_Tool::Continuity;
%rename(Pnt) BRep_Tool::Pnt;
%rename(Parameter) BRep_Tool::Parameter;
%rename(Parameters) BRep_Tool::Parameters;
