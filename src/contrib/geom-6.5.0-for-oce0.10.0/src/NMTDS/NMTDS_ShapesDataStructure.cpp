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

// File:        NMTDS_ShapesDataStructure.cxx
// Author:      Peter KURNEV

#include <NMTDS_ShapesDataStructure.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopoDS_Shape.hxx>
#include <BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors.hxx>
#include <NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors.hxx>
#include <NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors.hxx>
#include <BooleanOperations_ShapeAndInterferences.hxx>
#include <NMTDS_IndexRange.hxx>
//
#include <BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors.hxx>
#include <BooleanOperations_AncestorsSeqAndSuccessorsSeq.hxx>
#include <TColStd_MapOfInteger.hxx>
#include <NMTDS_Tools.hxx>


static
  void ComputeBoxExS(const Standard_Integer aIx,
                     const NMTDS_ShapesDataStructure* pDS,
                     Bnd_Box& aBoxEx);
static
  void GetAllSuccessorsS(const Standard_Integer nS,
                         const NMTDS_ShapesDataStructure* myDS,
                         TColStd_IndexedMapOfInteger& aMA);

//===========================================================================
//function : NMTDS_ShapesDataStructure::NMTDS_ShapesDataStructure
//purpose  : 
//===========================================================================
NMTDS_ShapesDataStructure::NMTDS_ShapesDataStructure()
:
  BooleanOperations_ShapesDataStructure()
{}
//===========================================================================
//function : SetCompositeShape
//purpose  : 
//===========================================================================
void NMTDS_ShapesDataStructure::SetCompositeShape(const TopoDS_Shape& aS)
{
  myCompositeShape=aS;
}
//===========================================================================
//function : CompositeShape
//purpose  : 
//===========================================================================
const TopoDS_Shape& NMTDS_ShapesDataStructure::CompositeShape()const
{
  return myCompositeShape;
}
//===========================================================================
//function : Ranges
//purpose  : 
//===========================================================================
const NMTDS_CArray1OfIndexRange& NMTDS_ShapesDataStructure::Ranges()const
{
  return myRanges;
}
//===========================================================================
//function : FillMap
//purpose  : 
//===========================================================================
void NMTDS_ShapesDataStructure::FillMap
  (const TopoDS_Shape& aS,
   BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors& aMSA,
   BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors& aMS) const
{
  Standard_Integer iX, i, j, aIndex, aNbSc, aNbS;
  BooleanOperations_AncestorsSeqAndSuccessorsSeq aAS;
  //
  aMSA.Add(aS, aAS);
  aMS.Add(aS, aAS);
  FillSubshapes(aS, aMSA, aMS);
  //
  aNbS=aMS.Extent();
  for(i=1; i<=aNbS; ++i) {
    TColStd_MapOfInteger aMFence;
    //
    const TopoDS_Shape& aSX=aMS.FindKey(i);
    iX=aMSA.FindIndex(aSX);
    const BooleanOperations_AncestorsSeqAndSuccessorsSeq& aAS1=aMSA(iX);
    //
    aNbSc=aAS1.NumberOfSuccessors();
    for(j=1; j<=aNbSc; ++j) {
      aIndex=aAS1.GetSuccessor(j);
      if(aMFence.Add(aIndex)) {
        BooleanOperations_AncestorsSeqAndSuccessorsSeq& aAS2=aMSA.ChangeFromIndex(aIndex);
        aAS2.SetNewAncestor(iX);
      }
    }
  }
}
//===========================================================================
//function : FillSubshapes
//purpose  : 
//===========================================================================
void NMTDS_ShapesDataStructure::FillSubshapes
  (const TopoDS_Shape& aS,
   BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors& aMSA,
   BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors& aMS) const
{
  Standard_Boolean bIsNewSubShape;
  Standard_Integer aIndexSubShape, aIndex;
  BooleanOperations_AncestorsSeqAndSuccessorsSeq aASx;
  //
  aIndex=aMSA.FindIndex(aS);
  BooleanOperations_AncestorsSeqAndSuccessorsSeq& aAS=aMSA.ChangeFromIndex(aIndex);
  //
  TopoDS_Iterator anIt(aS, Standard_True);
  for(; anIt.More(); anIt.Next()) {
    const TopoDS_Shape& aSubShape = anIt.Value();
    bIsNewSubShape = Standard_False;
    if(!aMSA.Contains(aSubShape)) {
      bIsNewSubShape=!bIsNewSubShape;
      aIndexSubShape=aMSA.Add(aSubShape, aASx);
      aMS.Add(aSubShape, aASx);
    }
    else {
      aIndexSubShape=aMSA.FindIndex(aSubShape);
    }
    aAS.SetNewSuccessor(aIndexSubShape);
    aAS.SetNewOrientation(aSubShape.Orientation());
    //
    if(bIsNewSubShape && (aSubShape.ShapeType() != TopAbs_VERTEX)) {
      FillSubshapes(aSubShape, aMSA, aMS);
    }
  }
}
//===========================================================================
//function : Init
//purpose  : 
//===========================================================================
void NMTDS_ShapesDataStructure::Init()
{
  Standard_Integer i, j, aNbSx, aNbS, aShift, aNbRanges;
  Standard_Integer iFirst, iLast;
  NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors aLx;
  NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors aLit;
  TopoDS_Iterator anIt;
  BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors aMSA;
  //
  anIt.Initialize(myCompositeShape);
  for (; anIt.More(); anIt.Next()) {
    const TopoDS_Shape& aSx=anIt.Value(); 
    BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors aMS;
    //
    if (!aMSA.Contains(aSx)) {
      FillMap(aSx, aMSA, aMS);
      aLx.Append(aMS);
    }
  }
  aNbS=aMSA.Extent(); 
  //
  // Fill myRanges
  i=aLx.Extent();
  myRanges.Resize(i);
  aLit.Initialize(aLx);
  for (i=1; aLit.More(); aLit.Next(), ++i) {
    const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors& aMSx=aLit.Value();
    aNbSx=aMSx.Extent();
    if (i==1) {
      iFirst=1;
      iLast=aNbSx;
      myRanges(i).SetFirst(iFirst);
      myRanges(i).SetLast(iLast);
      continue;
    }
    iFirst=myRanges(i-1).Last()+1;
    iLast=iFirst+aNbSx-1;
    myRanges(i).SetFirst(iFirst);
    myRanges(i).SetLast(iLast);
  }
  //
  myNumberOfShapesOfTheObject=aNbS;
  myNumberOfShapesOfTheTool=0;
  myLength=2*aNbS;
  //
  // Allocate the whole Table
  myListOfShapeAndInterferences = (BooleanOperations_PShapeAndInterferences)
    Standard::Allocate(myLength*sizeof(BooleanOperations_ShapeAndInterferences));
  //
  // Fill the table
  
  aShift=0;
  for (j=1; j<=aNbS; ++j) {
    const TopoDS_Shape& aSx=aMSA.FindKey(j);
    const BooleanOperations_AncestorsSeqAndSuccessorsSeq& aASx=aMSA.FindFromIndex(j);
    InsertShapeAndAncestorsSuccessors(aSx, aASx, aShift);
  }
  // myShapeIndexMap
  myShapeIndexMap.Clear();
  //
  //modified by NIZNHY-PKV Mon Dec 12 09:01:53 2011f
  aNbRanges=myRanges.Extent();
  for (i=1; i<=aNbRanges; ++i){
    const NMTDS_IndexRange& aR=myRanges(i);
    iFirst=aR.First();
    iLast =aR.Last();
    for (j=iFirst; j<=iLast; ++j) { 
      const TopoDS_Shape& aS=Shape(j);
      myShapeIndexMap.Bind(aS, j);
    }
  }
  //modified by NIZNHY-PKV Mon Dec 12 09:02:00 2011t
  //
  // myRefEdges
  iLast=myNumberOfShapesOfTheObject+myNumberOfShapesOfTheTool;
  myRefEdges.Resize(iLast);

  for (i=1; i<=iLast; ++i) {
    const TopoDS_Shape& aS=Shape(i);
    myRefEdges(i)=0;
    if (aS.ShapeType()==TopAbs_EDGE) {
      myNbEdges++;
      myRefEdges(i)=myNbEdges;
    }
  }
}
//===========================================================================
//function : ShapeRangeIndex
//purpose  : 
//===========================================================================
Standard_Integer NMTDS_ShapesDataStructure::ShapeRangeIndex
  (const Standard_Integer aId)const
{
  Standard_Boolean bFound;
  Standard_Integer i, aNbR, aIdx, aNbS, aZero=0;
  //
  aNbS=myNumberOfShapesOfTheObject+myNumberOfShapesOfTheTool;
  
  aIdx=aId;
  if (aIdx > aNbS || aIdx < 1){
    return aZero;
  }
  //  
  if (aIdx > myNumberOfShapesOfTheObject) {
    aIdx-=myNumberOfShapesOfTheObject;
  }
  //
  aNbR=myRanges.Extent();
  for (i=1; i<=aNbR; ++i) {
    const NMTDS_IndexRange& aRange=myRanges(i);
    bFound=aRange.IsInRange(aIdx);
    if (bFound) {
     return i;
    }
  }
  return aZero;
}
//===========================================================================
//function : Rank
//purpose  : 
//===========================================================================
Standard_Integer NMTDS_ShapesDataStructure::Rank
  (const Standard_Integer aId)const
{
  Standard_Boolean bFound;
  Standard_Integer i, aNbR, aNbS, aZero=0;
  //
  aNbS=myNumberOfShapesOfTheObject;
  
  if (aId > aNbS || aId < 1){
    return aZero;
  }
  //  
  aNbR=myRanges.Extent();
  for (i=1; i<=aNbR; ++i) {
    const NMTDS_IndexRange& aRange=myRanges(i);
    bFound=aRange.IsInRange(aId);
    if (bFound) {
     return i;
    }
  }
  return aZero;
}
//===========================================================================
//function : ShapeIndex
//purpose  : 
//===========================================================================
Standard_Integer NMTDS_ShapesDataStructure::ShapeIndex
  (const TopoDS_Shape& aS,
   const Standard_Integer aRank)const
{
  Standard_Address pIndex;
  Standard_Integer aIndex;
  //
  aIndex=0;
  //
  //modified by NIZNHY-PKV Mon Dec 12 09:02:48 2011f
  pIndex=myShapeIndexMap.Find1(aS);
  if (pIndex) {
    aIndex=*((Standard_Integer*)pIndex);
  }
  //modified by NIZNHY-PKV Mon Dec 12 09:02:54 2011t
  return aIndex;
}

