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
//  File:        NMTTools_PaveFiller_6.cxx
//  Created:     Fri Dec 19 10:27:31 2003
//  Author:      Peter KURNEV

#include <NMTTools_PaveFiller.hxx>

#include <Basics_OCCTVersion.hxx>

#include <Precision.hxx>

#include <TColStd_IndexedMapOfInteger.hxx>
#include <TColStd_MapOfInteger.hxx>
#include <TColStd_MapIteratorOfMapOfInteger.hxx>
#include <TColStd_DataMapOfIntegerListOfInteger.hxx>
#include <TColStd_ListOfInteger.hxx>
#include <TColStd_ListIteratorOfListOfInteger.hxx>
#include <TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger.hxx>


#include <Geom_TrimmedCurve.hxx>
#include <Geom2d_TrimmedCurve.hxx>
#include <Geom2d_Curve.hxx>
#include <GeomAdaptor_Curve.hxx>
#include <GeomAdaptor_Surface.hxx>
#include <Geom_Surface.hxx>

#include <BndLib_Add3dCurve.hxx>

#include <TopoDS_Face.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Edge.hxx>

#include <TopExp.hxx>

#include <BRepLib.hxx>
#include <BRep_Builder.hxx>
#include <BRep_Tool.hxx>
#include <BRepBndLib.hxx>

#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>

#include <BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger.hxx>
#include <BOPTColStd_IndexedDataMapOfIntegerInteger.hxx>

#include <BooleanOperations_IndexedDataMapOfShapeInteger.hxx>
#include <BooleanOperations_AncestorsSeqAndSuccessorsSeq.hxx>
#include <BooleanOperations_OnceExplorer.hxx>
#include <BooleanOperations_ShapesDataStructure.hxx>

#include <IntTools_SequenceOfPntOn2Faces.hxx>
#include <IntTools_SequenceOfCurves.hxx>
#include <IntTools_FaceFace.hxx>
#include <IntTools_Tools.hxx>
#include <IntTools_ShrunkRange.hxx>
#include <IntTools_Context.hxx>

#include <BOPTools_CArray1OfSSInterference.hxx>
#include <BOPTools_VSInterference.hxx>
#include <BOPTools_ESInterference.hxx>
#include <BOPTools_SSInterference.hxx>
#include <BOPTools_ListOfPaveBlock.hxx>
#include <BOPTools_ListIteratorOfListOfPaveBlock.hxx>
#include <BOPTools_PaveBlock.hxx>
#include <BOPTools_ListIteratorOfListOfPave.hxx>
#include <BOPTools_Tools.hxx>
#include <BOPTools_PaveBlockIterator.hxx>
#include <BOPTools_Tools2D.hxx>
#include <BOPTools_Tools3D.hxx>
#include <BOPTools_Curve.hxx>

#include <NMTDS_Iterator.hxx>
#include <NMTDS_ShapesDataStructure.hxx>
#include <NMTDS_InterfPool.hxx>

#include <NMTTools_Tools.hxx>
#include <NMTTools_IndexedDataMapOfShapePaveBlock.hxx>
#include <NMTTools_CommonBlock.hxx>
#include <NMTTools_CommonBlockAPI.hxx>
#include <NMTTools_ListOfCommonBlock.hxx>
#include <NMTTools_ListIteratorOfListOfCommonBlock.hxx>
#include <NMTTools_DataMapOfIntegerListOfPaveBlock.hxx>
#include <NMTTools_ListIteratorOfListOfCommonBlock.hxx>
#include <NMTTools_DataMapIteratorOfDataMapOfIntegerListOfPaveBlock.hxx>
#include <NMTTools_MapOfPaveBlock.hxx>
#include <NMTTools_MapIteratorOfMapOfPaveBlock.hxx>
#include <NMTTools_FaceInfo.hxx>
#include <NMTTools_DataMapIteratorOfDataMapOfIntegerFaceInfo.hxx>

static
  Standard_Boolean IsMicroEdge(const TopoDS_Edge& aE,
                               const Handle(IntTools_Context)& aCtx);

//=======================================================================
// function: PerformFF
// purpose:
//=======================================================================
  void NMTTools_PaveFiller::PerformFF()
{
  myIsDone=Standard_False;
  //
  Standard_Boolean bToApproxC3d, bToApproxC2dOnS1, bToApproxC2dOnS2, bIsDone;
  Standard_Boolean bJustAdd, bToSplit;
  Standard_Integer n1, n2, anIndexIn, nF1, nF2, aBlockLength, aNbFFs;
  Standard_Integer aNbCurves, aNbPoints;
  Standard_Real anApproxTol, aTolR3D, aTolR2D;
  BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger aMapWhat, aMapWith;
  IntTools_SequenceOfPntOn2Faces aPnts;
  IntTools_SequenceOfCurves aCvs;
  //
  BOPTools_CArray1OfSSInterference& aFFs=myIP->SSInterferences();
  //
  //  F/F Interferences  [BooleanOperations_SurfaceSurface]
  myDSIt->Initialize(TopAbs_FACE, TopAbs_FACE);
  //
  // BlockLength correction
  aNbFFs=myDSIt->BlockLength();
  aBlockLength=aFFs.BlockLength();
  if (aNbFFs > aBlockLength) {
    aFFs.SetBlockLength(aNbFFs);
  }
  //
  //modified by NIZNHY-PKV Thu Sep 15 08:02:52 2011f
  bToSplit=Standard_False;
  //modified by NIZNHY-PKV Thu Sep 15 08:02:55 2011t
  //
  for (; myDSIt->More(); myDSIt->Next()) {
    myDSIt->Current(n1, n2, bJustAdd);
    //
    nF1 = n2;
    nF2 = n1;
    if(n1 < n2) {
      nF1 = n1;
      nF2 = n2;
    }
    anIndexIn=0;
    aPnts.Clear();
    aCvs.Clear();
    //
    const TopoDS_Face aF1=TopoDS::Face(myDS->Shape(nF1));//mpv
    const TopoDS_Face aF2=TopoDS::Face(myDS->Shape(nF2));//mpv
    //
    // FF
    bToApproxC3d     = mySectionAttribute.Approximation();
    bToApproxC2dOnS1 = mySectionAttribute.PCurveOnS1();
    bToApproxC2dOnS2 = mySectionAttribute.PCurveOnS2();
    //
    anApproxTol=1.e-7;
    //
    IntTools_FaceFace aFF;
    //
    aFF.SetParameters (bToApproxC3d, bToApproxC2dOnS1,
                       bToApproxC2dOnS2, anApproxTol);
    //
    aFF.Perform(aF1, aF2);
    //
    bIsDone=aFF.IsDone();
    //
    if (!bIsDone) {
      BOPTools_SSInterference anInterf (nF1, nF2, 1.e-07, 1.e-07, aCvs, aPnts);
      anIndexIn=aFFs.Append(anInterf);
      continue;
    }
    //
    aTolR3D=aFF.TolReached3d();
    aTolR2D=aFF.TolReached2d();
    if (aTolR3D < 1.e-7){
      aTolR3D=1.e-7;
    }
    //
    //modified by NIZNHY-PKV Thu Sep 15 08:03:02 2011f
#if OCC_VERSION_LARGE > 0x06050100 // For OCCT6.5.2 and higher
    aFF.PrepareLines3D(bToSplit);
#else
    aFF.PrepareLines3D();
#endif // OCC_VERSION_LARGE > 0x06050100 // For OCCT6.5.2 and higher
    //modified by NIZNHY-PKV Thu Sep 15 08:03:04 2011t
    //
    const IntTools_SequenceOfCurves& aCvsX=aFF.Lines();
    const IntTools_SequenceOfPntOn2Faces& aPntsX=aFF.Points();
    //
    aNbCurves=aCvsX.Length();
    aNbPoints=aPntsX.Length();
    //
    if (!aNbCurves && !aNbPoints) {
      BOPTools_SSInterference anInterf (nF1, nF2, 1.e-07, 1.e-07, aCvs, aPnts);
      anIndexIn=aFFs.Append(anInterf);
      continue;
    }
    //
    {
      BOPTools_SSInterference anInterf (nF1, nF2, aTolR3D, aTolR2D, aCvsX, aPntsX);
      anIndexIn=aFFs.Append(anInterf);
    }
    //
  }// for (; myDSIt.More(); myDSIt.Next())
  //
  myIsDone=Standard_True;
}

