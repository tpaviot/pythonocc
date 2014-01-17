// Copyright (C) 2007-2013  CEA/DEN, EDF R&D, OPEN CASCADE
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
// File:        GEOMAlgo_FinderShapeOn2.hxx
// Created:     Fri Mar  4 10:31:06 2005
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _GEOMAlgo_FinderShapeOn2_HeaderFile
#define _GEOMAlgo_FinderShapeOn2_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <GEOMAlgo_State.hxx>
#include <Standard_Integer.hxx>
//#include <Handle_GEOMAlgo_Clsf.hxx>
#include <GEOMAlgo_Clsf.hxx>
#include <TopTools_ListOfShape.hxx>
#include <GEOMAlgo_IndexedDataMapOfShapeState.hxx>
#include <GEOMAlgo_ShapeAlgo.hxx>
#include <GEOMAlgo_Clsf.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Edge.hxx>
#include <GEOMAlgo_ListOfPnt.hxx>

//=======================================================================
//function : GEOMAlgo_FinderShapeOn2
//purpose  :
//=======================================================================
class GEOMAlgo_FinderShapeOn2  : public GEOMAlgo_ShapeAlgo
{
 public:
  Standard_EXPORT
    GEOMAlgo_FinderShapeOn2();

  Standard_EXPORT
    virtual ~GEOMAlgo_FinderShapeOn2();

  Standard_EXPORT
    void SetClsf(const Handle(GEOMAlgo_Clsf)& aClsf) ;

  Standard_EXPORT
    const Handle_GEOMAlgo_Clsf& Clsf() const;

  Standard_EXPORT
    void SetShapeType(const TopAbs_ShapeEnum aST) ;

  Standard_EXPORT
    TopAbs_ShapeEnum ShapeType() const;

  Standard_EXPORT
    void SetState(const GEOMAlgo_State aSF) ;

  Standard_EXPORT
    GEOMAlgo_State State() const;

  Standard_EXPORT
    void SetNbPntsMin(const Standard_Integer aNb) ;

  Standard_EXPORT
    Standard_Integer NbPntsMin() const;

  Standard_EXPORT
    void SetNbPntsMax(const Standard_Integer aNb) ;

  Standard_EXPORT
    Standard_Integer NbPntsMax() const;

  Standard_EXPORT
    virtual  void Perform() ;

  Standard_EXPORT
    const TopTools_ListOfShape& Shapes() const;

  Standard_EXPORT
    const GEOMAlgo_IndexedDataMapOfShapeState& MSS() const;

protected:
  Standard_EXPORT
    virtual  void CheckData() ;

  Standard_EXPORT
    void ProcessVertices() ;

  Standard_EXPORT
    void ProcessEdges() ;

  Standard_EXPORT
    void ProcessFaces() ;

  Standard_EXPORT
    void ProcessSolids() ;

  Standard_EXPORT
    void InnerPoints(const TopoDS_Face& aF,
                     GEOMAlgo_ListOfPnt& aLP) ;

  Standard_EXPORT
    void InnerPoints(const TopoDS_Edge& aE,
                     GEOMAlgo_ListOfPnt& aLP) ;

  Standard_EXPORT
    void InnerPoints(const TopoDS_Edge& aE,
                     const Standard_Integer aNbPnts,
                     GEOMAlgo_ListOfPnt& aLP) ;


  TopAbs_ShapeEnum myShapeType;
  GEOMAlgo_State myState;
  Standard_Integer myNbPntsMin;
  Standard_Integer myNbPntsMax;
  Handle_GEOMAlgo_Clsf myClsf;
  TopTools_ListOfShape myLS;
  GEOMAlgo_IndexedDataMapOfShapeState myMSS;
};

#endif
