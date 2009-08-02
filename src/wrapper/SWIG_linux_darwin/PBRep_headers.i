/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_PBRep_Curve3D.hxx>
#include<Handle_PBRep_CurveOn2Surfaces.hxx>
#include<Handle_PBRep_CurveOnClosedSurface.hxx>
#include<Handle_PBRep_CurveOnSurface.hxx>
#include<Handle_PBRep_CurveRepresentation.hxx>
#include<Handle_PBRep_GCurve.hxx>
#include<Handle_PBRep_PointOnCurve.hxx>
#include<Handle_PBRep_PointOnCurveOnSurface.hxx>
#include<Handle_PBRep_PointOnSurface.hxx>
#include<Handle_PBRep_PointRepresentation.hxx>
#include<Handle_PBRep_PointsOnSurface.hxx>
#include<Handle_PBRep_Polygon3D.hxx>
#include<Handle_PBRep_PolygonOnClosedSurface.hxx>
#include<Handle_PBRep_PolygonOnClosedTriangulation.hxx>
#include<Handle_PBRep_PolygonOnSurface.hxx>
#include<Handle_PBRep_PolygonOnTriangulation.hxx>
#include<Handle_PBRep_TEdge.hxx>
#include<Handle_PBRep_TEdge1.hxx>
#include<Handle_PBRep_TFace.hxx>
#include<Handle_PBRep_TFace1.hxx>
#include<Handle_PBRep_TVertex.hxx>
#include<Handle_PBRep_TVertex1.hxx>
#include<PBRep_Curve3D.hxx>
#include<PBRep_CurveOn2Surfaces.hxx>
#include<PBRep_CurveOnClosedSurface.hxx>
#include<PBRep_CurveOnSurface.hxx>
#include<PBRep_CurveRepresentation.hxx>
#include<PBRep_GCurve.hxx>
#include<PBRep_PointOnCurve.hxx>
#include<PBRep_PointOnCurveOnSurface.hxx>
#include<PBRep_PointOnSurface.hxx>
#include<PBRep_PointRepresentation.hxx>
#include<PBRep_PointsOnSurface.hxx>
#include<PBRep_Polygon3D.hxx>
#include<PBRep_PolygonOnClosedSurface.hxx>
#include<PBRep_PolygonOnClosedTriangulation.hxx>
#include<PBRep_PolygonOnSurface.hxx>
#include<PBRep_PolygonOnTriangulation.hxx>
#include<PBRep_TEdge.hxx>
#include<PBRep_TEdge1.hxx>
#include<PBRep_TFace.hxx>
#include<PBRep_TFace1.hxx>
#include<PBRep_TVertex.hxx>
#include<PBRep_TVertex1.hxx>

// Additional headers necessary for compilation.

#include<DBC_BaseArray.hxx>
#include<DBC_BaseArray_objs.hxx>
#include<DBC_DBVArray.hxx>
#include<DBC_VArrayNodeOfVArrayOfCharacter.hxx>
#include<DBC_VArrayNodeOfVArrayOfExtCharacter.hxx>
#include<DBC_VArrayNodeOfVArrayOfInteger.hxx>
#include<DBC_VArrayNodeOfVArrayOfReal.hxx>
#include<DBC_VArrayOfCharacter.hxx>
#include<DBC_VArrayOfExtCharacter.hxx>
#include<DBC_VArrayOfInteger.hxx>
#include<DBC_VArrayOfReal.hxx>
#include<DBC_VArrayTNodeOfVArrayOfCharacter.hxx>
#include<DBC_VArrayTNodeOfVArrayOfExtCharacter.hxx>
#include<DBC_VArrayTNodeOfVArrayOfInteger.hxx>
#include<DBC_VArrayTNodeOfVArrayOfReal.hxx>
#include<ObjMgt_ExternRef.hxx>
#include<ObjMgt_ExternShareable.hxx>
#include<ObjMgt_PSeqOfExtRef.hxx>
#include<ObjMgt_SeqExplorerOfPSeqOfExtRef.hxx>
#include<ObjMgt_SeqNodeOfPSeqOfExtRef.hxx>
#include<PMMgt_PManaged.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<PTopLoc_Location.hxx>
#include<Handle_PPoly_PolygonOnTriangulation.hxx>
#include<Handle_PPoly_Triangulation.hxx>
#include<Handle_PGeom2d_Curve.hxx>
#include<Handle_PGeom_Surface.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_PGeom_Curve.hxx>
#include<gp_Pnt.hxx>
#include<Handle_PPoly_Polygon2D.hxx>
#include<Handle_PPoly_Polygon3D.hxx>
%}