//=======================================================================
// function: MakeBlocks
// purpose:
//=======================================================================
void NMTTools_PaveFiller::MakeBlocks()
{
  myIsDone=Standard_False;
  //
  Standard_Boolean bIsExistingPaveBlock, bIsValidIn2D, bIsCoincided;
  Standard_Boolean bIsMicroEdge, bHasES;
  Standard_Integer i, aNbFFs, nF1, nF2;
  Standard_Integer nV1, nV2, j, aNbCurves;
  Standard_Real aTolR3D, aTol2D, aT1, aT2, aTolPPC=Precision::PConfusion();
  TopoDS_Face aF1, aF2;
  NMTTools_IndexedDataMapOfShapePaveBlock aMEPB;
  BooleanOperations_IndexedDataMapOfShapeInteger aMapEI;
  BOPTools_ListIteratorOfListOfPaveBlock anIt;
  //
  BOPTools_CArray1OfSSInterference& aFFs=myIP->SSInterferences();
  //

  //
  // 1. Make Section Edges from intersection curves
  //    between each pair of faces
  aNbFFs=aFFs.Extent();
  if (!aNbFFs) {
    return;
  }
  //
  FillFaceInfo();
  //
  for (i=1; i<=aNbFFs; ++i) {
    BOPTools_ListOfPaveBlock aLPB;
    TColStd_MapOfInteger aMVStick;
    TopTools_ListOfShape aLSE;
    TColStd_ListOfInteger aLNE;
    BOPTools_PaveSet aPSF;
    NMTTools_MapOfPaveBlock aMPBX;
    TColStd_MapIteratorOfMapOfInteger aItMI;
    NMTTools_MapIteratorOfMapOfPaveBlock aItMPB;
    //
    BOPTools_SSInterference& aFFi=aFFs(i);
    //
    // Faces
    aFFi.Indices(nF1, nF2);
    aF1=*((TopoDS_Face*)(&myDS->Shape(nF1)));
    aF2=*((TopoDS_Face*)(&myDS->Shape(nF2)));
    //
    SharedEdges(nF1, nF2, aLNE, aLSE);
    aFFi.SetSharedEdges(aLNE);
    //
    // aMVStick
    const NMTTools_FaceInfo& aFI1=myFaceInfo.Find(nF1);
    const NMTTools_FaceInfo& aFI2=myFaceInfo.Find(nF2);
    //
    const TColStd_MapOfInteger& aMVOn1=aFI1.VerticesOn();
    const TColStd_MapOfInteger& aMVIn1=aFI1.VerticesIn();
    const TColStd_MapOfInteger& aMVOn2=aFI2.VerticesOn();
    const TColStd_MapOfInteger& aMVIn2=aFI2.VerticesIn();
    //
    for (j=0; j<2; ++j) {
      const TColStd_MapOfInteger& aMV1=(!j) ? aMVOn1 :aMVIn1;
      aItMI.Initialize(aMV1);
      for (; aItMI.More(); aItMI.Next()) {
	nV1=aItMI.Key();
	if (aMVOn2.Contains(nV1) || aMVIn2.Contains(nV1)) {
	  aMVStick.Add(nV1);
	}
      }
    }
    //
    //  aLPB
    const NMTTools_MapOfPaveBlock& aMPBIn1=aFI1.PaveBlocksIn();
    const NMTTools_MapOfPaveBlock& aMPBOn1=aFI1.PaveBlocksOn();
    const NMTTools_MapOfPaveBlock& aMPBIn2=aFI2.PaveBlocksIn();
    const NMTTools_MapOfPaveBlock& aMPBOn2=aFI2.PaveBlocksOn();
    //
    aMPBX.Clear();
    for (j=0; j<4; ++j) {
      NMTTools_MapOfPaveBlock *pMPB;
      //
      if (!j) {
	pMPB=((NMTTools_MapOfPaveBlock*)&aMPBIn1);
      }
      else if (j==1) {
	pMPB=((NMTTools_MapOfPaveBlock*)&aMPBOn1);
      }
      else if (j==2) {
	pMPB=((NMTTools_MapOfPaveBlock*)&aMPBIn2);
      }
      else if (j==3) {
	pMPB=((NMTTools_MapOfPaveBlock*)&aMPBOn2);
      }
      //
      const NMTTools_MapOfPaveBlock& aMPB=*pMPB;
      aItMPB.Initialize(aMPB);
      for (; aItMPB.More(); aItMPB.Next()) {
	const BOPTools_PaveBlock& aPB=aItMPB.Key();
	if (aMPBX.Add(aPB)) {
	  aLPB.Append(aPB);
	}
	//
	else {
	  if (j>1) {
	    aFFi.AppendBlock(aPB);
	  }
	}
	//
      }
    }
    //
    BOPTools_SequenceOfCurves& aSCvs=aFFi.Curves();
    aNbCurves=aSCvs.Length();
    if (!aNbCurves) {
      continue;
    }
    //
    aTolR3D=aFFi.TolR3D();
    aTol2D=(aTolR3D < 1.e-3) ? 1.e-3 : aTolR3D;
    //
    CorrectTolR3D(aFFi, aMVStick, aTolR3D);
    //
    PrepareSetForFace (nF1, nF2, aLPB, aPSF);
    //
    // Put Paves On Curves
    for (j=1; j<=aNbCurves; ++j) {
      BOPTools_Curve& aBC=aSCvs(j);
      const IntTools_Curve& aC=aBC.Curve();
      // DEBUG f
      Handle(Geom_Curve) aC3D = aC.Curve();
      // DEBUG t
      PutPaveOnCurve (aPSF, aTolR3D, aBC);
    }
    //
    // Put bounding paves on curves
    for (j=1; j<=aNbCurves; ++j) {
      BOPTools_Curve& aBC=aSCvs(j);
      PutBoundPaveOnCurve (aBC, aFFi);
    }
    //modified by NIZNHY-PKV Wed Sep 14 13:12:14 2011f
#if OCC_VERSION_LARGE > 0x06050100 // For OCCT6.5.2 and higher
    //
    // Put closing pave if needded
    for (j=1; j<=aNbCurves; ++j) {
      BOPTools_Curve& aBC=aSCvs(j);
      PutClosingPaveOnCurve (aBC, aFFi);
    }
#endif // OCC_VERSION_LARGE > 0x06050100 // For OCCT6.5.2 and higher
    //modified by NIZNHY-PKV Wed Sep 14 13:12:17 2011t
    //
    //  Pave Blocks on Curves
    bHasES=Standard_False;
    for (j=1; j<=aNbCurves; ++j) {
      BOPTools_Curve& aBC=aSCvs(j);
      const IntTools_Curve& aIC= aBC.Curve();
      BOPTools_PaveSet& aPaveSet=aBC.Set();
      //
      BOPTools_PaveBlockIterator aPBIter(0, aPaveSet);
      for (; aPBIter.More(); aPBIter.Next()) {
        BOPTools_PaveBlock& aPBNew=aPBIter.Value();
        aPBNew.SetCurve(aIC);
        aPBNew.SetFace1(nF1);
        aPBNew.SetFace2(nF2);
        //
        nV1=aPBNew.Pave1().Index();
        nV2=aPBNew.Pave2().Index();
        aT1=aPBNew.Pave1().Param();
        aT2=aPBNew.Pave2().Param();
        //
        if((nV1==nV2) && (Abs(aT2 - aT1) < aTolPPC)) {
          continue;// mkk ft ???
        }
        //
        // 1
        bIsExistingPaveBlock=IsExistingPaveBlock(aPBNew, aLPB, aTolR3D);
        if (bIsExistingPaveBlock) {
          continue;
        }
        //
        bIsCoincided=CheckCoincidence(aPBNew, aLPB);
        if(bIsCoincided) {
          continue;
        }
        //
        // 2
        bIsExistingPaveBlock=IsExistingPaveBlock(aPBNew, aLSE, aTolR3D);
        if (bIsExistingPaveBlock) {
          continue;
        }
	//
        // Checking of validity in 2D
        //
        bIsValidIn2D=myContext->IsValidBlockForFaces(aT1, aT2, aIC, aF1, aF2, aTol2D);
        if (!bIsValidIn2D) {
          continue;
        }
        //
        //
        // Make Section Edge
        TopoDS_Edge aES;
        //
        const TopoDS_Vertex aV1=TopoDS::Vertex(myDS->Shape(nV1));
        const TopoDS_Vertex aV2=TopoDS::Vertex(myDS->Shape(nV2));
        //
        {
          Standard_Real aT;
          //
          myContext->IsVertexOnLine(aV1, aIC, aTolR3D, aT);
          BOPTools_Tools::UpdateVertex (aIC, aT, aV1);
          //
          myContext->IsVertexOnLine(aV2, aIC, aTolR3D, aT);
          BOPTools_Tools::UpdateVertex (aIC, aT, aV2);
        }
        //
        BOPTools_Tools::MakeSectEdge (aIC, aV1, aT1, aV2, aT2, aES);
        //
        NMTTools_Tools::UpdateEdge (aES, aTolR3D);
        bIsMicroEdge=IsMicroEdge(aES, myContext);
        if (bIsMicroEdge) {
          continue;
        }
        //
        {
          Handle(Geom2d_Curve) aC2D1, aC2D2;
          //
          aC2D1=aIC.FirstCurve2d();
          aC2D2=aIC.SecondCurve2d();
          //
          NMTTools_Tools::MakePCurve(aES, aF1, aC2D1);
          NMTTools_Tools::MakePCurve(aES, aF2, aC2D2);
        }
        //
        aMEPB.Add(aES, aPBNew);
        aMapEI.Add(aES, i);
        //
        bHasES=Standard_True;
      }// for (; aPBIter.More(); aPBIter.Next())
    } // end of for (j=1; j<=aNbCurves; ++j)
    // qqf
    if (bHasES) {
      myIP->Add(nF1, nF2, Standard_True, NMTDS_TI_FF);
    }
    // qqt
  }// for (i=1; i<=aNbFFs; ++i)
  //=============================================================
  //
  // II. Post treatment
  //
  // Input data: aMEPB, aMapEI
  // Result    : section edges in myDS
  //
  Standard_Integer aNbSE;
  //
  aNbSE=aMEPB.Extent();
  if (!aNbSE) {
    // there is nothing to do here
    return;
  }
  //
  BRep_Builder aBB;
  TopoDS_Compound aCompound;
  //
  // 1. Make compound from SE
  aBB.MakeCompound(aCompound);
  for (i=1; i<=aNbSE; ++i) {
    const TopoDS_Shape& aSE=aMEPB.FindKey(i);
    aBB.Add(aCompound, aSE);
  }
  //
  //
  // 2. Intersect SE using auxiliary Filler
  NMTTools_PaveFiller tPF;
  //
  tPF.SetCompositeShape(aCompound);
  //
  // 2.1.VV
  tPF.Init();
  tPF.PerformVV();
  //
  // 2.2.VE
  tPF.myPavePool.Resize (tPF.myNbEdges);
  tPF.PrepareEdges();
  tPF.PerformVE();
  //
  // 2.3.VF
  tPF.PerformVF();
  //
  // 2.4.EE
  tPF.myCommonBlockPool.Resize (tPF.myNbEdges);
  tPF.mySplitShapesPool.Resize (tPF.myNbEdges);
  tPF.myPavePoolNew    .Resize (tPF.myNbEdges);

  tPF.PreparePaveBlocks(TopAbs_VERTEX, TopAbs_EDGE);
  tPF.PreparePaveBlocks(TopAbs_EDGE, TopAbs_EDGE);
  //
  tPF.PerformEE();
  //
  tPF.RefinePavePool ();
  //
  tPF.myPavePoolNew.Destroy();
  //
  tPF.MakeSplitEdges();
  tPF.UpdateCommonBlocks();
  //
  // 3. Treatment of the result of intersection
  //
  Standard_Integer aNbOld, aNbLines, aNbPB, mV1, mV2, nE, mE, iFF;
  TopAbs_ShapeEnum aType;
  BOPTools_ListIteratorOfListOfPaveBlock aIt;
  BOPTColStd_IndexedDataMapOfIntegerInteger aMNewOld;
  //
  const NMTDS_ShapesDataStructure& tDS=*(tPF.DS());
  const BOPTools_SplitShapesPool& aSSP=tPF.mySplitShapesPool;
  const NMTTools_CommonBlockPool& aCBP=tPF.myCommonBlockPool;
  //
  aNbLines=tDS.NumberOfInsertedShapes();
  aNbOld=tDS.NumberOfShapesOfTheObject();
  //
  // 3.1 Links between indices in tDS and DS (kept in aMNewOld)
  //
  // 3.1.1.Old vertices [ links ]
  for (i=1; i<=aNbOld; ++i) {
    const TopoDS_Shape& aV=tDS.Shape(i);
    aType=aV.ShapeType();
    if (aType!=TopAbs_VERTEX) {
      continue;
    }
    //
    for (j=1; j<=aNbSE; ++j) {
      const BOPTools_PaveBlock& aPBSE=aMEPB(j);
      nV1=aPBSE.Pave1().Index();
      const TopoDS_Shape aV1=myDS->Shape(nV1);//mpv
      if (aV1.IsSame(aV)) {
        aMNewOld.Add(i, nV1);
        break;
      }
      nV2=aPBSE.Pave2().Index();
      const TopoDS_Shape aV2=myDS->Shape(nV2);//mpv
      if (aV2.IsSame(aV)) {
        aMNewOld.Add(i, nV2);
        break;
      }
    }
  }
  //
  // 3.1.2. New vertices [ links ]
  i=tDS.NumberOfSourceShapes()+1;
  for (; i<=aNbLines; ++i) {
    const TopoDS_Shape& aV=tDS.Shape(i);
    aType=aV.ShapeType();
    if (aType!=TopAbs_VERTEX) {
      continue;
    }
    //
    // Insert new vertex in myDS
    BooleanOperations_AncestorsSeqAndSuccessorsSeq anASSeq;
    myDS->InsertShapeAndAncestorsSuccessors(aV, anASSeq);
    nV1=myDS->NumberOfInsertedShapes();
    // link
    aMNewOld.Add(i, nV1);
  }
  //
  // 3.2. Treatment of section edges (SE)
  for (i=1; i<=aNbOld; ++i) {
    const TopoDS_Shape& aE=tDS.Shape(i);
    aType=aE.ShapeType();
    if (aType!=TopAbs_EDGE) {
      continue;
    }
    //
    //  block of section edge that we already have for this SE
    BOPTools_PaveBlock& aPBSE=aMEPB.ChangeFromKey(aE);
    //
    // Corresponding FF-interference
    iFF=aMapEI.FindFromKey(aE);
    BOPTools_SSInterference& aFFi=aFFs(iFF);
    BOPTools_SequenceOfCurves& aSCvs=aFFi.Curves();
    //
    BOPTools_Curve& aBC=aSCvs(1);
    //
    const BOPTools_ListOfPaveBlock& aLPB=aSSP(tDS.RefEdge(i));
    aNbPB=aLPB.Extent();
    //
    if (!aNbPB) {
      // no pave blocks -> use aPBSE and whole edge aE
      BooleanOperations_AncestorsSeqAndSuccessorsSeq anASSeq;
      //
      nV1=aPBSE.Pave1().Index();
      const TopoDS_Shape aV1=myDS->Shape(nV1);//mpv
      nV2=aPBSE.Pave2().Index();
      const TopoDS_Shape aV2=myDS->Shape(nV2);//mpv
      //
      anASSeq.SetNewSuccessor(nV1);
      anASSeq.SetNewOrientation(aV1.Orientation());
      anASSeq.SetNewSuccessor(nV2);
      anASSeq.SetNewOrientation(aV2.Orientation());
      //
      myDS->InsertShapeAndAncestorsSuccessors(aE, anASSeq);
      nE=myDS->NumberOfInsertedShapes();
      //
      aPBSE.SetEdge(nE);
      aBC.AppendNewBlock(aPBSE);
      //
      continue;
    }
    //
    nF1=aPBSE.Face1();
    nF2=aPBSE.Face2();
    //
    const NMTTools_ListOfCommonBlock& aLCB=aCBP(tDS.RefEdge(i));
    NMTTools_CommonBlockAPI aCBAPI(aLCB);
    //
    aIt.Initialize(aLPB);
    for (; aIt.More(); aIt.Next()) {
      BOPTools_PaveBlock aPB=aIt.Value();
      //
      const TopoDS_Face aF1=TopoDS::Face(myDS->Shape(nF1));
      const TopoDS_Face aF2=TopoDS::Face(myDS->Shape(nF2));
      //
      if (aCBAPI.IsCommonBlock(aPB)) {
        // it can be Common Block
        Standard_Real aTolEx;
        Handle(Geom2d_Curve) aC2D1, aC2D2;
        TopoDS_Face aF1FWD, aF2FWD;
        //
        NMTTools_CommonBlock& aCB=aCBAPI.CommonBlock(aPB);
        //const BOPTools_ListOfPaveBlock& aLPBx=aCB.PaveBlocks();
        //
        aPB=aCB.PaveBlock1();
        mE=aPB.Edge(); // index of edge in tDS
        const TopoDS_Edge& aEx=TopoDS::Edge(tDS.Shape(mE));
        aTolEx=BRep_Tool::Tolerance(aEx);
        //
        aF1FWD=aF1;
        aF1FWD.Orientation(TopAbs_FORWARD);
        aF2FWD=aF2;
        aF2FWD.Orientation(TopAbs_FORWARD);
        //
        NMTTools_Tools::MakePCurve(aEx, aF1FWD, aC2D1);
        NMTTools_Tools::MakePCurve(aEx, aF2FWD, aC2D2);
        NMTTools_Tools::UpdateEdge (aEx, aTolEx);
      } //if (aCBAPI.IsCommonBlock(aPB))
      //
      // new SE
      mE=aPB.Edge(); // index of edge in tDS
      const TopoDS_Shape& aSp=tDS.Shape(mE);
      //
      const BOPTools_Pave& aPave1=aPB.Pave1();
      aT1=aPave1.Param();
      mV1=aPave1.Index();            // index in tDS
      nV1=aMNewOld.FindFromKey(mV1); // index in myDS
      const TopoDS_Shape aV1=myDS->Shape(nV1);//mpv
      //
      const BOPTools_Pave& aPave2=aPB.Pave2();
      aT2=aPave2.Param();
      mV2=aPave2.Index();
      nV2=aMNewOld.FindFromKey(mV2);
      const TopoDS_Shape aV2=myDS->Shape(nV2);//mpv
      //
      if (!aMNewOld.Contains(mE)) {
        // add new SE to the myDS
        BooleanOperations_AncestorsSeqAndSuccessorsSeq anASSeq;
        //
        anASSeq.SetNewSuccessor(nV1);
        anASSeq.SetNewOrientation(aV1.Orientation());

        anASSeq.SetNewSuccessor(nV2);
        anASSeq.SetNewOrientation(aV2.Orientation());

        myDS->InsertShapeAndAncestorsSuccessors(aSp, anASSeq);
        nE=myDS->NumberOfInsertedShapes();
        //
        aMNewOld.Add(mE, nE);
      }
      else {
        nE=aMNewOld.FindFromKey(mE);
      }
      // Form PaveBlock;
      BOPTools_PaveBlock aPBx;
      BOPTools_Pave aP1, aP2;
      //
      aPBx.SetFace1(nF1);
      aPBx.SetFace1(nF2);
      //
      aP1.SetIndex(nV1);
      aP1.SetParam(aT1);
      //
      aP2.SetIndex(nV2);
      aP2.SetParam(aT2);
      //
      aPBx.SetPave1(aP1);
      aPBx.SetPave2(aP2);
      //
      aPBx.SetEdge(nE);
      //
      aBC.AppendNewBlock(aPBx);
    }// for (; aIt.More(); aIt.Next())
  }// for (i=1; i<=aNbOld; ++i)
  //
  myIsDone=Standard_True;
}

