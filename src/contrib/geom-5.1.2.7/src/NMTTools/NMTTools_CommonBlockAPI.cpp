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
// File:	NMTTools_CommonBlockAPI.cxx
// Created:	Mon Dec 15 11:38:04 2003
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <NMTTools_CommonBlockAPI.ixx>

#include <BOPTools_PaveBlock.hxx>
#include <BOPTools_ListOfPaveBlock.hxx>
#include <BOPTools_ListIteratorOfListOfPaveBlock.hxx>

#include <NMTTools_CommonBlock.hxx>
#include <NMTTools_ListOfCommonBlock.hxx>
#include <NMTTools_ListIteratorOfListOfCommonBlock.hxx>

//=======================================================================
// function:  NMTTools_CommonBlockAPI::NMTTools_CommonBlockAPI
// purpose: 
//=======================================================================
  NMTTools_CommonBlockAPI::NMTTools_CommonBlockAPI (const NMTTools_ListOfCommonBlock& aLCB)
{
  myListOfCommonBlock=(void *)&aLCB;
}
//=======================================================================
// function:  List
// purpose: 
//=======================================================================
  const NMTTools_ListOfCommonBlock& NMTTools_CommonBlockAPI::List () const
{
  NMTTools_ListOfCommonBlock* pListOfCommonBlock=(NMTTools_ListOfCommonBlock*)myListOfCommonBlock;
  return *pListOfCommonBlock;
}
//=======================================================================
// function:  CommonPaveBlocks
// purpose:   get all CommonPaveBlocks
//=======================================================================
  const BOPTools_ListOfPaveBlock& NMTTools_CommonBlockAPI::CommonPaveBlocks(const Standard_Integer anE) const
{
  Standard_Integer anECurrent;
  BOPTools_ListIteratorOfListOfPaveBlock anItPB;
  //
  BOPTools_ListOfPaveBlock* pmyListOfPaveBlock=(BOPTools_ListOfPaveBlock*) &myListOfPaveBlock;
  pmyListOfPaveBlock->Clear();

  NMTTools_ListOfCommonBlock* pListOfCommonBlock=(NMTTools_ListOfCommonBlock*)myListOfCommonBlock;

  NMTTools_ListIteratorOfListOfCommonBlock anIt(*pListOfCommonBlock);
  for (; anIt.More(); anIt.Next()) {
    const NMTTools_CommonBlock& aCB=anIt.Value();
    //
    const BOPTools_ListOfPaveBlock& aLPB=aCB.PaveBlocks();
    anItPB.Initialize(aLPB);
    for (; anItPB.More(); anItPB.Next()) {
      const BOPTools_PaveBlock& aPB=anItPB.Value();
      anECurrent=aPB.OriginalEdge();
      if (anECurrent==anE) {
	pmyListOfPaveBlock->Append(aPB);
	break;
      }
    }
  }
  return myListOfPaveBlock;
}
//=======================================================================
// function:  IsCommonBlock
// purpose: 
//=======================================================================
  Standard_Boolean NMTTools_CommonBlockAPI::IsCommonBlock(const BOPTools_PaveBlock& aPB) const
{
  Standard_Integer anE;
  //
  anE=aPB.OriginalEdge();
  //
  CommonPaveBlocks(anE);
  //
  BOPTools_ListIteratorOfListOfPaveBlock anIt(myListOfPaveBlock);
  for (; anIt.More(); anIt.Next()) {
    const BOPTools_PaveBlock& aPB1=anIt.Value();
    if (aPB1.IsEqual(aPB)) {
      return Standard_True;
    }
  }
  return Standard_False;
}

//=======================================================================
// function:  CommonBlock
// purpose: 
//=======================================================================
  NMTTools_CommonBlock& NMTTools_CommonBlockAPI::CommonBlock(const BOPTools_PaveBlock& aPB)const
{
  static NMTTools_CommonBlock aCBTMP;
  //
  NMTTools_ListIteratorOfListOfCommonBlock anItCB;
  BOPTools_ListIteratorOfListOfPaveBlock anItPB;
  //
  NMTTools_ListOfCommonBlock* pLCB=(NMTTools_ListOfCommonBlock*)myListOfCommonBlock;
  //
  anItCB.Initialize(*pLCB);
  for (; anItCB.More(); anItCB.Next()) {
    NMTTools_CommonBlock& aCB=anItCB.Value();
    //
    const BOPTools_ListOfPaveBlock& aLPB=aCB.PaveBlocks();
    anItPB.Initialize(aLPB);
    for (; anItPB.More(); anItPB.Next()) {
      const BOPTools_PaveBlock& aPBx=anItPB.Value();
      if (aPBx.IsEqual(aPB)) {
	return aCB;
      }
    }
  }
  return aCBTMP;
}
