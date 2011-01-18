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
// File:	NMTTools_PaveFiller_3.cxx
// Created:	Mon Dec  8 16:06:56 2003
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <NMTTools_PaveFiller.ixx>

#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Face.hxx>

#include <TopExp_Explorer.hxx>

#include <BOPTools_VSInterference.hxx>
#include <BOPTools_CArray1OfVSInterference.hxx>

#include <NMTDS_Iterator.hxx>
#include <NMTDS_ShapesDataStructure.hxx>
#include <NMTDS_InterfPool.hxx>


// Modified  Thu Sep 14 14:35:18 2006 
// Contribution of Samtech www.samcef.com BEGIN
static
  Standard_Boolean Contains(const TopoDS_Face& aF,
			    const TopoDS_Vertex& aV);
// Contribution of Samtech www.samcef.com END
//=======================================================================
// function: PerformVF
// purpose: 
//=======================================================================
  void NMTTools_PaveFiller::PerformVF() 
{
  myIsDone=Standard_False;
  //
  Standard_Boolean aJustAdd;
  Standard_Integer n1, n2, anIndexIn, aFlag, aWhat, aWith, aNbVSs, aBlockLength, iSDV;
  Standard_Real aU, aV;
  TopoDS_Vertex aV1;
  TopoDS_Face aF2;
  //
  BOPTools_CArray1OfVSInterference& aVSs=myIP->VSInterferences();
  //
  // V/E Interferences 
  myDSIt->Initialize(TopAbs_VERTEX, TopAbs_FACE);
  //
  // BlockLength correction
  aNbVSs=myDSIt->BlockLength();
  aBlockLength=aVSs.BlockLength();
  if (aNbVSs > aBlockLength) {
    aVSs.SetBlockLength(aNbVSs);
  }
  //
  for (; myDSIt->More(); myDSIt->Next()) {
    myDSIt->Current(n1, n2, aJustAdd);
    if (! IsSuccessorsComputed(n1, n2)) {
      anIndexIn=0;
      aWhat=n1; // Vertex
      aWith=n2; // Face
      if (myDS->GetShapeType(n1)==TopAbs_FACE) {
	aWhat=n2;
	aWith=n1;
      }
      //
      iSDV=FindSDVertex(aWhat);
	//
      if(aJustAdd) {
	//myIntrPool->AddInterference(aWhat, aWith, BooleanOperations_VertexSurface, anIndexIn);
	continue;
      }
      //
      aV1=TopoDS::Vertex(myDS->Shape(aWhat));
      if (iSDV) {
	aV1=TopoDS::Vertex(myDS->Shape(iSDV));
      }
	//
      aF2=TopoDS::Face(myDS->Shape(aWith));
      //
      // Modified  Thu Sep 14 14:35:18 2006 
      // Contribution of Samtech www.samcef.com BEGIN
      if (Contains(aF2, aV1)) {
	continue;
      }
      // Contribution of Samtech www.samcef.com END
      //
      aFlag=myContext.ComputeVS (aV1, aF2, aU, aV);
      //
      if (!aFlag) {
	//
	// Add Interference to the Pool
	BOPTools_VSInterference anInterf (aWhat, aWith, aU, aV);
	anIndexIn=aVSs.Append(anInterf);
	//
	// SetState for Vertex in DS;
	myDS->SetState (aWhat, BooleanOperations_ON);
	// Insert Vertex in Interference Object
	BOPTools_VSInterference& aVS=aVSs(anIndexIn);
	aVS.SetNewShape(aWhat);
	// qqf
	{
	  myIP->Add(aWhat, aWith, Standard_True, NMTDS_TI_VF);
	}
	// qqt
      }
      //myIntrPool->AddInterference(aWhat, aWith, BooleanOperations_VertexSurface, anIndexIn);
    }
  }
  myIsDone=Standard_True;
}
// Modified  Thu Sep 14 14:35:18 2006 
// Contribution of Samtech www.samcef.com BEGIN
//=======================================================================
//function : Contains
//purpose  : 
//=======================================================================
Standard_Boolean Contains(const TopoDS_Face& aF,
			  const TopoDS_Vertex& aV)
{
  Standard_Boolean bRet;
  TopExp_Explorer aExp;
  //
  bRet=Standard_False;
  aExp.Init(aF, TopAbs_VERTEX);
  for (; aExp.More(); aExp.Next()) {
    const TopoDS_Shape& aVF=aExp.Current();
    if (aVF.IsSame(aV)) {
      bRet=!bRet;
      break;
    }
  }
  return bRet;
}
// Contribution of Samtech www.samcef.com END