//=======================================================================
// function: MakePCurves
// purpose:
//=======================================================================
void NMTTools_PaveFiller::MakePCurves()
{
  Standard_Integer i, aNb,  nF1, nF2, nE;
  Standard_Integer aNbCB, aNbF, nSp, nF;
  TopAbs_ShapeEnum aType;
  TopoDS_Face aF1FWD, aF2FWD;
  TColStd_ListIteratorOfListOfInteger aItF;
  BOPTools_ListIteratorOfListOfPaveBlock anIt;
  NMTTools_ListIteratorOfListOfCommonBlock aItCB;
  //
  BOPTools_CArray1OfSSInterference& aFFs=myIP->SSInterferences();
  //
  aNb=aFFs.Extent();
  for (i=1; i<=aNb; i++) {
    BOPTools_SSInterference& aFF=aFFs(i);
    aFF.Indices(nF1, nF2);
    //
    const TopoDS_Face aF1=TopoDS::Face(myDS->Shape(nF1));//mpv
    const TopoDS_Face aF2=TopoDS::Face(myDS->Shape(nF2));//mpv
    //
    aF1FWD=aF1;
    aF1FWD.Orientation(TopAbs_FORWARD);
    aF2FWD=aF2;
    aF2FWD.Orientation(TopAbs_FORWARD);
    //
    // In, On parts processing
    const BOPTools_ListOfPaveBlock& aLPBInOn=aFF.PaveBlocks();
    //
    anIt.Initialize(aLPBInOn);
    for (; anIt.More(); anIt.Next()) {
      const BOPTools_PaveBlock& aPB=anIt.Value();
      nE=aPB.Edge();
      const TopoDS_Edge aE=TopoDS::Edge(myDS->Shape(nE));//mpv

      BOPTools_Tools2D::BuildPCurveForEdgeOnFace(aE, aF1FWD);
      BOPTools_Tools2D::BuildPCurveForEdgeOnFace(aE, aF2FWD);
    }
  }
  // Check common blocks between edges and faces
  // Build P-Curves if they were not built in previos block.
  // The main case is :arguments for e.g aEdge, aFace -> no FFs,
  // but p-curves are needed.
  //
  aNb=myDS->NumberOfShapesOfTheObject();
  for (i=1; i<=aNb; ++i) {
    const TopoDS_Shape& aS=myDS->Shape(i);
    aType=aS.ShapeType();
    //
    if (aType!=TopAbs_EDGE) {
      continue;
    }
    const TopoDS_Edge& aE=TopoDS::Edge(aS);
    //
    if (BRep_Tool::Degenerated(aE)) {
      continue;
    }
    //
    const NMTTools_ListOfCommonBlock& aLCB=myCommonBlockPool(myDS->RefEdge(i));
    aNbCB=aLCB.Extent();
    if (!aNbCB) {
      continue;
    }
    //
    aItCB.Initialize(aLCB);
    for (; aItCB.More(); aItCB.Next()) {
      const NMTTools_CommonBlock& aCB=aItCB.Value();
      const BOPTools_PaveBlock &aPB1=aCB.PaveBlock1();
      //
      const TColStd_ListOfInteger& aLF=aCB.Faces();
      aNbF=aLF.Extent();
      if (!aNbF) {
        continue;
      }
      //
      nSp=aPB1.Edge();
      const TopoDS_Edge aSp=TopoDS::Edge(myDS->Shape(nSp));//mpv
      //
      aItF.Initialize(aLF);
      for (; aItF.More(); aItF.Next()) {
        nF=aItF.Value();
        aF1FWD=TopoDS::Face(myDS->Shape(nF));
        aF1FWD.Orientation(TopAbs_FORWARD);
        //
        BOPTools_Tools2D::BuildPCurveForEdgeOnFace(aSp, aF1FWD);
      } // for (; aItCB.More(); aItCB.Next()) {
    }//if (aS.ShapeType()==TopAbs_EDGE) {
  }
}

