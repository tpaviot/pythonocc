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
//  File    : GEOMAlgo_Builder_3.cxx
//  Created :
//  Author  : Peter KURNEV

#include <GEOMAlgo_Builder.hxx>

#include <TopAbs_State.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopoDS_Solid.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Solid.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopoDS_Shell.hxx>
#include <TopoDS_Compound.hxx>

#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>

#include <BRep_Builder.hxx>
#include <BRepTools.hxx>
#include <BRepClass3d_SolidClassifier.hxx>

#include <TopTools_ListOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_MapIteratorOfMapOfShape.hxx>
#include <TopTools_DataMapOfShapeShape.hxx>
#include <TopTools_DataMapOfShapeInteger.hxx>
#include <TopTools_DataMapIteratorOfDataMapOfShapeInteger.hxx>
#include <TopTools_MapOfShape.hxx>

#include <IntTools_Context.hxx>

#include <NMTDS_ShapesDataStructure.hxx>
#include <NMTTools_PaveFiller.hxx>

#include <GEOMAlgo_Tools3D.hxx>
#include <GEOMAlgo_BuilderSolid.hxx>
#include <GEOMAlgo_ShapeSet.hxx>
#include <GEOMAlgo_DataMapOfShapeShapeSet.hxx>
#include <GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet.hxx>



static
  void OwnInternalShapes(const TopoDS_Shape& ,
                         TopTools_IndexedMapOfShape& );

