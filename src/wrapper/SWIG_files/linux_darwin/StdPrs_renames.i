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
%rename(Add) StdPrs_Vertex::Add;
%rename(Match) StdPrs_Vertex::Match;
%rename(Add) StdPrs_WFSurface::Add;
%rename(Coord) StdPrs_ToolPoint::Coord;
%rename(Coord) StdPrs_ToolVertex::Coord;
%rename(Add) StdPrs_WFPoleSurface::Add;
%rename(Add) StdPrs_Point::Add;
%rename(Match) StdPrs_Point::Match;
%rename(Add) StdPrs_ShadedShape::Add;
%rename(Add) StdPrs_Plane::Add;
%rename(Match) StdPrs_Plane::Match;
%rename(Add) StdPrs_ShadedSurface::Add;
%rename(Add) StdPrs_HLRPolyShape::Add;
%rename(Add) StdPrs_WFShape::Add;
%rename(PickCurve) StdPrs_WFShape::PickCurve;
%rename(PickPatch) StdPrs_WFShape::PickPatch;
%rename(Add) StdPrs_WFDeflectionShape::Add;
%rename(PickCurve) StdPrs_WFDeflectionShape::PickCurve;
%rename(PickPatch) StdPrs_WFDeflectionShape::PickPatch;
%rename(IsClosed) StdPrs_ToolShadedShape::IsClosed;
%rename(Triangulation) StdPrs_ToolShadedShape::Triangulation;
%rename(Normal) StdPrs_ToolShadedShape::Normal;
%rename(Add) StdPrs_HLRShape::Add;
%rename(Add) StdPrs_WFRestrictedFace::Add;
%rename(AddUIso) StdPrs_WFRestrictedFace::AddUIso;
%rename(AddVIso) StdPrs_WFRestrictedFace::AddVIso;
%rename(Match) StdPrs_WFRestrictedFace::Match;
%rename(MatchUIso) StdPrs_WFRestrictedFace::MatchUIso;
%rename(MatchVIso) StdPrs_WFRestrictedFace::MatchVIso;
%rename(Add) StdPrs_WFDeflectionSurface::Add;
%rename(Add) StdPrs_PoleCurve::Add;
%rename(Match) StdPrs_PoleCurve::Match;
%rename(Pick) StdPrs_PoleCurve::Pick;
%rename(Add) StdPrs_Curve::Add;
%rename(Match) StdPrs_Curve::Match;
%rename(Add) StdPrs_WFDeflectionRestrictedFace::Add;
%rename(AddUIso) StdPrs_WFDeflectionRestrictedFace::AddUIso;
%rename(AddVIso) StdPrs_WFDeflectionRestrictedFace::AddVIso;
%rename(Match) StdPrs_WFDeflectionRestrictedFace::Match;
%rename(MatchUIso) StdPrs_WFDeflectionRestrictedFace::MatchUIso;
%rename(MatchVIso) StdPrs_WFDeflectionRestrictedFace::MatchVIso;
%rename(Add) StdPrs_DeflectionCurve::Add;