//=======================================================================
// function: IsExistingPaveBlock
// purpose:
//=======================================================================
Standard_Boolean NMTTools_PaveFiller::IsExistingPaveBlock(const BOPTools_PaveBlock& aPBNew,
                                                          const BOPTools_ListOfPaveBlock& aLPBR,
                                                          const Standard_Real aTolR3D)
{
  Standard_Boolean bFlag;
  Standard_Integer nVNew1, nVNew2, nV1, nV2, iC;
  BOPTools_ListIteratorOfListOfPaveBlock anIt;
  //
  bFlag=Standard_False;
  nVNew1=aPBNew.Pave1().Index();
  nVNew2=aPBNew.Pave2().Index();
  //
  anIt.Initialize(aLPBR);
  for (; anIt.More(); anIt.Next()) {
    const BOPTools_PaveBlock& aPBR=anIt.Value();
    nV1=aPBR.Pave1().Index();
    nV2=aPBR.Pave2().Index();
    if (nVNew1==nV1 || nVNew1==nV2 || nVNew2==nV1 || nVNew2==nV2) {
      //
      iC=CheckIntermediatePoint(aPBNew, aPBR, aTolR3D);
      if (!iC) {
        return !bFlag;
      }
    }
  }
  return bFlag;
}

//=======================================================================
// function: IsExistingPaveBlock
// purpose:
//=======================================================================
Standard_Boolean NMTTools_PaveFiller::IsExistingPaveBlock(const BOPTools_PaveBlock& aPBNew,
                                                          const TopTools_ListOfShape& aLSE,
                                                          const Standard_Real aTolR3D)
{
  Standard_Boolean bFlag;
  Standard_Integer aNbSE, iC;
  Standard_Real aTolE, aTol;
  TopTools_ListIteratorOfListOfShape anIt;
  //
  bFlag=Standard_False;
  //
  aNbSE=aLSE.Extent();
  if (!aNbSE) {
    return bFlag;
  }
  //
  anIt.Initialize(aLSE);
  for (; anIt.More(); anIt.Next()) {
    const TopoDS_Edge& aE=TopoDS::Edge(anIt.Value());
    aTolE=BRep_Tool::Tolerance(aE);
    aTol=aTolR3D;
    if (aTolE>aTol) {
      aTol=aTolE;
    }
    iC=CheckIntermediatePoint(aPBNew, aE, aTol);
    if (!iC) {
      return !bFlag;
    }
  }
  return bFlag;
}

