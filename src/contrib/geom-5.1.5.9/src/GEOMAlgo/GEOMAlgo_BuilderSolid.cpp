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
// File:	GEOMAlgo_BuilderSolid.cxx
// Created:	
// Author:	Peter KURNEV 
//
#include <GEOMAlgo_BuilderSolid.ixx>

#include <gp_Pnt2d.hxx>
#include <gp_Pln.hxx>
#include <gp_Vec.hxx>
#include <gp_Dir.hxx>
#include <gp_Pnt.hxx>

#include <Geom_Curve.hxx>
#include <Geom_Surface.hxx>
#include <Geom2d_Curve.hxx>

#include <TopAbs.hxx>

#include <TopoDS_Iterator.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Shell.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Solid.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Compound.hxx>

#include <BRep_Builder.hxx>
#include <BRep_Tool.hxx>
#include <BRepTools.hxx>
#include <BRepClass3d_SolidClassifier.hxx>

#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>

#include <TopTools_MapOfShape.hxx>
#include <TopTools_MapIteratorOfMapOfShape.hxx>
#include <TopTools_MapOfOrientedShape.hxx>
#include <TopTools_MapIteratorOfMapOfOrientedShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_DataMapOfShapeShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <TopTools_DataMapOfShapeListOfShape.hxx>
#include <TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>

#include <IntTools_Context.hxx>

#include <BOPTools_Tools2D.hxx>
#include <BOPTools_Tools3D.hxx>

#include <NMTTools_ListOfCoupleOfShape.hxx>
#include <NMTTools_CoupleOfShape.hxx>
#include <NMTTools_ListIteratorOfListOfCoupleOfShape.hxx>

#include <GEOMAlgo_Tools3D.hxx>
#include <GEOMAlgo_BuilderTools.hxx>

//
static
  Standard_Boolean IsGrowthShell(const TopoDS_Shape& ,
				 const TopTools_IndexedMapOfShape& );
static
  Standard_Boolean IsHole(const TopoDS_Shape& ,
			  IntTools_PContext& );
static
  Standard_Boolean IsInside(const TopoDS_Shape& ,
			    const TopoDS_Shape& ,
			    IntTools_PContext& );
static
  void MakeInternalShells(const TopTools_MapOfShape& ,
			  TopTools_ListOfShape& );

//modified by NIZNHY-PKV Tue Aug  5 15:06:50 2008f
static
  Standard_Boolean IsClosedShell(const TopoDS_Shell& theShell);
//modified by NIZNHY-PKV Tue Aug  5 15:06:57 2008t

//=======================================================================
//function : 
//purpose  : 
//=======================================================================
  GEOMAlgo_BuilderSolid::GEOMAlgo_BuilderSolid()
