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
// File:	NMTTools_PaveFiller_9.cxx
// Created:	Fri Dec 19 11:15:53 2003
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <NMTTools_PaveFiller.ixx>

#include <Geom_Surface.hxx>

#include <TopLoc_Location.hxx>
#include <TopAbs_Orientation.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Shape.hxx>

#include <BRep_Builder.hxx>
#include <BRep_Tool.hxx>

#include <TopExp_Explorer.hxx>

#include <BOPTools_ListIteratorOfListOfPaveBlock.hxx>
#include <BOPTools_ListOfPaveBlock.hxx>
#include <BOPTools_PaveBlock.hxx>
#include <BOPTools_Tools3D.hxx>

#include <NMTDS_ShapesDataStructure.hxx>

#include <NMTTools_CommonBlockAPI.hxx>
#include <NMTTools_CommonBlock.hxx>


//=======================================================================
// function: PrepareFace
// purpose: 
//=======================================================================
  void NMTTools_PaveFiller::PrepareFace(const Standard_Integer nF, 
					TopoDS_Face& newFace)
{
  Standard_Boolean bToReverse, bIsDegenerated;
  Standard_Integer iRankF, nE, nSp, aNbPB;
  Standard_Real aTol;
  TopLoc_Location aLoc;
  TopoDS_Face aF;
  TopoDS_Wire newWire;
  TopoDS_Edge aSp;
  TopAbs_Orientation anOrF, anOrE;
  BRep_Builder aBB;
  TopExp_Explorer aExpW, aExpE;
  BOPTools_ListIteratorOfListOfPaveBlock aItPB;
  //
  iRankF=myDS->Rank(nF);
  aF=TopoDS::Face(myDS->Shape(nF));
  anOrF=aF.Orientation();
  aF.Orientation(TopAbs_FORWARD);
  //
  Handle(Geom_Surface) aS=BRep_Tool::Surface(aF, aLoc);
  aTol=BRep_Tool::Tolerance(aF);
  //
  aBB.MakeFace (newFace, aS, aLoc, aTol);
  //
  aExpW.Init(aF, TopAbs_WIRE);
  for (; aExpW.More(); aExpW.Next()) {
    const TopoDS_Shape& aW=aExpW.Current();
    aBB.MakeWire(newWire);
    //
    aExpE.Init(aW, TopAbs_EDGE);
    for (; aExpE.More(); aExpE.Next()) {
      const TopoDS_Edge& aE=TopoDS::Edge(aExpE.Current());
      bIsDegenerated=BRep_Tool::Degenerated(aE);
      anOrE=aE.Orientation();
      //
      nE=myDS->ShapeIndex(aE, iRankF);
      const BOPTools_ListOfPaveBlock& aLPB=mySplitShapesPool(myDS->RefEdge(nE));
      aNbPB=aLPB.Extent();
      if (!aNbPB) {
	aBB.Add(newWire, aE);
	continue;
      }
      //
      aItPB.Initialize(aLPB);
      for (; aItPB.More(); aItPB.Next()) {
	const BOPTools_PaveBlock& aPB=aItPB.Value();
	const BOPTools_PaveBlock& aPBR=RealPaveBlock(aPB);
	nSp=aPBR.Edge();
	//
	aSp=TopoDS::Edge(myDS->Shape(nSp));
	if (!bIsDegenerated) {
	  bToReverse=BOPTools_Tools3D::IsSplitToReverse1(aSp, aE, myContext);
	  if (bToReverse) {
	    aSp.Reverse();
	  }
	}
	else {
	 aSp.Orientation(anOrE);
	}
	aBB.Add(newWire, aSp);
      }
    }
    aBB.Add(newFace, newWire);
  }
  newFace.Orientation(anOrF);
}