//=======================================================================
// function: CheckIntermediatePoint
// purpose:
//=======================================================================
Standard_Integer NMTTools_PaveFiller::CheckIntermediatePoint(const BOPTools_PaveBlock& aPB,
                                                             const BOPTools_PaveBlock& aPBR,
                                                             const Standard_Real aTolC)
{
  Standard_Integer iVM, nE2;
  //
  nE2=aPBR.Edge();
  const TopoDS_Edge aE2=TopoDS::Edge(myDS->Shape(nE2));//mpv
  iVM=CheckIntermediatePoint(aPB, aE2, aTolC);
  //
  return iVM;
}

//=======================================================================
// function: CheckIntermediatePoint
// purpose:
//=======================================================================
Standard_Integer NMTTools_PaveFiller::CheckIntermediatePoint(const BOPTools_PaveBlock& aPB,
                                                             const TopoDS_Edge& aE2,
                                                             const Standard_Real aTolC)
{
  Standard_Real aT11, aT12, aTM, aTmp;
  Standard_Integer iVM;
  gp_Pnt aPM;
  BRep_Builder aBB;
  TopoDS_Vertex aVM;
  //
  // Vertex
  const BOPTools_Pave& aPave11=aPB.Pave1();
  aT11=aPave11.Param();
  //
  const BOPTools_Pave& aPave12=aPB.Pave2();
  aT12=aPave12.Param();
  //
  aTM=IntTools_Tools::IntermediatePoint (aT11, aT12);
  //
  const IntTools_Curve& aIC=aPB.Curve();
  aIC.D0(aTM, aPM);
  //
  aBB.MakeVertex (aVM, aPM, aTolC);
  //
  iVM=myContext->ComputeVE(aVM, aE2, aTmp);
  //
  return iVM;
}

//=======================================================================
// function: PutBoundPaveOnCurve
// purpose:
//=======================================================================
void NMTTools_PaveFiller::PutBoundPaveOnCurve(BOPTools_Curve& aBC,
                                              BOPTools_SSInterference& aFFi)
{
  Standard_Boolean bHasBounds, bVF;
  Standard_Integer nF1, nF2;
  Standard_Real aT1, aT2, aTolR3D;
  gp_Pnt aP1, aP2;
  //
  const IntTools_Curve& aIC=aBC.Curve();
  bHasBounds=aIC.HasBounds ();
  if (!bHasBounds){
    return;
  }
  //
  // Bounds
  aIC.Bounds (aT1, aT2, aP1, aP2);
  //
  // Faces
  aFFi.Indices(nF1, nF2);
  aTolR3D=aFFi.TolR3D();
  //
  const TopoDS_Face aF1=TopoDS::Face(myDS->GetShape(nF1));//mpv
  const TopoDS_Face aF2=TopoDS::Face(myDS->GetShape(nF2));//mpv
  //
  bVF=myContext->IsValidPointForFaces (aP1, aF1, aF2, aTolR3D);
  if (bVF) {
    PutBoundPaveOnCurve (aP1, aT1, aBC, aFFi);
  }
  //
  bVF=myContext->IsValidPointForFaces (aP2, aF1, aF2, aTolR3D);
  if (bVF) {
    PutBoundPaveOnCurve (aP2, aT2, aBC, aFFi);
  }
}

