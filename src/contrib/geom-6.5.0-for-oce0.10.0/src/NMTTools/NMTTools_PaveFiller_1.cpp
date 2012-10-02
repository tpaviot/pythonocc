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

// File:        NMTTools_PaveFiller_1.cxx
// Created:     Mon Dec  8 11:47:55 2003
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#include <NMTTools_PaveFiller.hxx>

#include <TColStd_DataMapOfIntegerListOfInteger.hxx>
#include <TColStd_ListOfInteger.hxx>
#include <TColStd_ListIteratorOfListOfInteger.hxx>
#include <TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>

#include <TopTools_ListOfShape.hxx>

#include <IntTools_Tools.hxx>
#include <BooleanOperations_AncestorsSeqAndSuccessorsSeq.hxx>
#include <BOPTools_VVInterference.hxx>
#include <BOPTools_CArray1OfVVInterference.hxx>

#include <NMTDS_Iterator.hxx>
#include <NMTDS_InterfPool.hxx>
#include <NMTDS_ShapesDataStructure.hxx>

#include <NMTTools_Tools.hxx>

//=======================================================================
// function: PerformVV
// purpose:
//=======================================================================
  void NMTTools_PaveFiller::PerformVV()
{
  myIsDone=Standard_False;
  //
  Standard_Integer aNbVVs, aBL, aNbVSD, nVnew, i, j, n1, n2;
  TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger aIt1;
  TColStd_ListIteratorOfListOfInteger aItX, aItY;
  TColStd_ListOfInteger aLIX;
  TopTools_ListOfShape aLV;
  TopoDS_Vertex aVnew;
  //
  myVSD.Clear();
  //
  const TColStd_DataMapOfIntegerListOfInteger& aMVSD=myDSIt->SDVertices();
  aNbVSD=aMVSD.Extent();
  if (!aNbVSD) {
    return;
  }
  //
  BOPTools_CArray1OfVVInterference& aVVs=myIP->VVInterferences();
  //
  // BlockLength correction
  myDSIt->Initialize(TopAbs_VERTEX, TopAbs_VERTEX);
  aNbVVs=myDSIt->BlockLength();
  aBL=aVVs.BlockLength();
  if (aNbVVs > aBL) {
    aVVs.SetBlockLength(aNbVVs);
  }
  //
  aIt1.Initialize(aMVSD);
  for (; aIt1.More(); aIt1.Next()) {
    aLV.Clear();
    //
    n1=aIt1.Key();
    const TColStd_ListOfInteger& aLIV=aIt1.Value();
    //
    // new vertex
    const TopoDS_Shape& aS1=myDS->Shape(n1);
    aLV.Append(aS1);
    aItX.Initialize(aLIV);
    for (; aItX.More(); aItX.Next()) {
      n2=aItX.Value();
      const TopoDS_Shape& aS2=myDS->Shape(n2);
      aLV.Append(aS2);
    }
    //
    NMTTools_Tools::MakeNewVertex(aLV, aVnew);
    //
    BooleanOperations_AncestorsSeqAndSuccessorsSeq anASSeq;
    //
    myDS->InsertShapeAndAncestorsSuccessors(aVnew, anASSeq);
    nVnew=myDS->NumberOfInsertedShapes();
    myDS->SetState (nVnew, BooleanOperations_ON);
    //
    // myVSD, aLIX
    aLIX.Clear();
    aLIX.Append(n1);
    myVSD.Bind(n1, nVnew);
    //
    aItX.Initialize(aLIV);
    for (; aItX.More(); aItX.Next()) {
      n2=aItX.Value();
      aLIX.Append(n2);
      myVSD.Bind(n2, nVnew);
    }
    //
    // interferences
    aItX.Initialize(aLIX);
    for (i=0; aItX.More(); aItX.Next(), ++i) {
      aItY.Initialize(aLIX);
      for (j=0; aItY.More(); aItY.Next(), ++j) {
        if (j>i) {
          n1=aItX.Value();
          n2=aItY.Value();
          myIP->Add(n1, n2, Standard_True, NMTDS_TI_VV);
          //
          BOPTools_VVInterference aVV(n1, n2);
          aVV.SetNewShape(nVnew);
          aVVs.Append(aVV);
        }
      }
    }
  }//for (; aIt1.More(); aIt1.Next()) {
  myIsDone=Standard_True;
}
//=======================================================================
// function: FindSDVertex
// purpose:
//=======================================================================
  Standard_Integer NMTTools_PaveFiller::FindSDVertex(const Standard_Integer nV)const
{
  Standard_Integer nVSD;
  //
  nVSD=0;
  if (myVSD.IsBound(nV)) {
    nVSD=myVSD.Find(nV);
  }
  return nVSD;
}
/*
//=======================================================================
// function: PerformNewVertices
// purpose:
//=======================================================================
  void NMTTools_PaveFiller::PerformNewVertices()
{
}
*/
