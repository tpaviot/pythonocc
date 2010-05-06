//  Copyright (C) 2007-2008  CEA/DEN, EDF R&D, OPEN CASCADE
//
//  Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
//  CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
//  This library is free software; you can redistribute it and/or
//  modify it under the terms of the GNU Lesser General Public
//  License as published by the Free Software Foundation; either
//  version 2.1 of the License.
//
//  This library is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//  Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public
//  License along with this library; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
//  See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
// File:	NMTDS_ShapesDataStructure.cxx
// Created:	Mon Dec  1 10:21:04 2003
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <NMTDS_ShapesDataStructure.ixx>
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
// Modified to Add new methods Thu Sep 14 14:35:18 2006 
// Contribution of Samtech www.samcef.com BEGIN
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
// Contribution of Samtech www.samcef.com END 
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
    //modified by NIZNHY-PKV Tue Feb 27 17:05:47 2007f
    //FillMap(aSx, aMSA, aMS);
    //aLx.Append(aMS);
    //
    if (!aMSA.Contains(aSx)) {
      FillMap(aSx, aMSA, aMS);
      aLx.Append(aMS);
    }
    //modified by NIZNHY-PKV Tue Feb 27 17:06:03 2007t
  }
  aNbS=aMSA.Extent(); 
  //
  // Fill myRanges
  //modified by NIZNHY-PKV Tue Feb 27 17:10:07 2007f
  i=aLx.Extent();
  //modified by NIZNHY-PKV Tue Feb 27 17:10:10 2007t
  myRanges.Resize(i);
  aLit.Initialize(aLx);
  for (i=1; aLit.More(); aLit.Next(), ++i) {
    // Modified  Thu Sep 14 14:35:18 2006 
    // Contribution of Samtech www.samcef.com BEGIN
    const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors& aMSx=aLit.Value();
    aNbSx=aMSx.Extent();
    // Contribution of Samtech www.samcef.com END
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
  // Modified  Thu Sep 14 14:35:18 2006 
  // Contribution of Samtech www.samcef.com BEGIN
  //myNumberOfShapesOfTheTool=aNbS;
  //myLength=3*aNbS;
  myNumberOfShapesOfTheTool=0;
  myLength=2*aNbS;
  // Contribution of Samtech www.samcef.com END
  //
  // Allocate the whole Table
  myListOfShapeAndInterferences = (BooleanOperations_PShapeAndInterferences)
    Standard::Allocate(myLength*sizeof(BooleanOperations_ShapeAndInterferences));
  // Modified  Thu Sep 14 14:35:18 2006 
  // Contribution of Samtech www.samcef.com BEGIN
  //
  // Fill the table
    
  //aShift=0;
  //for (i=0; i<2; ++i) {
  //  if (i) {
  //    aShift=aNbS;
  //  }
  //  for (j=1; j<=aNbS; ++j) {
  //    const TopoDS_Shape& aSx=aMSA.FindKey(j);
  //    const BooleanOperations_AncestorsSeqAndSuccessorsSeq& aASx=
  //      aMSA.FindFromIndex(j);
  //    InsertShapeAndAncestorsSuccessors(aSx, aASx, aShift);
  //  }
  //}
  
  aShift=0;
  for (j=1; j<=aNbS; ++j) {
    const TopoDS_Shape& aSx=aMSA.FindKey(j);
    const BooleanOperations_AncestorsSeqAndSuccessorsSeq& aASx=aMSA.FindFromIndex(j);
    InsertShapeAndAncestorsSuccessors(aSx, aASx, aShift);
  }
  // Contribution of Samtech www.samcef.com END
  //
  // myShapeIndexMap
  myShapeIndexMap.Clear();
  //
  aNbRanges=myRanges.Extent();
  for (i=1; i<=aNbRanges; ++i){
    BooleanOperations_IndexedDataMapOfShapeInteger aSIM;
    //
    const NMTDS_IndexRange& aR=myRanges(i);
    iFirst=aR.First();
    iLast =aR.Last();
    for (j=iFirst; j<=iLast; ++j) { 
      const TopoDS_Shape& aS=Shape(j);
      aSIM.Add(aS, j);
    }
    myShapeIndexMap.Add(i, aSIM);
  }
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
  Standard_Integer NMTDS_ShapesDataStructure::ShapeRangeIndex(const Standard_Integer aId)const
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
  Standard_Integer NMTDS_ShapesDataStructure::Rank(const Standard_Integer aId)const
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
  Standard_Integer NMTDS_ShapesDataStructure::ShapeIndex(const TopoDS_Shape& aS,
							 const Standard_Integer aRank)const
{
  Standard_Boolean bFound;
  Standard_Integer aIndex=0;
  //
  bFound=myShapeIndexMap.Contains(aRank);
  if (!bFound) {
    return aIndex;
  }
  // Modified Thu Sep 14 14:35:18 2006 
  // Contribution of Samtech www.samcef.com BEGIN
  //
  //const BooleanOperations_IndexedDataMapOfShapeInteger& aSIM=
  //  myShapeIndexMap.FindFromKey(aRank);
  //
  //bFound=aSIM.Contains(aS);
  //if (!bFound) {
  //  return aIndex;
  //}
  //
  //aIndex=aSIM.FindFromKey(aS);
  //
  Standard_Integer i, aNbRanks;
  //
  aNbRanks=myShapeIndexMap.Extent();
  for (i=1; i<=aNbRanks; ++i){
    const BooleanOperations_IndexedDataMapOfShapeInteger& aSIM=myShapeIndexMap.FindFromKey(i);
    bFound=aSIM.Contains(aS);
    if (bFound) {
      aIndex=aSIM.FindFromKey(aS);
      return aIndex;
    }
  }
  // Contribution of Samtech www.samcef.com END
  return aIndex;
}

//=======================================================================
//function : ComputeBoxEx
//purpose  : 
//=======================================================================
  void NMTDS_ShapesDataStructure::ComputeBoxEx (const Standard_Integer aIx,
						Bnd_Box& aBoxEx)const
{
  ComputeBoxExS(aIx, this, aBoxEx);
}
//=======================================================================
//function : GetAllSuccessors
//purpose  : 
//=======================================================================
  void NMTDS_ShapesDataStructure::GetAllSuccessors(const Standard_Integer nS,
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