//=======================================================================
// function: PutBoundPaveOnCurve
// purpose:
//=======================================================================
void NMTTools_PaveFiller::PutBoundPaveOnCurve(const gp_Pnt& aP,
                                              const Standard_Real aT,
                                              BOPTools_Curve& aBC,
                                              BOPTools_SSInterference& aFFi)
{
  Standard_Boolean bFound1, bFound2;
  Standard_Integer nV;
  Standard_Real aTolV=aFFi.TolR3D();

  BOPTools_Pave aPave1, aPave2, aPave;
  BOPTools_PaveSet& aCPS=aBC.Set();
  BOPTools_PaveSet& aFFiPS=aFFi.NewPaveSet();
  const IntTools_Curve& aIC=aBC.Curve();
  //
  bFound1=FindPave(aP, aTolV, aCPS  , aPave1);
  bFound2=FindPave(aP, aTolV, aFFiPS, aPave2);
  //
  if (!bFound1 && !bFound2) {
    TopoDS_Vertex aNewVertex;
    BOPTools_Tools::MakeNewVertex(aP, aTolV, aNewVertex);
    //
    BooleanOperations_AncestorsSeqAndSuccessorsSeq anASSeq;
    myDS->InsertShapeAndAncestorsSuccessors(aNewVertex, anASSeq);
    nV=myDS->NumberOfInsertedShapes();
    aPave.SetIndex(nV);
    aPave.SetParam(aT);

    aCPS.Append(aPave);
    aFFiPS.Append(aPave);
    //
    // Append Techno Vertex to the Curve
    TColStd_ListOfInteger& aTVs=aBC.TechnoVertices();
    aTVs.Append(nV);
  }
  if (bFound1 && !bFound2) {
    nV=aPave1.Index();
    aPave.SetIndex(nV);
    aPave.SetParam(aT);
    aFFiPS.Append(aPave);
    //
    const TopoDS_Vertex aV=TopoDS::Vertex(myDS->Shape(nV));//mpv
    BOPTools_Tools::UpdateVertex (aIC, aT, aV);
  }

  if (!bFound1 && bFound2) {
    nV=aPave2.Index();
    aPave.SetIndex(nV);
    aPave.SetParam(aT);
    aCPS.Append(aPave);
    //
    const TopoDS_Vertex aV=TopoDS::Vertex(myDS->Shape(nV));//mpv
    BOPTools_Tools::UpdateVertex (aIC, aT, aV);
  }
}

//=======================================================================
// function: FindPave
// purpose:
//=======================================================================
Standard_Boolean NMTTools_PaveFiller::FindPave(const gp_Pnt& aP,
                                               const Standard_Real aTolPV,
                                               const BOPTools_PaveSet& aPS,
                                               BOPTools_Pave& aPave)
{
  Standard_Integer nV;
  Standard_Boolean bIsVertex=Standard_False;

  const BOPTools_ListOfPave& aLP=aPS.Set();
  BOPTools_ListIteratorOfListOfPave anIt(aLP);
  for (; anIt.More(); anIt.Next()) {
    const BOPTools_Pave& aPC=anIt.Value();
    nV=aPC.Index();
    const TopoDS_Vertex aV=TopoDS::Vertex(myDS->Shape(nV));//mpv
    bIsVertex=IntTools_Tools::IsVertex (aP, aTolPV, aV);
    if (bIsVertex) {
      aPave=aPC;
      return bIsVertex;
    }
  }
  return bIsVertex;
}

//=======================================================================
// function: PrepareSetForFace
// purpose:
//=======================================================================
void NMTTools_PaveFiller::PrepareSetForFace(const Standard_Integer ,//nF1,
                                            const Standard_Integer ,//nF2,
                                            const BOPTools_ListOfPaveBlock& aLPBC,
                                            BOPTools_PaveSet& aPSF)
{
  Standard_Integer nV1, nV2;
  TColStd_MapOfInteger aMap;
  BOPTools_ListIteratorOfListOfPaveBlock anIt;
  //
  anIt.Initialize(aLPBC);
  for (; anIt.More(); anIt.Next()) {
    const BOPTools_PaveBlock& aPB=anIt.Value();
    const BOPTools_Pave& aPave1=aPB.Pave1();
    nV1=aPave1.Index();
    if (!aMap.Contains(nV1)) {
      aMap.Add(nV1);
      aPSF.Append(aPave1);
    }
    const BOPTools_Pave& aPave2=aPB.Pave2();
    nV2=aPave2.Index();
    if (!aMap.Contains(nV2)) {
      aMap.Add(nV2);
      aPSF.Append(aPave2);
    }
  }
}

//=======================================================================
// function: CheckCoincidence
// purpose:
//=======================================================================
Standard_Boolean NMTTools_PaveFiller::CheckCoincidence(const BOPTools_PaveBlock& aPBNew,
                                                       const BOPTools_ListOfPaveBlock& aLPBFF)
{
  Standard_Boolean bRet;
  Standard_Real aTE;
  Standard_Integer nV11, nV12, nV21, nV22, iVV, iVE, nE2;
  Standard_Integer iV, iCount, iCountExt;
  BOPTools_ListIteratorOfListOfPaveBlock anIt;
  // V11
  const BOPTools_Pave& aPave11=aPBNew.Pave1();
  nV11=aPave11.Index();
  const TopoDS_Vertex& aV11=TopoDS::Vertex(myDS->Shape(nV11));

  // V12
  const BOPTools_Pave& aPave12=aPBNew.Pave2();
  nV12=aPave12.Index();
  const TopoDS_Vertex& aV12=TopoDS::Vertex(myDS->Shape(nV12));
  //
  iCountExt=1;
  iCount=0;
  anIt.Initialize(aLPBFF);
  for (; anIt.More(); anIt.Next()) {
    iCount=0;
    //
    const BOPTools_PaveBlock& aPBR=anIt.Value();
    // V21
    const BOPTools_Pave& aPave21=aPBR.Pave1();
    nV21=aPave21.Index();

    // V22
    const BOPTools_Pave& aPave22=aPBR.Pave2();
    nV22=aPave22.Index();
    //
    if (nV11==nV21 || nV11==nV22 || nV12==nV21 || nV12==nV22) {
      continue;
    }
    //
    // E2
    nE2=aPBR.Edge();
    //
    const TopoDS_Vertex& aV21=TopoDS::Vertex(myDS->Shape(nV21));
    const TopoDS_Vertex& aV22=TopoDS::Vertex(myDS->Shape(nV22));
    const TopoDS_Edge& aE2=TopoDS::Edge(myDS->Shape(nE2));
    //
    // VV
    iV=0;
    iVV=IntTools_Tools::ComputeVV (aV11, aV21);
    if (!iVV) {
      iCount++;
      iV++;
      if (iCount>iCountExt) {
        break;
      }
    }
    //
    iVV=IntTools_Tools::ComputeVV (aV11, aV22);
    if (!iVV) {
      iCount++;
      iV++;
      if (iCount>iCountExt) {
        break;
      }
    }
    // VE
    if (!iV) {
      iVE=myContext->ComputeVE (aV11, aE2, aTE);
      if (!iVE) {
        iCount++;
        if (iCount>iCountExt) {
          break;
        }
      }
    }
    // VV
    iV=0;
    iVV=IntTools_Tools::ComputeVV (aV12, aV21);
    if (!iVV) {
      iCount++;
      iV++;
      if (iCount>iCountExt) {
        break;
      }
    }
    //
    iVV=IntTools_Tools::ComputeVV (aV12, aV22);
    if (!iVV) {
      iCount++;
      iV++;
      if (iCount>iCountExt) {
        break;
      }
    }
    // VE
    if (!iV) {
      iVE=myContext->ComputeVE (aV12, aE2, aTE);
      if (!iVE) {
        iCount++;
        if (iCount>iCountExt) {
          break;
        }
      }
    }
  } // next aPBR
  bRet=(Standard_Boolean)(iCount>iCountExt);
  return bRet;
}