:
  GEOMAlgo_BuilderArea()
{
}
//=======================================================================
//function : ~
//purpose  : 
//=======================================================================
  GEOMAlgo_BuilderSolid::~GEOMAlgo_BuilderSolid()
{
}
//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================
  void GEOMAlgo_BuilderSolid::Perform()
{
  myErrorStatus=0;
  //
  //
  TopoDS_Compound aC;
  BRep_Builder aBB;
  TopTools_ListIteratorOfListOfShape aIt;
  
  aBB.MakeCompound(aC);
  aIt.Initialize(myShapes);
  for(; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aF=aIt.Value();
    aBB.Add(aC, aF);
  }
  //
  //
  if (myContext==NULL) {
    myErrorStatus=11;// Null Context
    return;
  }
  //
  PerformShapesToAvoid();
  if (myErrorStatus) {
    return;
  }
  //
  PerformLoops();
  if (myErrorStatus) {
    return;
  }
  PerformAreas();
  if (myErrorStatus) {
    return;
  }
  PerformInternalShapes();
  if (myErrorStatus) {
    return;
  }
}
//=======================================================================
//function :PerformShapesToAvoid
//purpose  : 
//=======================================================================
  void GEOMAlgo_BuilderSolid::PerformShapesToAvoid()
{
  Standard_Boolean bFound;
  Standard_Integer i, iCnt, aNbE, aNbF;
  TopAbs_Orientation aOrE;
  TopTools_IndexedDataMapOfShapeListOfShape aMEF;
  TopTools_ListIteratorOfListOfShape aIt;
  //
  myShapesToAvoid.Clear();
  //
  iCnt=0;
  while (1) {
    ++iCnt;
    bFound=Standard_False;
    //
    // 1. MEF
    aMEF.Clear();
    aIt.Initialize (myShapes);
    for (; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aF=aIt.Value();
      if (!myShapesToAvoid.Contains(aF)) {
	TopExp::MapShapesAndAncestors(aF, TopAbs_EDGE, TopAbs_FACE, aMEF);
      }
      else {
	int a=0;
      }
    }
    aNbE=aMEF.Extent();
    //
    // 2. myFacesToAvoid
    for (i=1; i<=aNbE; ++i) {
      const TopoDS_Edge& aE=TopoDS::Edge(aMEF.FindKey(i));
      if (BRep_Tool::Degenerated(aE)) {
	continue;
      }
      //
      TopTools_ListOfShape& aLF=aMEF.ChangeFromKey(aE);
      //
      aNbF=aLF.Extent();
      if (!aNbF) {
	continue;
      }
      //
      aOrE=aE.Orientation();
      //
      const TopoDS_Face& aF1=TopoDS::Face(aLF.First());
      if (aNbF==1) {
	if (aOrE==TopAbs_INTERNAL) {
	  continue;
	}
	bFound=Standard_True;
	myShapesToAvoid.Add(aF1);
      }
      else if (aNbF==2) {
	const TopoDS_Face& aF2=TopoDS::Face(aLF.Last());
	if (aF2.IsSame(aF1)) {
	  if (BRep_Tool::IsClosed(aE, aF1)) {
	    continue;
	  }
	  //
	  if (aOrE==TopAbs_INTERNAL) {
	    continue;
	  }
	  //
	  bFound=Standard_True;
	  myShapesToAvoid.Add(aF1);
	  myShapesToAvoid.Add(aF2);
	}
      }
      //DEB
      else {
	TopTools_ListIteratorOfListOfShape aItLF;
	//
	aItLF.Initialize (aLF);
	for (; aItLF.More(); aItLF.Next()) {
	  const TopoDS_Shape& aFx=aItLF.Value();
	  int a=0;
	}
      }
      //DEB
    }// for (i=1; i<=aNbE; ++i) {
    //
    if (!bFound) {
      break;
    }
    //
  }//while (1) 
}  
//=======================================================================
//function : PerformLoops
//purpose  : 
//=======================================================================
  void GEOMAlgo_BuilderSolid::PerformLoops()
{
  myErrorStatus=0;
  //
  myLoops.Clear();
  //
  Standard_Integer aNbLF, aNbOff, aNbFP, aNbFA;
  TopAbs_Orientation anOr;
  TopoDS_Edge aEL;
  BRep_Builder aBB;
  NMTTools_CoupleOfShape aCSOff;
  TopTools_MapOfOrientedShape AddedFacesMap;//, aMFP;
  TopTools_IndexedDataMapOfShapeListOfShape aEFMap, aMEFP;
  TopTools_ListIteratorOfListOfShape aItF, aIt;
  TopTools_MapIteratorOfMapOfOrientedShape aItM;
  TopoDS_Iterator aItS;
  //
  //=================================================
  //
  // 1. Shells Usual
  //
  aItF.Initialize (myShapes);
  for (; aItF.More(); aItF.Next()) {
    const TopoDS_Shape& aFF = aItF.Value();
    TopExp::MapShapesAndAncestors(aFF, TopAbs_EDGE, TopAbs_FACE, aEFMap);
  }
  //
  aItF.Initialize (myShapes);
  for (; aItF.More(); aItF.Next()) {
    const TopoDS_Shape& aFF = aItF.Value();
    if (myShapesToAvoid.Contains(aFF)) {
      continue;
    }
    if (!AddedFacesMap.Add(aFF)) {
      continue;
    }
    //
    // make a new shell
    TopoDS_Shell aShell;
    aBB.MakeShell(aShell);
    aBB.Add(aShell, aFF);
    //
    aMEFP.Clear();
    TopExp::MapShapesAndAncestors(aFF, TopAbs_EDGE, TopAbs_FACE, aMEFP);
    //
    // loop on faces added to Shell; add their neighbor faces to Shell and so on
    TopoDS_Iterator aItAddedF (aShell);
    for (; aItAddedF.More(); aItAddedF.Next()) {
      const TopoDS_Face& aF = TopoDS::Face(aItAddedF.Value());
      //
      // loop on edges of aF; find a good neighbor face of aF by aE
      TopExp_Explorer aEdgeExp(aF, TopAbs_EDGE);
      for (; aEdgeExp.More(); aEdgeExp.Next()) {
        const TopoDS_Edge& aE = TopoDS::Edge(aEdgeExp.Current());
	//
	//1
	if (aMEFP.Contains(aE)) {
	  const TopTools_ListOfShape& aLFP=aMEFP.FindFromKey(aE);
	  aNbFP=aLFP.Extent();
	  if (aNbFP>1) { 
	    continue;
	  }
	}
	//2
	anOr=aE.Orientation();
	if (anOr==TopAbs_INTERNAL) {
	  continue;
	}
	//3
	if (BRep_Tool::Degenerated(aE)) {
	  continue;
	}
	//
	// candidate faces list
        const TopTools_ListOfShape& aLF=aEFMap.FindFromKey(aE);
	aNbLF=aLF.Extent();
        if (!aNbLF) {
          continue;
	}
	//
	// try to select one of neighbors
	// check if a face already added to Shell shares E
	Standard_Boolean bFound;
	TopTools_ListIteratorOfListOfShape aItLF;
	NMTTools_ListOfCoupleOfShape aLCSOff;
	//
	aItLF.Initialize(aLF);
	for (; aItLF.More(); aItLF.Next()) { 
	  const TopoDS_Face& aFL=TopoDS::Face(aItLF.Value());
	  if (myShapesToAvoid.Contains(aFL)) {
	    continue;
	  }
	  if (aF.IsSame(aFL)) {
	    continue;
	  } 
	  if (AddedFacesMap.Contains(aFL)){
	    continue;
	  }
	  //
	  bFound=GEOMAlgo_Tools3D::GetEdgeOff(aE, aFL, aEL);
	  if (!bFound) {
	    continue;
	  }
	  //
	  aCSOff.SetShape1(aEL);
	  aCSOff.SetShape2(aFL);
	  aLCSOff.Append(aCSOff);
	}//for (; aItLF.More(); aItLF.Next()) { 
	//
	aNbOff=aLCSOff.Extent();
	if (!aNbOff){
	  continue;
	}
	//
	TopoDS_Face aSelF;
	if (aNbOff==1) {
	  aSelF=TopoDS::Face(aLCSOff.First().Shape2());
	}
	else if (aNbOff>1){
	  GEOMAlgo_Tools3D::GetFaceOff(aE, aF, aLCSOff, aSelF);
	}
	//
        if (!aSelF.IsNull() && AddedFacesMap.Add(aSelF)) { 
          aBB.Add(aShell, aSelF);
	  TopExp::MapShapesAndAncestors(aSelF, TopAbs_EDGE, TopAbs_FACE, aMEFP);
	}
      } // for (; aEdgeExp.More(); aEdgeExp.Next()) { 
    } //for (; aItAddedF.More(); aItAddedF.Next()) {
    //modified by NIZNHY-PKV Tue Aug  5 15:07:08 2008f
    //myLoops.Append(aShell);
    if (IsClosedShell(aShell)) {
      myLoops.Append(aShell);
    }
    /*
    else {
      TopoDS_Iterator aItS;
      aItS.Initialize(aShell);
      for (; aItS.More(); aItS.Next()) {
	const TopoDS_Shape& aFs=aItS.Value();
	aMFP.Add(aFs);
      }
    }
    */
    //modified by NIZNHY-PKV Tue Aug  5 15:07:30 2008t
  } // for (; aItF.More(); aItF.Next()) {
  //modified by NIZNHY-PKV Tue Aug  5 15:07:35 2008f
  //
  // Post Treatment
  TopTools_MapOfOrientedShape aMP;
  // 
  // a. collect all edges that are in loops
  aIt.Initialize (myLoops);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aS=aIt.Value();
    aItS.Initialize(aS);
    for (; aItS.More(); aItS.Next()) {
      const TopoDS_Shape& aF=aItS.Value();
      aMP.Add(aF);
    }
  }
  // 
  // b. collect all edges that are to avoid
  aItM.Initialize(myShapesToAvoid);
  for (; aItM.More(); aItM.Next()) {
    const TopoDS_Shape& aF=aItM.Key();
    aMP.Add(aF);
  }
  //
  // c. add all edges that are not processed to myShapesToAvoid
  aIt.Initialize (myShapes);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aF=aIt.Value();
    if (!aMP.Contains(aF)) {
      myShapesToAvoid.Add(aF);
    }
  }
  //modified by NIZNHY-PKV Tue Aug  5 15:07:44 2008t
  //=================================================
  //
  // 2.Internal Shells
  //
  myLoopsInternal.Clear();
  //
  aEFMap.Clear();
  AddedFacesMap.Clear();
  //
  aNbFA=myShapesToAvoid.Extent();
  //
  aItM.Initialize(myShapesToAvoid);
  for (; aItM.More(); aItM.Next()) {
    const TopoDS_Shape& aFF=aItM.Key();
    TopExp::MapShapesAndAncestors(aFF, TopAbs_EDGE, TopAbs_FACE, aEFMap);
  }
  //
  aItM.Initialize(myShapesToAvoid);
  for (; aItM.More(); aItM.Next()) {
    const TopoDS_Shape& aFF=aItM.Key();
    if (!AddedFacesMap.Add(aFF)) {
      continue;
    }
    //
    // make a new shell
    TopoDS_Shell aShell;
    aBB.MakeShell(aShell);
    aBB.Add(aShell, aFF);
    //
    TopoDS_Iterator aItAddedF (aShell);
    for (; aItAddedF.More(); aItAddedF.Next()) {
      const TopoDS_Face& aF = TopoDS::Face(aItAddedF.Value());
      //
      TopExp_Explorer aEdgeExp(aF, TopAbs_EDGE);
      for (; aEdgeExp.More(); aEdgeExp.Next()) {
        const TopoDS_Edge& aE = TopoDS::Edge(aEdgeExp.Current());
	const TopTools_ListOfShape& aLF=aEFMap.FindFromKey(aE);
	aItF.Initialize(aLF);
	for (; aItF.More(); aItF.Next()) { 
	  const TopoDS_Face& aFL=TopoDS::Face(aItF.Value());
	  if (AddedFacesMap.Add(aFL)){
	    aBB.Add(aShell, aFL);
	  }
	}
      }
    }
    myLoopsInternal.Append(aShell);
  }
}
//=======================================================================
//function : PerformAreas
//purpose  : 
//=======================================================================
  void GEOMAlgo_BuilderSolid::PerformAreas()
{
  myErrorStatus=0;
  //
  Standard_Boolean bIsGrowthShell, bIsHole;
  TopTools_ListOfShape aNewSolids, aHoleShells; 
  TopoDS_Shape anInfinitePointShape;
  TopTools_DataMapOfShapeShape aInOutMap;
  TopTools_DataMapOfShapeListOfShape aMSH;
  TopTools_DataMapIteratorOfDataMapOfShapeListOfShape aItMSH;
  TopTools_ListIteratorOfListOfShape aShellIt, aSolidIt;
  TopTools_IndexedMapOfShape aMHF;
  BRep_Builder aBB;
  //
  myAreas.Clear();
  //
  //  Draft solids [aNewSolids]
  aShellIt.Initialize(myLoops);
  for ( ; aShellIt.More(); aShellIt.Next()) {
    const TopoDS_Shape& aShell = aShellIt.Value();
    //
    bIsGrowthShell=IsGrowthShell(aShell, aMHF);
    if (bIsGrowthShell) {
      // make a growth solid from a shell
      TopoDS_Solid Solid;
      aBB.MakeSolid(Solid);
      aBB.Add (Solid, aShell);
      //
      aNewSolids.Append (Solid);
    }
    else{
      // check if a shell is a hole
      //XX
      bIsHole=IsHole(aShell, myContext);
      //bIsHole=GEOMAlgo_BuilderTools::IsHole(aShell);
      //XX
      if (bIsHole) {
	aHoleShells.Append(aShell);
	TopExp::MapShapes(aShell, TopAbs_FACE, aMHF);
      }
      else {
	// make a growth solid from a shell
	TopoDS_Solid Solid;
	aBB.MakeSolid(Solid);
	aBB.Add (Solid, aShell);
	//
	aNewSolids.Append (Solid);
      }
    }
  }
  //
  // 2. Find outer growth shell that is most close to each hole shell
  aShellIt.Initialize(aHoleShells);
  for (; aShellIt.More(); aShellIt.Next()) {
    const TopoDS_Shape& aHole = aShellIt.Value();
    //
    aSolidIt.Initialize(aNewSolids);
    for ( ; aSolidIt.More(); aSolidIt.Next())    {
      const TopoDS_Shape& aSolid = aSolidIt.Value();
      //
      if (!IsInside(aHole, aSolid, myContext)){
        continue;
      }
      //
      if ( aInOutMap.IsBound (aHole)){
        const TopoDS_Shape& aSolid2 = aInOutMap(aHole);
        if (IsInside(aSolid, aSolid2, myContext)) {
          aInOutMap.UnBind(aHole);
          aInOutMap.Bind (aHole, aSolid);
        }
      }
      else{
        aInOutMap.Bind (aHole, aSolid);
      }
    }
    //
    // Add aHole to a map Solid/ListOfHoles [aMSH]
    if (aInOutMap.IsBound(aHole)){
      const TopoDS_Shape& aSolid=aInOutMap(aHole);
      if (aMSH.IsBound(aSolid)) {
	TopTools_ListOfShape& aLH=aMSH.ChangeFind(aSolid);
	aLH.Append(aHole);
      }
      else {
	TopTools_ListOfShape aLH;
	aLH.Append(aHole);
	aMSH.Bind(aSolid, aLH);
      }
      //aBB.Add (aSolid, aHole);
    }
  }// for (; aShellIt.More(); aShellIt.Next()) {
  //
  // 3. Add aHoles to Solids
  aItMSH.Initialize(aMSH);
  for (; aItMSH.More(); aItMSH.Next()) {
    TopoDS_Solid aSolid=TopoDS::Solid(aItMSH.Key());
    //
    const TopTools_ListOfShape& aLH=aItMSH.Value();
    aShellIt.Initialize(aLH);
    for (; aShellIt.More(); aShellIt.Next()) {
      const TopoDS_Shape& aHole = aShellIt.Value();
      aBB.Add (aSolid, aHole);
    }
    //
    // update classifier
    BRepClass3d_SolidClassifier& aSC=myContext->SolidClassifier(aSolid);
    aSC.Load(aSolid);
    //
  }
  //
  // These aNewSolids are draft solids that 
  // do not contain any internal shapes
  //
  myAreas.Append(aNewSolids);
}
//=======================================================================
//function : PerformInternalShapes
//purpose  : 
//=======================================================================
  void GEOMAlgo_BuilderSolid::PerformInternalShapes()
{
  myErrorStatus=0;
  //
  Standard_Integer aNbFI=myLoopsInternal.Extent();
  if (!aNbFI) {// nothing to do
    return;
  }
  // 
  BRep_Builder aBB;
  TopTools_ListIteratorOfListOfShape aShellIt, aSolidIt;
  TopoDS_Iterator aIt; 
  TopTools_MapOfShape aMF, aMFP;
  TopTools_MapIteratorOfMapOfShape aItMF;
  TopTools_IndexedDataMapOfShapeListOfShape aMEF;
  TopTools_ListOfShape aLSI;
  //
  // 1. All internal faces
  aShellIt.Initialize(myLoopsInternal);
  for (; aShellIt.More(); aShellIt.Next()) {
    const TopoDS_Shape& aShell=aShellIt.Value();
    aIt.Initialize(aShell);
    for (; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aF=aIt.Value();
      aMF.Add(aF);
    }
  }
  aNbFI=aMF.Extent();
  //
  // 2 Process solids
  aSolidIt.Initialize(myAreas);
  for ( ; aSolidIt.More(); aSolidIt.Next()) {
    TopoDS_Solid& aSolid=TopoDS::Solid(aSolidIt.Value());
    //
    aMEF.Clear();
    TopExp::MapShapesAndAncestors(aSolid, TopAbs_EDGE, TopAbs_FACE, aMEF);
    //
    // 2.1 Separate faces to process aMFP
    aMFP.Clear();
    aItMF.Initialize(aMF);
    for (; aItMF.More(); aItMF.Next()) {
      const TopoDS_Face& aF=TopoDS::Face(aItMF.Key());
      if (GEOMAlgo_Tools3D::IsInternalFace(aF, aSolid, aMEF, 1.e-14, *myContext)) {
	aMFP.Add(aF);
      }
    }
    //
    // 2.2 Make Internal Shells
    aLSI.Clear();
    MakeInternalShells(aMFP, aLSI);
    //
    // 2.3 Add them to aSolid
    aShellIt.Initialize(aLSI);
    for (; aShellIt.More(); aShellIt.Next()) {
      const TopoDS_Shape& aSI=aShellIt.Value();
      aBB.Add (aSolid, aSI);
    }
    //
    // 2.4 Remove faces aMFP from aMF
    aItMF.Initialize(aMFP);
    for (; aItMF.More(); aItMF.Next()) {
      const TopoDS_Shape& aF=aItMF.Key();
      aMF.Remove(aF);
    }
    //
    aNbFI=aMF.Extent();
    if (!aNbFI) {
      break;
    }
  } //for ( ; aSolidIt.More(); aSolidIt.Next()) {
}

