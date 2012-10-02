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

// File:        NMTTools_Tools.hxx
// Created:     Mon Dec  8 10:35:15 2003
// Author:      Peter KURNEV
//              <pkv@irinox>

#ifndef _NMTTools_Tools_HeaderFile
#define _NMTTools_Tools_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Boolean.hxx>
#include <Handle_IntTools_Context.hxx>
#include <Handle_Geom2d_Curve.hxx>
#include <Standard_Real.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopoDS_Vertex.hxx>
#include <BOPTools_CArray1OfVVInterference.hxx>
#include <BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger.hxx>
#include <BOPTools_CArray1OfSSInterference.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Face.hxx>
#include <IntTools_Context.hxx>
#include <NMTTools_ListOfCoupleOfShape.hxx>
#include <NMTTools_IndexedDataMapOfShapeIndexedMapOfShape.hxx>
#include <Geom2d_Curve.hxx>

//=======================================================================
//function : NMTTools_Tools
//purpose  :
//=======================================================================
class NMTTools_Tools  {
 public:
  Standard_EXPORT
    static  void MakeNewVertex(const TopTools_ListOfShape& aLV,
			       TopoDS_Vertex& aNewVertex) ;

  Standard_EXPORT
    static  void FindChains(const BOPTools_CArray1OfVVInterference& aVVs,
			    BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger& aMCX) ;

  Standard_EXPORT
    static  void FindChains(const BOPTools_CArray1OfSSInterference& aVVs,
			    BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger& aMCX) ;

  Standard_EXPORT
    static  void FindChains(const BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger& aMCV,
			    BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger& aMCX) ;

  Standard_EXPORT
    static  Standard_Boolean IsSplitInOnFace(const TopoDS_Edge& aE,
					     const TopoDS_Face& aF,
					     const Handle(IntTools_Context)& aCtx) ;

  Standard_EXPORT
    static  Standard_Boolean AreFacesSameDomain(const TopoDS_Face& aF1,
						const TopoDS_Face& aF2,
						const Handle(IntTools_Context)& aCtx) ;

  Standard_EXPORT
    static  void FindChains(const NMTTools_ListOfCoupleOfShape& aLCS,
			    NMTTools_IndexedDataMapOfShapeIndexedMapOfShape& aM) ;

  Standard_EXPORT
    static  void FindChains(const NMTTools_IndexedDataMapOfShapeIndexedMapOfShape& aM1,
			    NMTTools_IndexedDataMapOfShapeIndexedMapOfShape& aM2) ;

  Standard_EXPORT
    static  void MakePCurve(const TopoDS_Edge& aE,
			    const TopoDS_Face& aF,
			    const Handle(Geom2d_Curve)& aC2D) ;

  Standard_EXPORT
    static  void UpdateEdge(const TopoDS_Edge& aE,
			    const Standard_Real aTol) ;

};
#endif