//=======================================================================
//function : IsMicroEdge
//purpose  :
//=======================================================================
Standard_Boolean IsMicroEdge(const TopoDS_Edge& aE,
                             const Handle(IntTools_Context)& aCtx)
{
  Standard_Boolean bRet;
  Standard_Integer iErr;
  Standard_Real aT1, aT2, aTmp;
  Handle(Geom_Curve) aC3D;
  TopoDS_Vertex aV1, aV2;
  IntTools_Range aR;
  //
  bRet=(BRep_Tool::Degenerated(aE) ||
        !BRep_Tool::IsGeometric(aE));
  if (bRet) {
    return bRet;
  }
  //
  aC3D=BRep_Tool::Curve(aE, aT1, aT2);
  TopExp::Vertices(aE, aV1, aV2);
  aT1=BRep_Tool::Parameter(aV1, aE);
  aT2=BRep_Tool::Parameter(aV2, aE);
  if (aT2<aT1) {
    aTmp=aT1;
    aT1=aT2;
    aT2=aTmp;
  }
  //
  aR.SetFirst(aT1);
  aR.SetLast(aT2);
  IntTools_ShrunkRange aSR (aE, aV1, aV2, aR, aCtx);
  iErr=aSR.ErrorStatus();
  bRet=!aSR.IsDone();
  //
  return bRet;
}
//=======================================================================
// function: PutPaveOnCurve
// purpose:
//=======================================================================
void NMTTools_PaveFiller::PutPaveOnCurve(const BOPTools_PaveSet& aPaveSet,
                                         const Standard_Real aTolR3D,
                                         BOPTools_Curve& aBC)
{
  Standard_Integer nV;
  Standard_Boolean bIsVertexOnLine;
  Standard_Real aT;
  BOPTools_ListIteratorOfListOfPave anIt;
  Bnd_Box aBBC;
  GeomAdaptor_Curve aGAC;
  //
  const IntTools_Curve& aC=aBC.Curve();
  Handle (Geom_Curve) aC3D= aC.Curve();
  aGAC.Load(aC3D);
  BndLib_Add3dCurve::Add(aGAC, aTolR3D, aBBC);
  //
  const BOPTools_ListOfPave& aLP=aPaveSet.Set();
  anIt.Initialize(aLP);
  for (; anIt.More(); anIt.Next()) {
    const BOPTools_Pave& aPave=anIt.Value();
    //
    nV=aPave.Index();
    const TopoDS_Vertex aV=TopoDS::Vertex(myDS->Shape(nV));
    //
    Bnd_Box aBBV;
    BRepBndLib::Add(aV, aBBV);
    if (aBBC.IsOut(aBBV)){
      continue;
    }
    //
    bIsVertexOnLine=myContext->IsVertexOnLine(aV, aC, aTolR3D, aT);
    //
    //
    if (bIsVertexOnLine) {
      BOPTools_Pave aPaveNew(nV, aT, BooleanOperations_SurfaceSurface);
      BOPTools_PaveSet& aPS=aBC.Set();
      aPS.Append(aPaveNew);
      //<-B
    }
  }
}
//
//=======================================================================
//function : FillFaceInfo
//purpose  :
//=======================================================================
void NMTTools_PaveFiller::FillFaceInfo()
{
  Standard_Integer i, aNbS, aNbFFs, nF, aNbVFs, aNbEFs, j, n1, n2, nX, aNbF;
  TopAbs_ShapeEnum aType;
  TopoDS_Shape aS;
  TColStd_ListIteratorOfListOfInteger aItF;
  BOPTools_ListIteratorOfListOfPaveBlock anItPB;
  NMTTools_DataMapIteratorOfDataMapOfIntegerFaceInfo aItMFI;
  NMTTools_ListIteratorOfListOfCommonBlock aItCB;
  //
  myFaceInfo.Clear();
  //
  BOPTools_CArray1OfSSInterference& aFFs=myIP->SSInterferences();
  BOPTools_CArray1OfVSInterference& aVFs=myIP->VSInterferences();
  BOPTools_CArray1OfESInterference& aEFs=myIP->ESInterferences();
  //
  aNbFFs=aFFs.Extent();
  if (!aNbFFs) {
    return;
  }
  //
  // 0.
  for (i=1; i<=aNbFFs; ++i) {
    NMTTools_FaceInfo aFI;
    //
    BOPTools_SSInterference& aFFi=aFFs(i);
    aFFi.Indices(n1, n2);
    myFaceInfo.Bind(n1, aFI);
    myFaceInfo.Bind(n2, aFI);
  }
  //
  // 1.
  aNbS=myDS->NumberOfShapesOfTheObject();
  for (i=1; i<=aNbS; ++i) {
    aS=myDS->Shape(i);
    aType=aS.ShapeType();
    if (aType==TopAbs_EDGE) {
      const NMTTools_ListOfCommonBlock& aLCB=myCommonBlockPool(myDS->RefEdge(i));
      aItCB.Initialize(aLCB);
      for (; aItCB.More(); aItCB.Next()) {
	const NMTTools_CommonBlock& aCB=aItCB.Value();
	const BOPTools_PaveBlock &aPB1=aCB.PaveBlock1();
	const TColStd_ListOfInteger& aLF=aCB.Faces();
	aNbF=aLF.Extent();
	if (!aNbF) {
	  continue;
	}
	//
	aItF.Initialize(aLF);
	for (; aItF.More(); aItF.Next()) {
	  nF=aItF.Value();
	  if (!myFaceInfo.IsBound(nF)) {
	    continue;
	  }
	  //
	  NMTTools_FaceInfo& aFI=myFaceInfo.ChangeFind(nF);
	  aFI.ChangePaveBlocksIn().Add(aPB1);
	  //
	  n1=aPB1.Pave1().Index();
	  n2=aPB1.Pave2().Index();
	  aFI.ChangeVerticesIn().Add(n1);
	  aFI.ChangeVerticesIn().Add(n2);
	}
      }
    }// if (aType==TopAbs_EDGE) {
    else if (aType==TopAbs_FACE) {
      if (!myFaceInfo.IsBound(i)) {
	continue;
      }
      //
      BOPTools_ListOfPaveBlock aLPBOn;
      //
      nF=i;
      NMTTools_FaceInfo& aFI=myFaceInfo.ChangeFind(nF);
      //
      RealSplitsFace(nF, aLPBOn);
      //
      anItPB.Initialize(aLPBOn);
      for (; anItPB.More(); anItPB.Next()) {
	const BOPTools_PaveBlock &aPB=anItPB.Value();
	aFI.ChangePaveBlocksOn().Add(aPB);
	//
	n1=aPB.Pave1().Index();
	n2=aPB.Pave2().Index();
	aFI.ChangeVerticesOn().Add(n1);
	aFI.ChangeVerticesOn().Add(n2);
      }
      //
    }// else if (aType==TopAbs_FACE) {
  }// for (i=1; i<=aNbS; ++i) {
  //
  // 2.
  aItMFI.Initialize(myFaceInfo);
  for (; aItMFI.More(); aItMFI.Next()) {
    nF=aItMFI.Key();
    NMTTools_FaceInfo& aFI=*((NMTTools_FaceInfo*)&aItMFI.Value());
    //
    aFI.SetIndex(nF);
    //
    //
    // 2.1 aVFs
    aNbVFs=aVFs.Extent();
    for (j=1; j<=aNbVFs; ++j) {
      BOPTools_VSInterference& aVFj=aVFs(j);
      aVFj.Indices(n1, n2);
      if (nF==n1) {
	aFI.ChangeVerticesIn().Add(n2);
      }
      else if (nF==n2){
	aFI.ChangeVerticesIn().Add(n1);
      }
    }//  for (j=1; j<=aNbVFs; ++j) {
    //
    // 2.2 aEFs
    aNbEFs=aEFs.Extent();
    for (j=1; j<=aNbEFs; ++j) {
      BOPTools_ESInterference& aEFj=aEFs(j);
      aEFj.Indices(n1, n2);
      if (!(nF==n1 || nF==n2)) {
	continue;
      }
      //
      nX=aEFj.NewShape();
      if (nX<1) {
	continue;
      }
      //
      aS=myDS->Shape(nX);
      aType=aS.ShapeType();
      if (aType!=TopAbs_VERTEX) {
	continue;
      }
      //
      aFI.ChangeVerticesIn().Add(nX);
    }//  for (j=1; j<=aNbEFs; ++j) {
  }// for (; aItMFI.More(); aItMFI.Next()) {
}


