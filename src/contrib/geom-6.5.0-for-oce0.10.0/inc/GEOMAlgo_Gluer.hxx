
// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
//
// Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License.
//
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public
// License along with this library; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//

// File:	GEOMAlgo_Gluer.hxx
// Created:	Sat Dec 04 12:45:53 2004
// Author:	Peter KURNEV
//		<peter@PREFEX>
//
#ifndef _GEOMAlgo_Gluer_HeaderFile
#define _GEOMAlgo_Gluer_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_Real.hxx>
#include <TopTools_DataMapOfShapeListOfShape.hxx>
#include <TopTools_DataMapOfShapeShape.hxx>
#include <Standard_Integer.hxx>
#include <TopTools_ListOfShape.hxx>
#include <GEOMAlgo_ShapeAlgo.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Vertex.hxx>
#include <GEOMAlgo_PassKeyShape.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopoDS_Compound.hxx>

//=======================================================================
//class    : GEOMAlgo_Gluer
//purpose  :
//=======================================================================
class GEOMAlgo_Gluer  : public GEOMAlgo_ShapeAlgo {
public:
  Standard_EXPORT
    GEOMAlgo_Gluer();

  Standard_EXPORT
    virtual ~GEOMAlgo_Gluer();

  Standard_EXPORT
    void SetCheckGeometry(const Standard_Boolean aFlag) ;

  Standard_EXPORT
    Standard_Boolean CheckGeometry() const;

  Standard_EXPORT
    void SetKeepNonSolids(const Standard_Boolean aFlag) ;

  Standard_EXPORT
    Standard_Boolean KeepNonSolids() const;

  Standard_EXPORT
    virtual  void Perform() ;

  Standard_EXPORT
    Standard_Integer AloneShapes() const;

  Standard_EXPORT
    const TopTools_ListOfShape& Modified(const TopoDS_Shape& S) ;

  Standard_EXPORT
    const TopTools_ListOfShape& Generated(const TopoDS_Shape& S) ;

  Standard_EXPORT
    Standard_Boolean IsDeleted(const TopoDS_Shape& S) ;

  Standard_EXPORT
    const TopTools_DataMapOfShapeListOfShape& Images() const;

  Standard_EXPORT
    const TopTools_DataMapOfShapeShape& Origins() const;

 protected:
  Standard_EXPORT
    virtual  void CheckData() ;

  Standard_EXPORT
    virtual  void CheckResult() ;

  Standard_EXPORT
    void MakeVertices() ;

  Standard_EXPORT
    void MakeEdges() ;

  Standard_EXPORT
    void MakeFaces() ;

  Standard_EXPORT
    void MakeShapes(const TopAbs_ShapeEnum aType) ;

  Standard_EXPORT
    void MakeShells() ;

  Standard_EXPORT
    void MakeSolids() ;

  Standard_EXPORT
    void InnerTolerance() ;

  Standard_EXPORT
    void EdgePassKey(const TopoDS_Edge& aE,
		     GEOMAlgo_PassKeyShape& aPK) ;

  Standard_EXPORT
    void FacePassKey(const TopoDS_Face& aF,
		     GEOMAlgo_PassKeyShape& aPK) ;

  Standard_EXPORT
    void MakeVertex(const TopTools_ListOfShape& aLV,
		    TopoDS_Vertex& aNewV) ;

  Standard_EXPORT
    void MakeEdge(const TopoDS_Edge& aEdge,
		  TopoDS_Edge& aNewEdge) ;

  Standard_EXPORT
    void MakeFace(const TopoDS_Face& aFace,
		  TopoDS_Face& aNewEdge) ;

  Standard_EXPORT
    Standard_Boolean IsToReverse(const TopoDS_Face& aFR,
				 const TopoDS_Face& aF) ;

  Standard_EXPORT
    Standard_Boolean HasNewSubShape(const TopoDS_Shape& aS) const;

  Standard_EXPORT
    void MakeSubShapes(const TopoDS_Shape& aS,
		       TopTools_MapOfShape& aM,
		       TopoDS_Compound& aC) ;


  Standard_Boolean myCheckGeometry;
  Standard_Boolean myKeepNonSolids;
  Standard_Real myTol;
  TopTools_DataMapOfShapeListOfShape myImages;
  TopTools_DataMapOfShapeShape myOrigins;
  Standard_Integer myNbAlone;
  TopTools_ListOfShape myGenerated;
};
#endif
