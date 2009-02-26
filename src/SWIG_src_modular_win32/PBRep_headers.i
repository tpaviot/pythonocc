/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%{

// Headers necessary to define wrapped classes.

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
#include<PMMgt_PManaged.hxx>
#include<ObjMgt_ExternRef.hxx>
#include<ObjMgt_ExternShareable.hxx>
#include<ObjMgt_PSeqOfExtRef.hxx>
#include<ObjMgt_SeqExplorerOfPSeqOfExtRef.hxx>
#include<ObjMgt_SeqNodeOfPSeqOfExtRef.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<PTopLoc_Location.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<Handle_PPoly_PolygonOnTriangulation.hxx>
#include<Handle_PPoly_Triangulation.hxx>
#include<gp_Pnt.hxx>
#include<Handle_PGeom2d_Curve.hxx>
#include<Handle_PGeom_Surface.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_PGeom_Curve.hxx>
#include<Handle_PPoly_Polygon2D.hxx>
#include<Handle_PPoly_Polygon3D.hxx>
%}
