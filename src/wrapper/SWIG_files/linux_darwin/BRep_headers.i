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
%{

// Headers necessary to define wrapped classes.

#include<BRep_Builder.hxx>
#include<BRep_Curve3D.hxx>
#include<BRep_CurveOn2Surfaces.hxx>
#include<BRep_CurveOnClosedSurface.hxx>
#include<BRep_CurveOnSurface.hxx>
#include<BRep_CurveRepresentation.hxx>
#include<BRep_GCurve.hxx>
#include<BRep_ListIteratorOfListOfCurveRepresentation.hxx>
#include<BRep_ListIteratorOfListOfPointRepresentation.hxx>
#include<BRep_ListNodeOfListOfCurveRepresentation.hxx>
#include<BRep_ListNodeOfListOfPointRepresentation.hxx>
#include<BRep_ListOfCurveRepresentation.hxx>
#include<BRep_ListOfPointRepresentation.hxx>
#include<BRep_PointOnCurve.hxx>
#include<BRep_PointOnCurveOnSurface.hxx>
#include<BRep_PointOnSurface.hxx>
#include<BRep_PointRepresentation.hxx>
#include<BRep_PointsOnSurface.hxx>
#include<BRep_Polygon3D.hxx>
#include<BRep_PolygonOnClosedSurface.hxx>
#include<BRep_PolygonOnClosedTriangulation.hxx>
#include<BRep_PolygonOnSurface.hxx>
#include<BRep_PolygonOnTriangulation.hxx>
#include<BRep_TEdge.hxx>
#include<BRep_TFace.hxx>
#include<BRep_TVertex.hxx>
#include<BRep_Tool.hxx>
#include<Handle_BRep_Curve3D.hxx>
#include<Handle_BRep_CurveOn2Surfaces.hxx>
#include<Handle_BRep_CurveOnClosedSurface.hxx>
#include<Handle_BRep_CurveOnSurface.hxx>
#include<Handle_BRep_CurveRepresentation.hxx>
#include<Handle_BRep_GCurve.hxx>
#include<Handle_BRep_ListNodeOfListOfCurveRepresentation.hxx>
#include<Handle_BRep_ListNodeOfListOfPointRepresentation.hxx>
#include<Handle_BRep_PointOnCurve.hxx>
#include<Handle_BRep_PointOnCurveOnSurface.hxx>
#include<Handle_BRep_PointOnSurface.hxx>
#include<Handle_BRep_PointRepresentation.hxx>
#include<Handle_BRep_PointsOnSurface.hxx>
#include<Handle_BRep_Polygon3D.hxx>
#include<Handle_BRep_PolygonOnClosedSurface.hxx>
#include<Handle_BRep_PolygonOnClosedTriangulation.hxx>
#include<Handle_BRep_PolygonOnSurface.hxx>
#include<Handle_BRep_PolygonOnTriangulation.hxx>
#include<Handle_BRep_TEdge.hxx>
#include<Handle_BRep_TFace.hxx>
#include<Handle_BRep_TVertex.hxx>

// Additional headers necessary for compilation.

#include<Adaptor3d_Curve.hxx>
#include<Adaptor3d_CurveOnSurface.hxx>
#include<Adaptor3d_CurveOnSurfacePtr.hxx>
#include<Adaptor3d_CurvePtr.hxx>
#include<Adaptor3d_HCurve.hxx>
#include<Adaptor3d_HCurveOnSurface.hxx>
#include<Adaptor3d_HIsoCurve.hxx>
#include<Adaptor3d_HOffsetCurve.hxx>
#include<Adaptor3d_HSurface.hxx>
#include<Adaptor3d_HSurfaceOfLinearExtrusion.hxx>
#include<Adaptor3d_HSurfaceOfRevolution.hxx>
#include<Adaptor3d_HSurfaceTool.hxx>
#include<Adaptor3d_HVertex.hxx>
#include<Adaptor3d_InterFunc.hxx>
#include<Adaptor3d_IsoCurve.hxx>
#include<Adaptor3d_OffsetCurve.hxx>
#include<Adaptor3d_Surface.hxx>
#include<Adaptor3d_SurfaceOfLinearExtrusion.hxx>
#include<Adaptor3d_SurfaceOfRevolution.hxx>
#include<Adaptor3d_SurfacePtr.hxx>
#include<Adaptor3d_TopolTool.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Geom_Surface.hxx>
#include<TopLoc_Location.hxx>
#include<Handle_Poly_Triangulation.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Poly_Polygon3D.hxx>
#include<Handle_Poly_Polygon2D.hxx>
#include<Handle_Poly_PolygonOnTriangulation.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_TopoDS_TShape.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_Vertex.hxx>
%}