//=======================================================================
//function : ComputeBoxEx
//purpose  : 
//=======================================================================
void NMTDS_ShapesDataStructure::ComputeBoxEx 
  (const Standard_Integer aIx,
   Bnd_Box& aBoxEx)const
{
  ComputeBoxExS(aIx, this, aBoxEx);
}
//=======================================================================
//function : GetAllSuccessors
//purpose  : 
//=======================================================================
void NMTDS_ShapesDataStructure::GetAllSuccessors
  (const Standard_Integer nS,
   TColStd_IndexedMapOfInteger& aMA)const
{
  GetAllSuccessorsS(nS, this, aMA);
}
//=======================================================================
//function : GetAllSuccessorsS
//purpose  : 
//=======================================================================
void GetAllSuccessorsS(const Standard_Integer nS,
                       const NMTDS_ShapesDataStructure* myDS,
                       TColStd_IndexedMapOfInteger& aMA)
{
  TopAbs_ShapeEnum aT;
  Standard_Integer i, nSx, aNbSuccessors, *pSuccessors;
  Standard_Address xSuccessors;
  //
  const TopoDS_Shape& aS=myDS->Shape(nS);
  aT=aS.ShapeType();
  if(NMTDS_Tools::HasBRep(aT)) {
    aMA.Add(nS);
    //
    if (aT==TopAbs_VERTEX) {
      return;
    }
  }
  //
  myDS->GetSuccessors(nS, xSuccessors, aNbSuccessors);
  pSuccessors=(Standard_Integer*)xSuccessors;
  for (i=0; i<aNbSuccessors; ++i) {
    nSx=pSuccessors[i];
    GetAllSuccessorsS(nSx, myDS, aMA);
  }
}
//=======================================================================
// function: ComputeBoxExS
// purpose: 
//=======================================================================
void ComputeBoxExS(const Standard_Integer aIx,
		   const NMTDS_ShapesDataStructure* pDS,
		   Bnd_Box& aBoxEx)
{
  Standard_Integer i, aNbS, iS;
  //
  const Bnd_Box& aBox=pDS->GetBoundingBox(aIx);
  aBoxEx.Add(aBox);
  //
  aNbS=pDS->NumberOfSuccessors(aIx);
  for (i=1; i<=aNbS; ++i) {
    Bnd_Box aBoxS;
    iS=pDS->GetSuccessor(aIx, i);
    ComputeBoxExS(iS, pDS, aBoxS);
    aBoxEx.Add(aBoxS);
  }
}
