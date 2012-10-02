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
// File:	GEOMAlgo_GetInPlaceIterator.cxx
// Created:
// Author:	Peter KURNEV

#include <GEOMAlgo_GetInPlace.hxx>

#include <NMTTools_CoupleOfShape.hxx>

static
  Standard_Integer TypeToInteger(const TopAbs_ShapeEnum aType1,
				 const TopAbs_ShapeEnum aType2);

//=======================================================================
//function :
//purpose  :
//=======================================================================
GEOMAlgo_GetInPlaceIterator::GEOMAlgo_GetInPlaceIterator()
{
  myDim=10;
}
//=======================================================================
//function : ~
//purpose  :
//=======================================================================
GEOMAlgo_GetInPlaceIterator::~GEOMAlgo_GetInPlaceIterator()
{
}
//=======================================================================
//function : Clear
//purpose  :
//=======================================================================
void GEOMAlgo_GetInPlaceIterator::Clear()
{
  Standard_Integer i;
  //
  for (i=0; i<myDim; ++i) {
    myLists[i].Clear();
  }
}
//=======================================================================
//function : AppendPair
//purpose  :
//=======================================================================
void GEOMAlgo_GetInPlaceIterator::AppendPair(const NMTTools_CoupleOfShape& theCS)
{
  Standard_Integer iX;
  TopAbs_ShapeEnum aType1, aType2;
  //
  const TopoDS_Shape& aS1=theCS.Shape1();
  const TopoDS_Shape& aS2=theCS.Shape2();
  aType1=aS1.ShapeType();
  aType2=aS2.ShapeType();
  //
  iX=TypeToInteger(aType1, aType2);
  if (iX>=0) {
    myLists[iX].Append(theCS);
  }
}
//=======================================================================
//function : ShapeWhere
//purpose  :
//=======================================================================
void GEOMAlgo_GetInPlaceIterator::Initialize(const TopAbs_ShapeEnum aType1,
					     const TopAbs_ShapeEnum aType2)
{
  Standard_Integer iX;
  //
  iX=TypeToInteger(aType1, aType2);
  if (iX>=0) {
    myIterator.Initialize(myLists[iX]);
  }
  else {
    myIterator.Initialize(myEmptyList);
  }
}
//=======================================================================
// function: More
// purpose:
//=======================================================================
Standard_Boolean GEOMAlgo_GetInPlaceIterator::More()const
{
  return myIterator.More();
}
//=======================================================================
// function: Next
// purpose:
//=======================================================================
void GEOMAlgo_GetInPlaceIterator::Next()
{
  myIterator.Next();
}
//=======================================================================
// function: Value
// purpose:
//=======================================================================
const NMTTools_CoupleOfShape& GEOMAlgo_GetInPlaceIterator::Value()const
{
  return myIterator.Value();
}
//=======================================================================
//function : TypeToInteger
//purpose  :
//=======================================================================
Standard_Integer TypeToInteger(const TopAbs_ShapeEnum aType1,
			       const TopAbs_ShapeEnum aType2)
{
  Standard_Integer iRet, iT1, iT2, iX;
  //
  iRet=-1;
  //
  if (aType1==TopAbs_VERTEX) {
    if (aType2==TopAbs_VERTEX) {
      iRet=0;
    }
  }
  else if (aType1==TopAbs_EDGE) {
    if (aType2==TopAbs_VERTEX) {
      iRet=1;
    }
    else if (aType2==TopAbs_EDGE) {
      iRet=2;
    }
  }
  else if (aType1==TopAbs_FACE) {
    if (aType2==TopAbs_VERTEX) {
      iRet=3;
    }
    else if (aType2==TopAbs_EDGE) {
      iRet=4;
    }
    else if (aType2==TopAbs_FACE) {
      iRet=5;
    }
  }
  // So_1,*_2
  else if (aType1==TopAbs_SOLID) {
    if (aType2==TopAbs_VERTEX) {
      iRet=6;
    }
    else if (aType2==TopAbs_EDGE) {
      iRet=7;
    }
    else if (aType2==TopAbs_FACE) {
      iRet=8;
    }
    else if (aType2==TopAbs_SOLID) {
      iRet=9;
    }
  }
  return iRet;
}
