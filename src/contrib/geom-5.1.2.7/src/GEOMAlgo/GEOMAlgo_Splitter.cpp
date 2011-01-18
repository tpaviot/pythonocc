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
// File:	GEOMAlgo_Splitter.cxx
// Created:	
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <GEOMAlgo_Splitter.ixx>

#include <TopAbs_ShapeEnum.hxx>

#include <TopoDS_Shape.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_Iterator.hxx>

#include <TopExp.hxx>

#include <BRep_Builder.hxx>
#include <BRepLib.hxx>

#include <TopTools_MapOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>

#include <BOP_CorrectTolerances.hxx>


static 
  void TreatCompound(const TopoDS_Shape& aC, 
		     TopTools_ListOfShape& aLSX);

//=======================================================================
//function : 
//purpose  : 
//=======================================================================
  GEOMAlgo_Splitter::GEOMAlgo_Splitter()
:
  GEOMAlgo_Builder()
{
  myLimit=TopAbs_SHAPE;
  myLimitMode=0;
}
//=======================================================================
//function : ~
//purpose  : 
//=======================================================================
  GEOMAlgo_Splitter::~GEOMAlgo_Splitter()
{
}
//=======================================================================
//function : AddToolCompound
//purpose  : 
//=======================================================================
  void GEOMAlgo_Splitter::AddToolCompound(const TopoDS_Shape& theShape)
{
  TopoDS_Iterator aIt;
  //
  aIt.Initialize(theShape);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aS=aIt.Value();
    AddTool(aS);
  }
}
//=======================================================================
//function : AddTool
//purpose  : 
//=======================================================================
  void GEOMAlgo_Splitter::AddTool(const TopoDS_Shape& theShape)
{
  if (myMapTools.Add(theShape)) {
    myTools.Append(theShape);
    //
    AddShape(theShape);
  }
}
//=======================================================================
//function : Tools
//purpose  : 
//=======================================================================
  const TopTools_ListOfShape& GEOMAlgo_Splitter::Tools()const
{
  return myTools;
}
//=======================================================================
//function : SetLimit
//purpose  : 
//=======================================================================
  void GEOMAlgo_Splitter::SetLimit(const TopAbs_ShapeEnum aLimit) 
{
  myLimit=aLimit;
}
//=======================================================================
//function : Limit
//purpose  : 
//=======================================================================
  TopAbs_ShapeEnum GEOMAlgo_Splitter::Limit()const
{
  return myLimit;
}
//=======================================================================
//function : SetLimitMode
//purpose  : 
//=======================================================================
  void GEOMAlgo_Splitter::SetLimitMode(const Standard_Integer aMode)
{
  myLimitMode=aMode;
}
//=======================================================================
//function : LimitMode
//purpose  : 
//=======================================================================
  Standard_Integer GEOMAlgo_Splitter::LimitMode()const
{
  return myLimitMode;
}
//=======================================================================
//function : Clear
//purpose  : 
//=======================================================================
  void GEOMAlgo_Splitter::Clear()
{
  myTools.Clear();
  myMapTools.Clear();
  myLimit=TopAbs_SHAPE;
  GEOMAlgo_Builder::Clear();
}
//=======================================================================
//function : BuildResult
//purpose  : 
//=======================================================================
  void GEOMAlgo_Splitter::BuildResult(const TopAbs_ShapeEnum theType)
{
  myErrorStatus=0;
  //
  TopAbs_ShapeEnum aType;
  BRep_Builder aBB;
  TopTools_MapOfShape aM;
  TopTools_ListIteratorOfListOfShape aIt, aItIm;
  //
  aIt.Initialize(myShapes);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aS=aIt.Value();
    aType=aS.ShapeType();
    if (aType==theType && !myMapTools.Contains(aS)) {
      if (myImages.HasImage(aS)) {
	const TopTools_ListOfShape& aLSIm=myImages.Image(aS);
	aItIm.Initialize(aLSIm);
	for (; aItIm.More(); aItIm.Next()) {
	  const TopoDS_Shape& aSIm=aItIm.Value();
	  if (aM.Add(aSIm)) {
	    aBB.Add(myShape, aSIm);
	  }
	}
      }
      else {
	if (aM.Add(aS)) {
	  aBB.Add(myShape, aS);
	}
      }
    }
  }
}
//=======================================================================
//function : PostTreat
//purpose  : 
//=======================================================================
  void GEOMAlgo_Splitter::PostTreat()
{
  if (myLimit!=TopAbs_SHAPE) {
    Standard_Integer i, aNbS;
    BRep_Builder aBB;
    TopoDS_Compound aC;
    TopTools_IndexedMapOfShape aMx;
    //
    aBB.MakeCompound(aC);
    //
    TopExp::MapShapes(myShape, myLimit, aMx);
    aNbS=aMx.Extent();
    for (i=1; i<=aNbS; ++i) {
      const TopoDS_Shape& aS=aMx(i);
      aBB.Add(aC, aS);
    }
    //modified by NIZNHY-PKV Thu Feb 15 17:09:32 2007f
    if (myLimitMode) {
      Standard_Integer iType, iLimit, iTypeX;
      TopAbs_ShapeEnum aType, aTypeX;
      TopTools_ListOfShape aLSP, aLSX;
      TopTools_ListIteratorOfListOfShape aIt, aItX, aItIm;
      TopTools_MapOfShape  aM;
      //
      iLimit=(Standard_Integer)myLimit; 
      //
      // 1. Collect the shapes to process aLSP
      aIt.Initialize(myShapes);
      for (; aIt.More(); aIt.Next()) {
	const TopoDS_Shape& aS=aIt.Value();
	if (myMapTools.Contains(aS)) {
	  continue;
	}
	//
	aType=aS.ShapeType();
	iType=(Standard_Integer)aType;
	//
	if (iType>iLimit) {
	  aLSP.Append(aS);
	}
	//
	else if (aType==TopAbs_COMPOUND) {
	  aLSX.Clear();
	  //
	  TreatCompound(aS, aLSX);
	  //
	  aItX.Initialize(aLSX);
	  for (; aItX.More(); aItX.Next()) {
	    const TopoDS_Shape& aSX=aItX.Value();
	    aTypeX=aSX.ShapeType();
	    iTypeX=(Standard_Integer)aTypeX;
	    //
	    if (iTypeX>iLimit) {
	      aLSP.Append(aSX);
	    }
	  }
	}
      }// for (; aIt.More(); aIt.Next()) {
      //
      // 2. Add them to aC
      aIt.Initialize(aLSP);
      for (; aIt.More(); aIt.Next()) {
	const TopoDS_Shape& aS=aIt.Value();
	if (myImages.HasImage(aS)) {
	  const TopTools_ListOfShape& aLSIm=myImages.Image(aS);
	  aItIm.Initialize(aLSIm);
	  for (; aItIm.More(); aItIm.Next()) {
	    const TopoDS_Shape& aSIm=aItIm.Value();
	    if (aM.Add(aSIm)) {
	      aBB.Add(aC, aSIm);
	    }
	  }
	}
	else {
	  if (aM.Add(aS)) {
	    aBB.Add(aC, aS);
	  }
	}
      }
    }// if (myLimitMode) {
    //modified by NIZNHY-PKV Thu Feb 15 17:09:34 2007t
    myShape=aC;
  }//if (myLimit!=TopAbs_SHAPE) {
  //
  GEOMAlgo_Builder::PostTreat();
}
//=======================================================================
//function : TreatCompound
//purpose  : 
//=======================================================================
void TreatCompound(const TopoDS_Shape& aC1, 
		   TopTools_ListOfShape& aLSX)
{
  Standard_Integer aNbC1;
  TopAbs_ShapeEnum aType;
  TopTools_ListOfShape aLC, aLC1;
  TopTools_ListIteratorOfListOfShape aIt, aIt1;
  TopoDS_Iterator aItC;
  //
  aLC.Append (aC1);
  while(1) {
    aLC1.Clear();
    aIt.Initialize(aLC);
    for (; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aC=aIt.Value(); //C is compound
      //
      aItC.Initialize(aC);
      for (; aItC.More(); aItC.Next()) {
	const TopoDS_Shape& aS=aItC.Value();
	aType=aS.ShapeType();
	if (aType==TopAbs_COMPOUND) {
	  aLC1.Append(aS);
	}
	else {
	  aLSX.Append(aS);
	}
      }
    }
    //
    aNbC1=aLC1.Extent();
    if (!aNbC1) {
      break;
    }
    //
    aLC.Clear();
    aIt.Initialize(aLC1);
    for (; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aSC=aIt.Value();
      aLC.Append(aSC);
    }
  }// while(1)
}
//
// myErrorStatus
// 
// 0  - Ok
// 1  - The object is just initialized
// 2  - PaveFiller is failed
// 10 - No shapes to process
// 30 - SolidBuilder failed