//=======================================================================
//function : FillImagesSolids
//purpose  :
//=======================================================================
  void GEOMAlgo_Builder::FillImagesSolids()
{
  myErrorStatus=0;
  //
  FillIn3DParts();
  BuildSplitSolids();
  FillInternalShapes();
}
//=======================================================================
//function : BuildDraftSolid
//purpose  :
//=======================================================================
void GEOMAlgo_Builder::BuildDraftSolid (const TopoDS_Shape& theSolid,
                                        TopoDS_Shape& theDraftSolid,
                                        TopTools_ListOfShape& theLIF)
{
  myErrorStatus=0;
  //
  NMTTools_PaveFiller* pPF=myPaveFiller;
  const Handle(IntTools_Context)& aCtx= pPF->Context();
  //
  Standard_Boolean bToReverse;
  Standard_Integer  iFlag;
  TopAbs_Orientation aOrF, aOrSh, aOrSd;
  TopoDS_Iterator aIt1, aIt2;
  TopTools_ListIteratorOfListOfShape aItS;
  BRep_Builder aBB;
  TopoDS_Shell aShD;
  TopoDS_Shape aFSDx, aFx;
  //
  aOrSd=theSolid.Orientation();
  theDraftSolid.Orientation(aOrSd);
  //
  aIt1.Initialize(theSolid);
  for (; aIt1.More(); aIt1.Next()) {
    const TopoDS_Shape& aSh=aIt1.Value();
    if(aSh.ShapeType()!=TopAbs_SHELL) {
      continue; // mb internal edges,vertices
    }
    //
    aOrSh=aSh.Orientation();
    aBB.MakeShell(aShD);
    aShD.Orientation(aOrSh);
    iFlag=0;
    //
    aIt2.Initialize(aSh);
    for (; aIt2.More(); aIt2.Next()) {
      const TopoDS_Shape& aF=aIt2.Value();
      aOrF=aF.Orientation();
      //
      if (myImages.HasImage(aF)) {
        const TopTools_ListOfShape& aLSp=myImages.Image(aF);
        aItS.Initialize(aLSp);
        for (; aItS.More(); aItS.Next()) {
          aFx=aItS.Value();
          //
          if (mySameDomainShapes.Contains(aFx)) {
            aFSDx=mySameDomainShapes.FindFromKey(aFx);
            //
            if (aOrF==TopAbs_INTERNAL) {
              aFSDx.Orientation(aOrF);
              theLIF.Append(aFSDx);
            }
            else {
              bToReverse=GEOMAlgo_Tools3D::IsSplitToReverse(aFSDx, aF, aCtx);
              if (bToReverse) {
                aFSDx.Reverse();
              }
              //
              iFlag=1;
              aBB.Add(aShD, aFSDx);
            }
          }// if (mySameDomainShapes.Contains(aFx)) {
          else {
            aFx.Orientation(aOrF);
            if (aOrF==TopAbs_INTERNAL) {
              theLIF.Append(aFx);
            }
            else{
              iFlag=1;
              aBB.Add(aShD, aFx);
            }
          }
        }
      } //if (myImages.HasImage(aF)) {
      //
      else {
        if (aOrF==TopAbs_INTERNAL) {
          theLIF.Append(aF);
        }
        else{
          iFlag=1;
          aBB.Add(aShD, aF);
        }
      }
    } //for (; aIt2.More(); aIt2.Next()) {
    //
    if (iFlag) {
      aBB.Add(theDraftSolid, aShD);
    }
  } //for (; aIt1.More(); aIt1.Next()) {
}
//=======================================================================
//function : FillIn3DParts
//purpose  :
//=======================================================================
  void GEOMAlgo_Builder::FillIn3DParts()
{
  myErrorStatus=0;
  //
  const NMTDS_ShapesDataStructure& aDS=*myPaveFiller->DS();
  NMTTools_PaveFiller* pPF=myPaveFiller;
  const Handle(IntTools_Context)& aCtx= pPF->Context();
  //
  Standard_Boolean bIsIN, bHasImage;
  Standard_Integer aNbS, aNbSolids, i, j, aNbFaces, aNbFP, aNbFPx, aNbFIN, aNbLIF;
  TopAbs_ShapeEnum aType;
  TopAbs_State aState;
  TopTools_IndexedMapOfShape aMSolids, aMS, aMFaces, aMFIN;
  TopTools_MapOfShape aMFDone;
  TopTools_IndexedDataMapOfShapeListOfShape aMEF;
  TopTools_ListIteratorOfListOfShape aItS;
  TopoDS_Iterator aIt, aItF;
  BRep_Builder aBB;
  TopoDS_Solid aSolidSp;
  TopoDS_Face aFP;
  //
  myDraftSolids.Clear();
  //
  aNbS=aDS.NumberOfShapesOfTheObject();
  for (i=1; i<=aNbS; ++i) {
    const TopoDS_Shape& aS=aDS.Shape(i);
    //
    aType=aS.ShapeType();
    if (aType==TopAbs_SOLID) {
      // all solids from DS
      aMSolids.Add(aS);
    }
    else if (aType==TopAbs_FACE) {
      // all faces (originals from DS or theirs images)
      if (myImages.HasImage(aS)) {
        const TopTools_ListOfShape& aLS=myImages.Image(aS);
        aItS.Initialize(aLS);
        for (; aItS.More(); aItS.Next()) {
          const TopoDS_Shape& aFx=aItS.Value();
          //
          if (mySameDomainShapes.Contains(aFx)) {
            const TopoDS_Shape& aFSDx=mySameDomainShapes.FindFromKey(aFx);
            aMFaces.Add(aFSDx);
          }
          else {
            aMFaces.Add(aFx);
          }
        }
      }
      else {
        if (mySameDomainShapes.Contains(aS)) {
          const TopoDS_Shape& aFSDx=mySameDomainShapes.FindFromKey(aS);
          aMFaces.Add(aFSDx);
        }
        else {
          aMFaces.Add(aS);
        }
      }
    }
  }
  //
  aNbFaces=aMFaces.Extent();
  aNbSolids=aMSolids.Extent();
  //
  for (i=1; i<=aNbSolids; ++i) {
    const TopoDS_Solid& aSolid=TopoDS::Solid(aMSolids(i));
    aMFDone.Clear();
    aMFIN.Clear();
    aMEF.Clear();
    //
    aBB.MakeSolid(aSolidSp);
    //
    TopTools_ListOfShape aLIF;
    //
    BuildDraftSolid(aSolid, aSolidSp, aLIF);
    aNbLIF=aLIF.Extent();
    //
    // 1 all faces/edges from aSolid [ aMS ]
    bHasImage=Standard_False;
    aMS.Clear();
    aIt.Initialize(aSolid);
    for (; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aShell=aIt.Value();
      //
      if (myImages.HasImage(aShell)) {
        bHasImage=Standard_True;
        //
        const TopTools_ListOfShape& aLS=myImages.Image(aShell);
        aItS.Initialize(aLS);
        for (; aItS.More(); aItS.Next()) {
          const TopoDS_Shape& aSx=aItS.Value();
          aMS.Add(aSx);
          TopExp::MapShapes(aSx, TopAbs_FACE, aMS);
          TopExp::MapShapes(aSx, TopAbs_EDGE, aMS);
          TopExp::MapShapesAndAncestors(aSx, TopAbs_EDGE, TopAbs_FACE, aMEF);
        }
      }
      else {
        //aMS.Add(aShell);
        TopExp::MapShapes(aShell, TopAbs_FACE, aMS);
        //modified by NIZNHY-PKV Fri Dec 03 11:18:45 2010f
        TopExp::MapShapes(aShell, TopAbs_EDGE, aMS);
        //modified by NIZNHY-PKV Fri Dec 03 11:18:51 2010t
        TopExp::MapShapesAndAncestors(aShell, TopAbs_EDGE, TopAbs_FACE, aMEF);
      }
    }
    //
    // 2 all faces that are not from aSolid [ aLFP1 ]
    Standard_Integer aNbEFP;
    TopTools_IndexedDataMapOfShapeListOfShape aMEFP;
    TopTools_ListIteratorOfListOfShape aItFP, aItEx;
    TopTools_MapOfShape aMFence;
    TopTools_ListOfShape aLFP1, aLFP2, aLFP, aLCBF, aLFIN, aLEx;//*pLFP,
    //
    // for all non-solid faces build EF map [ aMEFP ]
    for (j=1; j<=aNbFaces; ++j) {
      const TopoDS_Shape& aFace=aMFaces(j);
      if (!aMS.Contains(aFace)) {
        TopExp::MapShapesAndAncestors(aFace, TopAbs_EDGE, TopAbs_FACE, aMEFP);
      }
    }
    //
    // among all faces from aMEFP select these that have same edges
    // with the solid (i.e aMEF). These faces will be treated first
    // to prevent the usage of 3D classifier.
    // The full list of faces to process is aLFP1.
    aNbEFP=aMEFP.Extent();
    for (j=1; j<=aNbEFP; ++j) {
      const TopoDS_Shape& aE=aMEFP.FindKey(j);
      //
      if (aMEF.Contains(aE)) { // !!
        const TopTools_ListOfShape& aLF=aMEFP(j);
        aItFP.Initialize(aLF);
        for (; aItFP.More(); aItFP.Next()) {
          const TopoDS_Shape& aF=aItFP.Value();
          if (aMFence.Add(aF)) {
            aLFP1.Append(aF);
          }
        }
      }
      else {
        aLEx.Append(aE);
      }
    }
    //
    aItEx.Initialize(aLEx);
    for (; aItEx.More(); aItEx.Next()) {
      const TopoDS_Shape& aE=aItEx.Value();
      const TopTools_ListOfShape& aLF=aMEFP.FindFromKey(aE);
      aItFP.Initialize(aLF);
      for (; aItFP.More(); aItFP.Next()) {
        const TopoDS_Shape& aF=aItFP.Value();
        if (aMFence.Add(aF)) {
          aLFP2.Append(aF);
        }
      }
    }
    aLFP1.Append(aLFP2);
    //==========
    //
    // 3 Process faces aLFP1
    aNbFP=aLFP1.Extent();
    aItFP.Initialize(aLFP1);
    for (; aItFP.More(); aItFP.Next()) {
      const TopoDS_Shape& aSP=aItFP.Value();
      if (!aMFDone.Add(aSP)) {
        continue;
      }

      //
      // first face to process
      aFP=TopoDS::Face(aSP);
      bIsIN= GEOMAlgo_Tools3D::IsInternalFace(aFP, aSolidSp, aMEF, 1.e-14, aCtx);
      aState=(bIsIN) ? TopAbs_IN : TopAbs_OUT;
      //
      // collect faces to process [ aFP is the first ]
      aLFP.Clear();
      aLFP.Append(aFP);
      aItS.Initialize(aLFP1);
      for (; aItS.More(); aItS.Next()) {
        const TopoDS_Shape& aSk=aItS.Value();
        if (!aMFDone.Contains(aSk)) {
          aLFP.Append(aSk);
        }
      }
      //
      // Connexity Block that spreads from aFP the Bound
      // or till the end of the block itself
      aLCBF.Clear();
      GEOMAlgo_Tools3D::MakeConnexityBlock(aLFP, aMS, aLCBF);
      //
      // fill states for the Connexity Block
      aItS.Initialize(aLCBF);
      for (; aItS.More(); aItS.Next()) {
        const TopoDS_Shape& aSx=aItS.Value();
        aMFDone.Add(aSx);
        if (aState==TopAbs_IN) {
          aMFIN.Add(aSx);
        }
      }
      //
      aNbFPx=aMFDone.Extent();
      if (aNbFPx==aNbFP) {
        break;
      }
    }//for (; aItFP.More(); aItFP.Next())
    //
    // faces Inside aSolid
    aLFIN.Clear();
    aNbFIN=aMFIN.Extent();
    if (aNbFIN || aNbLIF) {
      for (j=1; j<=aNbFIN; ++j) {
        const TopoDS_Shape& aFIN=aMFIN(j);
        aLFIN.Append(aFIN);
      }
      //
      aItS.Initialize(aLIF);
      for (; aItS.More(); aItS.Next()) {
        const TopoDS_Shape& aFIN=aItS.Value();
        aLFIN.Append(aFIN);
      }
      //
      myInParts.Add(aSolid, aLFIN);
    }
    if (aNbFIN || bHasImage) {
      myDraftSolids.Add(aSolid, aSolidSp);
    }
  }//for (i=1; i<=aNbSolids; ++i) { // next solid
}
//=======================================================================
//function : BuildSplitSolids
//purpose  :
//=======================================================================
  void GEOMAlgo_Builder::BuildSplitSolids()
{
  myErrorStatus=0;
  //
  const NMTDS_ShapesDataStructure& aDS=*myPaveFiller->DS();
  NMTTools_PaveFiller* pPF=myPaveFiller;
  const Handle(IntTools_Context)& aCtx= pPF->Context();
  //
  Standard_Integer i, aNbS, iErr;
  TopExp_Explorer aExp;
  TopTools_ListOfShape aSFS, aLSEmpty;
  TopTools_MapOfShape aMFence;
  TopTools_ListIteratorOfListOfShape aIt;
  GEOMAlgo_BuilderSolid aSB;
  GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet aItSS;
  GEOMAlgo_DataMapOfShapeShapeSet aMSS;
  GEOMAlgo_ShapeSet aSSi;
  //
  // 0. Find same domain solids for non-interferred solids
  aNbS=aDS.NumberOfShapesOfTheObject();
  for (i=1; i<=aNbS; ++i) {
    const TopoDS_Shape& aS=aDS.Shape(i);
    if (aS.ShapeType()!=TopAbs_SOLID) {
      continue;
    }
    if (!aMFence.Add(aS)) {
      continue;
    }
    if(myDraftSolids.Contains(aS)) {
      continue;
    }
    //
    aSSi.Clear();
    aSSi.Add(aS, TopAbs_FACE);
    //
    aMSS.Bind(aS, aSSi);
  } //for (i=1; i<=aNbS; ++i)
  //
  // 1. Build solids for interferred source solids
  aSB.SetContext(aCtx);
  aSB.ComputeInternalShapes(myComputeInternalShapes);
  aNbS=myDraftSolids.Extent();
  for (i=1; i<=aNbS; ++i) {
    const TopoDS_Shape& aS =myDraftSolids.FindKey(i);
    const TopoDS_Shape& aSD=myDraftSolids.FindFromIndex(i);
    const TopTools_ListOfShape& aLFIN=
      (myInParts.Contains(aS)) ? myInParts.FindFromKey(aS) : aLSEmpty;
    //
    // 1.1 Fill Shell Faces Set
    aSFS.Clear();

    aExp.Init(aSD, TopAbs_FACE);
    for (; aExp.More(); aExp.Next()) {
      const TopoDS_Shape& aF=aExp.Current();
      aSFS.Append(aF);
    }
    //
    aIt.Initialize(aLFIN);
    for (; aIt.More(); aIt.Next()) {
      TopoDS_Shape aF=aIt.Value();
      //
      aF.Orientation(TopAbs_FORWARD);
      aSFS.Append(aF);
      aF.Orientation(TopAbs_REVERSED);
      aSFS.Append(aF);
    }
    //
    Standard_Integer aNbSFS;
    aNbSFS=aSFS.Extent();
    //
    // 1.2
    // Check whether aSFS contains a subsets of faces
    // of solids that have been already built.
    // If yes, shrink aSFS by these subsets.
    aSSi.Clear();
    aSSi.Add(aSFS);
    //
    aItSS.Initialize(aMSS);
    for (; aItSS.More(); aItSS.Next()) {
      const TopoDS_Shape& aSR=aItSS.Key();
      const GEOMAlgo_ShapeSet& aSSR=aItSS.Value();
      if (aSSi.Contains(aSSR)) {
        // the aSR is SD solid for aS
        aSSi.Subtract(aSSR);
        // update images
        if(myImages.HasImage(aS)) {
          myImages.Add(aS, aSR);
        }
        else {
          myImages.Bind(aS, aSR);
        }
        //
        // update SD Shapes
        mySameDomainShapes.Add(aSR, aSR);
      }
    }
    const TopTools_ListOfShape& aSFS1=aSSi.GetSet();
    aNbSFS=aSFS1.Extent();
    //modified by NIZNHY-PKV Wed Oct 27 09:53:15 2010f
    if (!aNbSFS) {
      continue;
    }
    //modified by NIZNHY-PKV Wed Oct 27 09:53:18 2010t
    //
    // 1.3 Build new solids
    aSB.SetContext(aCtx);
    aSB.SetShapes(aSFS1);
    aSB.Perform();
    iErr=aSB.ErrorStatus();
    if (iErr) {
      myErrorStatus=30; // SolidBuilder failed
      return;
    }
    //
    const TopTools_ListOfShape& aLSR=aSB.Areas();
    //
      // 1.4 Collect resulting solids and theirs set of faces
    aIt.Initialize(aLSR);
    for (; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aSR=aIt.Value();
      //
      aSSi.Clear();
      aExp.Init(aSR, TopAbs_FACE);
      for (; aExp.More(); aExp.Next()) {
        const TopoDS_Shape& aF=aExp.Current();
        aSSi.Add(aF);
      }
      aMSS.Bind(aSR, aSSi);
    }
    //
    // Update images
    if (myImages.HasImage(aS)) {
      myImages.Add(aS, aLSR);
    }
    else {
      myImages.Bind(aS, aLSR);
    }
  } // for (i=1; i<=aNbS; ++i) {
}
//=======================================================================
//function :FillInternalShapes
//purpose  :
//=======================================================================
  void GEOMAlgo_Builder::FillInternalShapes()
{
  myErrorStatus=0;
  //
  const NMTDS_ShapesDataStructure& aDS=*myPaveFiller->DS();
  NMTTools_PaveFiller* pPF=myPaveFiller;
  const Handle(IntTools_Context)& aCtx= pPF->Context();
  //
  //Standard_Boolean bHasImage;
  Standard_Integer i, j, jT, aNbS, aNbSI, aNbSx, aNbSd;
  TopAbs_ShapeEnum aType, aT[]={ TopAbs_VERTEX, TopAbs_EDGE };
  TopAbs_State aState;
  TopTools_ListIteratorOfListOfShape aIt, aIt1;
  TopTools_IndexedDataMapOfShapeListOfShape aMSx;
  TopTools_IndexedMapOfShape aMx;
  TopTools_MapOfShape aMSI, aMFence, aMSOr;
  TopTools_MapIteratorOfMapOfShape aItM;
  TopTools_ListOfShape aLSI, aLSd;
  TopoDS_Iterator aItS;
  BRep_Builder aBB;
  //
  // 1. Shapes to process
  //
  // 1.1 Shapes from pure arguments aMSI
  // 1.1.1 vertex, edge
  for (i=0; i<2; ++i) {
    jT=(Standard_Integer)aT[i];
    const TopTools_ListOfShape &aLS=myShapes1[jT];
    aIt.Initialize(aLS);
    for (; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aS=aIt.Value();
      if (aMFence.Add(aS)) {
        aLSI.Append(aS);
      }
    }
  }
  // 1.1.2 wire
  {
    jT=(Standard_Integer)TopAbs_WIRE;
    const TopTools_ListOfShape &aLW=myShapes1[jT];
    aIt.Initialize(aLW);
    for (; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aW=aIt.Value();
      aItS.Initialize(aW);
      for (; aItS.More(); aItS.Next()) {
        const TopoDS_Shape& aE=aItS.Value();
        if (aMFence.Add(aE)) {
          aLSI.Append(aE);
        }
      }
    }
  }
  // 1.1.3 theirs images/sources
  aIt1.Initialize(aLSI);
  for (; aIt1.More(); aIt1.Next()) {
    const TopoDS_Shape& aS=aIt1.Value();
    if (myImages.HasImage(aS)) {
      const TopTools_ListOfShape &aLSp=myImages.Image(aS);
      aIt.Initialize(aLSp);
      for (; aIt.More(); aIt.Next()) {
        const TopoDS_Shape& aSI=aIt.Value();
        aMSI.Add(aSI);
      }
    }
    else {
      aMSI.Add(aS);
    }
  }
  aLSI.Clear();
  aNbSI=aMSI.Extent();
  //
  // 2. Internal vertices, edges from source solids
  aMFence.Clear();
  aLSd.Clear();
  //
  aNbS=aDS.NumberOfShapesOfTheObject();
  for (i=1; i<=aNbS; ++i) {
    const TopoDS_Shape& aS=aDS.Shape(i);
    aType=aS.ShapeType();
    if (aType==TopAbs_SOLID) {
      //
      aMx.Clear();
      OwnInternalShapes(aS, aMx);
      //
      aNbSx=aMx.Extent();
      for (j=1; j<=aNbSx; ++j) {
        const TopoDS_Shape& aSI=aMx(j);
        if (myImages.HasImage(aSI)) {
          const TopTools_ListOfShape &aLSp=myImages.Image(aSI);
          aIt.Initialize(aLSp);
          for (; aIt.More(); aIt.Next()) {
            const TopoDS_Shape& aSp=aIt.Value();
            aMSI.Add(aSp);
          }
        }
        else {
          aMSI.Add(aSI);
        }
      }
      //
      // build aux map from splits of solids
      if (myImages.HasImage(aS)) {
        const TopTools_ListOfShape &aLSp=myImages.Image(aS);
        aIt.Initialize(aLSp);
        for (; aIt.More(); aIt.Next()) {
          const TopoDS_Shape& aSp=aIt.Value();
          if (aMFence.Add(aSp)) {
            TopExp::MapShapesAndAncestors(aSp, TopAbs_VERTEX, TopAbs_EDGE, aMSx);
            TopExp::MapShapesAndAncestors(aSp, TopAbs_VERTEX, TopAbs_FACE, aMSx);
            TopExp::MapShapesAndAncestors(aSp, TopAbs_EDGE  , TopAbs_FACE, aMSx);
            aLSd.Append(aSp);
          }
        }
      }
      else {
        if (aMFence.Add(aS)) {
          TopExp::MapShapesAndAncestors(aS, TopAbs_VERTEX, TopAbs_EDGE, aMSx);
          TopExp::MapShapesAndAncestors(aS, TopAbs_VERTEX, TopAbs_FACE, aMSx);
          TopExp::MapShapesAndAncestors(aS, TopAbs_EDGE  , TopAbs_FACE, aMSx);
          aLSd.Append(aS);
          aMSOr.Add(aS);
        }
      }
    }//if (aType==TopAbs_SOLID)
  }
  //
  aNbSd=aLSd.Extent();
  //
  // 3. Some shapes of aMSI can be already tied with faces of
  //    split solids
  aItM.Initialize(aMSI);
  for (; aItM.More(); aItM.Next()) {
    const TopoDS_Shape& aSI=aItM.Key();
    if (aMSx.Contains(aSI)) {
      const TopTools_ListOfShape &aLSx=aMSx.FindFromKey(aSI);
      aNbSx=aLSx.Extent();
      if (aNbSx) {
        aMSI.Remove(aSI);
      }
    }
  }
  //
  // 4. Just check it
  aNbSI=aMSI.Extent();
  if (!aNbSI) {
    return;
  }
  //
  // 5 Settle internal vertices and edges into solids
  aMx.Clear();
  aIt.Initialize(aLSd);
  for (; aIt.More(); aIt.Next()) {
    TopoDS_Solid aSd=TopoDS::Solid(aIt.Value());
    //
    aItM.Initialize(aMSI);
    for (; aItM.More(); aItM.Next()) {
      TopoDS_Shape aSI=aItM.Key();
      aSI.Orientation(TopAbs_INTERNAL);
      //
      aState=GEOMAlgo_Tools3D::ComputeStateByOnePoint(aSI, aSd, 1.e-11, aCtx);
      if (aState==TopAbs_IN) {
        //
        if(aMSOr.Contains(aSd)) {
          //
          TopoDS_Solid aSdx;
          //
          aBB.MakeSolid(aSdx);
          aItS.Initialize(aSd);
          for (; aItS.More(); aItS.Next()) {
            const TopoDS_Shape& aSh=aItS.Value();
            aBB.Add(aSdx, aSh);
          }
          //
          aBB.Add(aSdx, aSI);
          //
          myImages.Bind(aSd, aSdx);
          aMSOr.Remove(aSd);
          aSd=aSdx;
        }
        else {
          aBB.Add(aSd, aSI);
        }
        //
        aMSI.Remove(aSI);
      } //if (aState==TopAbs_IN) {
    }// for (; aItM.More(); aItM.Next()) {
  }//for (; aIt1.More(); aIt1.Next()) {
}
//=======================================================================
//function : OwnInternalShapes
//purpose  :
//=======================================================================
  void OwnInternalShapes(const TopoDS_Shape& theS,
                         TopTools_IndexedMapOfShape& theMx)
{
  TopoDS_Iterator aIt;
  //
  aIt.Initialize(theS);
  for (; aIt.More(); aIt.Next()) {
    const TopoDS_Shape& aSx=aIt.Value();
    if (aSx.ShapeType()!=TopAbs_SHELL) {
      theMx.Add(aSx);
    }
  }
}
//
// ErrorStatus
// 30 - SolidBuilder failed