#include <gp_Pnt.hxx>
#include <gp_Dir.hxx>
#include <gp_Vec.hxx>
#include <GeomAPI_ProjectPointOnSurf.hxx>
//=======================================================================
//function : CorrectTolR3D
//purpose  : Attempt to correct the value of tolerance aTolR3D for
//           the intersection curve in order to
//           compel it to pass through the sticks.
//           Prerequisites:
//             2. The are based on B-Spline surfaces;
//             1. There is at least the one intersection curve;
//             2. The faces have stick vertices to catch the curve;
//             3. The intersection angle is rather small (0.7-7 deg)
//
//=======================================================================
void NMTTools_PaveFiller::CorrectTolR3D(const BOPTools_SSInterference& aFF,
					const TColStd_MapOfInteger& aMVStick,
					Standard_Real& aTolR3D)

{
  Standard_Boolean bHasBounds;
  Standard_Integer i, nF[2], nV, aNbCurves;
  Standard_Real aT1, aT2, aU, aV, aT, aA, aTolV, aTolVmax;
  Standard_Real aTolR, aTolTresh, aAmin, aAmax;
  TColStd_MapIteratorOfMapOfInteger aIt;
  gp_Pnt aP, aP1, aP2;
  gp_Dir aDN[2];
  gp_Vec aVT;
  Handle(Geom_Surface) aS[2];
  Handle(Geom_Curve) aC3D;
  GeomAdaptor_Surface aGAS;
  GeomAbs_SurfaceType aType;
  TopoDS_Face aF[2];
  //
  aTolTresh=0.0005;
  aAmin=0.012;// 0.7-7 deg
  aAmax=0.12;
  //
  if (!aMVStick.Extent()) {
    return;
  }
  //
  BOPTools_SSInterference& aFFi=*((BOPTools_SSInterference*)&aFF);
  BOPTools_SequenceOfCurves& aSCvs=aFFi.Curves();
  aNbCurves=aSCvs.Length();
  if (aNbCurves!=1){
    return;
  }
  //
  aFFi.Indices(nF[0], nF[1]);
  for (i=0; i<2; ++i) {
    aF[i]=*((TopoDS_Face*)(&myDS->Shape(nF[i])));
    aS[i]=BRep_Tool::Surface(aF[i]);
    aGAS.Load(aS[i]);
    aType=aGAS.GetType();
    if (aType!=GeomAbs_BSplineSurface) {
      return;
    }
  }
  //
  BOPTools_Curve& aBC=aSCvs(1);
  const IntTools_Curve& aIC=aBC.Curve();
  bHasBounds=aIC.HasBounds();
  if (!bHasBounds){
    return;
  }
  //
  aIC.Bounds (aT1, aT2, aP1, aP2);
  aT=IntTools_Tools::IntermediatePoint(aT1, aT2);
  aC3D=aIC.Curve();
  aC3D->D0(aT, aP);
  //
  for (i=0; i<2; ++i) {
    GeomAPI_ProjectPointOnSurf& aPPS=myContext->ProjPS(aF[i]);
    aPPS.Perform(aP);
    aPPS.LowerDistanceParameters(aU, aV);
    BOPTools_Tools3D::GetNormalToSurface(aS[i], aU, aV, aDN[i]);
  }
  //
  aA=aDN[0].Angle(aDN[1]);
  aA=fabs(aA);
  if (aA > 0.5*M_PI) {
    aA = M_PI - aA;
  }
  //
  if (aA<aAmin || aA>aAmax) {
    return;
  }
  //
  aTolVmax=-1.;
  aIt.Initialize(aMVStick);
  for (; aIt.More(); aIt.Next()) {
    nV=aIt.Key();
    const TopoDS_Vertex& aV=*((TopoDS_Vertex*)(&myDS->Shape(nV)));
    aTolV=BRep_Tool::Tolerance(aV);
    if (aTolV>aTolVmax) {
      aTolVmax=aTolV;
    }
  }
  //

  aTolR=aTolVmax/aA;
  if (aTolR<aTolTresh) {
    aTolR3D=aTolR;
  }
}

//modified by NIZNHY-PKV Wed Sep 14 13:21:13 2011f
#if OCC_VERSION_LARGE > 0x06050100 // For OCCT6.5.2 and higher
//=======================================================================
// function: PutClosingPaveOnCurve
// purpose:
//=======================================================================
void NMTTools_PaveFiller::PutClosingPaveOnCurve(BOPTools_Curve& aBC,
						BOPTools_SSInterference& aFFi)
{
  Standard_Boolean bIsClosed, bHasBounds, bAdded;
  Standard_Integer nVC, j;
  Standard_Real aT[2], aTolR3D, aTC, dT, aTx;
  gp_Pnt aP[2] ;
  BOPTools_Pave aPVx;
  BOPTools_ListIteratorOfListOfPave aItLP;
  //
  const IntTools_Curve& aIC=aBC.Curve();
  const Handle (Geom_Curve)& aC3D=aIC.Curve();
  if(aC3D.IsNull()) {
    return;
  }
  //
  bIsClosed=IntTools_Tools::IsClosed(aC3D);
  if (!bIsClosed) {
    return;
  }
  //
  bHasBounds=aIC.HasBounds ();
  if (!bHasBounds){
    return;
  }
  //
  bAdded=Standard_False;
  dT=Precision::PConfusion();
  aTolR3D=aFFi.TolR3D();
  aIC.Bounds (aT[0], aT[1], aP[0], aP[1]);
  //
  BOPTools_PaveSet& aFFiPS=aFFi.NewPaveSet();
  BOPTools_PaveSet& aCPS=aBC.Set();
  //
  const BOPTools_ListOfPave& aLP=aCPS.Set();
  aItLP.Initialize(aLP);
  for (; aItLP.More() && !bAdded; aItLP.Next()) {
    const BOPTools_Pave& aPC=aItLP.Value();
    nVC=aPC.Index();
    const TopoDS_Vertex aVC=TopoDS::Vertex(myDS->Shape(nVC));
    aTC=aPC.Param();
    //
    for (j=0; j<2; ++j) {
      if (fabs(aTC-aT[j]) < dT) {
	aTx=(!j) ? aT[1] : aT[0];
	aPVx.SetIndex(nVC);
	aPVx.SetParam(aTx);
	//
	aCPS.Append(aPVx);
	aFFiPS.Append(aPVx);
	//
	bAdded=Standard_True;
	break;
      }
    }
  }
}
#endif // OCC_VERSION_LARGE > 0x06050100 // For OCCT6.5.2 and higher
//modified by NIZNHY-PKV Wed Sep 14 13:21:17 2011t