//=======================================================================
//function : MakeInternalShells
//purpose  : 
//=======================================================================
void MakeInternalShells(const TopTools_MapOfShape& theMF,
			TopTools_ListOfShape& theShells)
{
  TopTools_MapIteratorOfMapOfShape aItM;
  TopTools_MapOfShape aAddedFacesMap;
  TopTools_ListIteratorOfListOfShape aItF;
  TopTools_IndexedDataMapOfShapeListOfShape aMEF;
  BRep_Builder aBB;
  //
  aItM.Initialize(theMF);
  for (; aItM.More(); aItM.Next()) {
    const TopoDS_Shape& aF=aItM.Key();
    TopExp::MapShapesAndAncestors(aF, TopAbs_EDGE, TopAbs_FACE, aMEF);
  }
  //
  aItM.Initialize(theMF);
  for (; aItM.More(); aItM.Next()) {
    TopoDS_Shape aFF=aItM.Key();
    if (!aAddedFacesMap.Add(aFF)) {
      continue;
    }
    //
    // make a new shell
    TopoDS_Shell aShell;
    aBB.MakeShell(aShell);    
    aFF.Orientation(TopAbs_INTERNAL);
    aBB.Add(aShell, aFF);
    //
    TopoDS_Iterator aItAddedF (aShell);
    for (; aItAddedF.More(); aItAddedF.Next()) {
      const TopoDS_Shape& aF =aItAddedF.Value();
      //
      TopExp_Explorer aEdgeExp(aF, TopAbs_EDGE);
      for (; aEdgeExp.More(); aEdgeExp.Next()) {
        const TopoDS_Shape& aE =aEdgeExp.Current();
	const TopTools_ListOfShape& aLF=aMEF.FindFromKey(aE);
	aItF.Initialize(aLF);
	for (; aItF.More(); aItF.Next()) { 
	  TopoDS_Shape aFL=aItF.Value();
	  if (aAddedFacesMap.Add(aFL)){
	    aFL.Orientation(TopAbs_INTERNAL);
	    aBB.Add(aShell, aFL);
	  }
	}
      }
    }
    theShells.Append(aShell);
  }
}
//=======================================================================
//function : IsHole
//purpose  : 
//=======================================================================
Standard_Boolean IsHole(const TopoDS_Shape& theS2,
			IntTools_PContext& theContext)
{
  TopoDS_Solid *pS2=(TopoDS_Solid *)&theS2;
  BRepClass3d_SolidClassifier& aClsf=theContext->SolidClassifier(*pS2);
  //
  aClsf.PerformInfinitePoint(::RealSmall());
  //
  return (aClsf.State()==TopAbs_IN);
}
//=======================================================================
//function : IsInside
//purpose  : 
//=======================================================================
Standard_Boolean IsInside(const TopoDS_Shape& theS1,
			  const TopoDS_Shape& theS2,
			  IntTools_PContext& theContext)
{
  TopExp_Explorer aExp;
  TopAbs_State aState;
  //
  TopoDS_Solid *pS2=(TopoDS_Solid *)&theS2;
  //
  aExp.Init(theS1, TopAbs_FACE);
  if (!aExp.More()){
    BRepClass3d_SolidClassifier& aClsf=theContext->SolidClassifier(*pS2);
    aClsf.PerformInfinitePoint(::RealSmall());
    aState=aClsf.State();
  }
  else {
    TopTools_IndexedMapOfShape aBounds;
    const TopoDS_Face& aF = TopoDS::Face(aExp.Current());
    aState=GEOMAlgo_Tools3D::ComputeState(aF, *pS2, 1.e-14, aBounds, *theContext);
  }
  return (aState==TopAbs_IN);
}
//=======================================================================
//function : IsGrowthShell
//purpose  : 
//=======================================================================
Standard_Boolean IsGrowthShell(const TopoDS_Shape& theShell,
			       const TopTools_IndexedMapOfShape& theMHF)
{
  Standard_Boolean bRet;
  TopoDS_Iterator aIt;
  // 
  bRet=Standard_False;
  if (theMHF.Extent()) {
    aIt.Initialize(theShell);
    for(; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aF=aIt.Value();
      if (theMHF.Contains(aF)) {
	return !bRet;
      }
    }
  }
  return bRet;
}
//modified by NIZNHY-PKV Tue Aug  5 15:07:50 2008f
//=======================================================================
//function : IsClosedShell
//purpose  : 
//=======================================================================
Standard_Boolean IsClosedShell(const TopoDS_Shell& theShell)
{
  Standard_Integer aNbE;
  Standard_Boolean bRet;
  TopoDS_Iterator aIt;
  TopExp_Explorer aExp;
  TopTools_MapOfShape aM;
  // 
  bRet=Standard_False;
  aIt.Initialize(theShell);
  for(; aIt.More(); aIt.Next()) {
    const TopoDS_Face& aF=TopoDS::Face(aIt.Value());
    aExp.Init(aF, TopAbs_EDGE);
    for (; aExp.More(); aExp.Next()) {
      const TopoDS_Edge& aE=TopoDS::Edge(aExp.Current());
      if (BRep_Tool::Degenerated(aE)) {
	continue;
      }
      /*
      if (BRep_Tool::IsClosed(aE, aF)) {
	continue;
      }
      */
      if (aE.Orientation()==TopAbs_INTERNAL) {
	continue;
      }
      if (!aM.Add(aE)) {
	aM.Remove(aE);
      }
    }
  }
  //
  aNbE=aM.Extent();
  if (!aNbE) {
    bRet=!bRet;
  }
  return bRet;
}
//modified by NIZNHY-PKV Tue Aug  5 15:08:07 2008t
//BRepTools::Write(aFF, "ff");
//
//  ErrorStatus :
// 11 - Null Context
