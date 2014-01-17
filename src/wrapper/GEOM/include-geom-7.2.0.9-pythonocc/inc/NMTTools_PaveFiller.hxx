// Copyright (C) 2007-2013  CEA/DEN, EDF R&D, OPEN CASCADE
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

// File:        NMTTools_PaveFiller.hxx
// Created:     Fri Dec  5 14:58:54 2003
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _NMTTools_PaveFiller_HeaderFile
#define _NMTTools_PaveFiller_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <NMTDS_PShapesDataStructure.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_Integer.hxx>
#include <XBOPTools_PavePool.hxx>
#include <NMTTools_CommonBlockPool.hxx>
#include <XBOPTools_SplitShapesPool.hxx>
#include <Handle_XIntTools_Context.hxx>
#include <XBOPTools_SSIntersectionAttribute.hxx>
#include <NMTTools_IndexedDataMapOfIndexedMapOfInteger.hxx>
#include <TColStd_DataMapOfIntegerInteger.hxx>
#include <NMTDS_PIterator.hxx>
#include <TopoDS_Shape.hxx>
#include <NMTDS_PInterfPool.hxx>
#include <NMTTools_DataMapOfIntegerFaceInfo.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <NMTTools_CommonBlock.hxx>
#include <Standard_Real.hxx>

#include <TopoDS_Shape.hxx>
#include <XBOPTools_Pave.hxx>
#include <XIntTools_ShrunkRange.hxx>
#include <XBOPTools_PavePool.hxx>
#include <NMTTools_CommonBlockPool.hxx>
#include <XBOPTools_SplitShapesPool.hxx>
#include <XBOPTools_PaveBlock.hxx>
#include <TopoDS_Vertex.hxx>
#include <NMTTools_ListOfCommonBlock.hxx>
#include <XBOPTools_IDMapOfPaveBlockIMapOfPaveBlock.hxx>
#include <XBOPTools_IDMapOfPaveBlockIMapOfInteger.hxx>
#include <XBooleanOperations_IndexedDataMapOfShapeInteger.hxx>
#include <TColStd_ListOfInteger.hxx>
#include <XBOPTools_ListOfPaveBlock.hxx>
#include <TopoDS_Face.hxx>
#include <XBOPTools_PaveSet.hxx>
#include <XBOPTools_Curve.hxx>
#include <XBOPTools_SSInterference.hxx>
#include <gp_Pnt.hxx>
#include <NMTTools_IndexedDataMapOfIndexedMapOfInteger.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopTools_DataMapOfShapeShape.hxx>


/*
class TopoDS_Shape;
class XBOPTools_Pave;
class XIntTools_ShrunkRange;
class XBOPTools_PavePool;
class NMTTools_CommonBlockPool;
class XBOPTools_SplitShapesPool;
class XBOPTools_PaveBlock;
class TopoDS_Vertex;
class NMTTools_ListOfCommonBlock;
class XBOPTools_IDMapOfPaveBlockIMapOfPaveBlock;
class XBOPTools_IDMapOfPaveBlockIMapOfInteger;
class XBooleanOperations_IndexedDataMapOfShapeInteger;
class TColStd_ListOfInteger;
class XBOPTools_ListOfPaveBlock;
class TopoDS_Face;
class XBOPTools_PaveSet;
class XBOPTools_Curve;
class XBOPTools_SSInterference;
class gp_Pnt;
class NMTTools_IndexedDataMapOfIndexedMapOfInteger;
class TopTools_ListOfShape;
class TopoDS_Edge;
class TopTools_DataMapOfShapeShape;
class TCoLSTD_MapOfInteger;
*/


//=======================================================================
//function : NMTTools_PaveFiller
//purpose  :
//=======================================================================
class NMTTools_PaveFiller  {
 public:
  Standard_EXPORT
    NMTTools_PaveFiller();

  Standard_EXPORT
  virtual ~NMTTools_PaveFiller();

  Standard_EXPORT
    void SetCompositeShape(const TopoDS_Shape& aS) ;

  Standard_EXPORT
    const TopoDS_Shape& CompositeShape() const;

  Standard_EXPORT
    NMTDS_PShapesDataStructure DS() ;

  Standard_EXPORT
    NMTDS_PIterator DSIt() ;

  Standard_EXPORT
    NMTDS_PInterfPool IP() ;

  Standard_EXPORT
    virtual  void Perform() ;

  Standard_EXPORT
    Standard_Boolean IsDone() const;

  Standard_EXPORT
    const Handle_XIntTools_Context& Context() const;

  Standard_EXPORT
    const XBOPTools_PavePool& PavePool() const;

  Standard_EXPORT
    XBOPTools_PavePool& ChangePavePool() ;

  Standard_EXPORT
    const NMTTools_CommonBlockPool& CommonBlockPool() const;

  Standard_EXPORT
    NMTTools_CommonBlockPool& ChangeCommonBlockPool() ;

  Standard_EXPORT
    const XBOPTools_SplitShapesPool& SplitShapesPool() const;

  Standard_EXPORT
    XBOPTools_SplitShapesPool& ChangeSplitShapesPool() ;

  Standard_EXPORT
    Standard_Integer FindSDVertex(const Standard_Integer nV) const;

  Standard_EXPORT
    Standard_Integer SplitsInFace(const Standard_Integer aBid,
                                  const Standard_Integer nF1,
                                  const Standard_Integer nF2,
                                  TColStd_ListOfInteger& aLs) ;

  Standard_EXPORT
    Standard_Integer SplitsInFace(const Standard_Integer nE1,
                                  const Standard_Integer nF2,
                                  TColStd_ListOfInteger& aLs) ;

  Standard_EXPORT
    Standard_Integer SplitsOnEdge(const Standard_Integer nE1,
                                  const Standard_Integer nE2,
                                  TColStd_ListOfInteger& aLs) ;

  Standard_EXPORT
    Standard_Integer SplitsOnFace(const Standard_Integer nE1,
                                  const Standard_Integer nF2,
                                  TColStd_ListOfInteger& aLs) ;

  Standard_EXPORT
    Standard_Integer SplitsOnFace(const Standard_Integer aBid,
                                  const Standard_Integer nF1,
                                  const Standard_Integer nF2,
                                  TColStd_ListOfInteger& aLs) ;

  Standard_EXPORT
    Standard_Integer SplitsInFace(const Standard_Integer aBid,
                                  const Standard_Integer nF1,
                                  const Standard_Integer nF2,
                                  XBOPTools_ListOfPaveBlock& aLs) ;

  Standard_EXPORT
    Standard_Integer SplitsInFace(const Standard_Integer nE1,
                                  const Standard_Integer nF2,
                                  XBOPTools_ListOfPaveBlock& aLs) ;

  Standard_EXPORT
    Standard_Integer SplitsOnEdge(const Standard_Integer nE1,
                                  const Standard_Integer nE2,
                                  XBOPTools_ListOfPaveBlock& aLs) ;

  Standard_EXPORT
    Standard_Integer SplitsOnFace(const Standard_Integer nE1,
                                  const Standard_Integer nF2,
                                  XBOPTools_ListOfPaveBlock& aLs) ;

  Standard_EXPORT
    Standard_Integer SplitsOnFace(const Standard_Integer aBid,
                                  const Standard_Integer nF1,
                                  const Standard_Integer nF2,
                                  XBOPTools_ListOfPaveBlock& aLs) ;

  Standard_EXPORT
    Standard_Integer SplitsFace(const Standard_Integer nF2,
                                XBOPTools_ListOfPaveBlock& aLs) ;

  Standard_EXPORT
    Standard_Integer SplitsFace(const Standard_Integer nF2,
                                TColStd_ListOfInteger& aLs) ;

  Standard_EXPORT
    Standard_Integer CommonBlocksFace(const Standard_Integer nF,
                                      NMTTools_ListOfCommonBlock& aLCB) ;

  Standard_EXPORT
    void PrepareFace(const Standard_Integer nF,
                     TopoDS_Face& aF) ;

  Standard_EXPORT
    const XBOPTools_PaveBlock& RealPaveBlock(const XBOPTools_PaveBlock& aPB) ;

  Standard_EXPORT
    const XBOPTools_PaveBlock& RealPaveBlock(const XBOPTools_PaveBlock& aPB,
                                            TColStd_ListOfInteger& aLB,
                                            Standard_Integer& aIsCommonBlock) ;

  Standard_EXPORT
    void RealSplitsFace(const Standard_Integer nF2,
                        XBOPTools_ListOfPaveBlock& aLs) ;

  Standard_EXPORT
    Standard_Boolean HasRealSplitsInOnFace(const Standard_Integer nF1,
                                           const Standard_Integer nF2) ;

  Standard_EXPORT
    void RealSplitsInFace(const Standard_Integer aBid,
                          const Standard_Integer nF1,
                          const Standard_Integer nF2,
                          XBOPTools_ListOfPaveBlock& aLs) ;

  Standard_EXPORT
    void RealSplitsInFace(const Standard_Integer nE1,
                          const Standard_Integer nF2,
                          XBOPTools_ListOfPaveBlock& aLs) ;

  Standard_EXPORT
    void RealSplitsInFace(const Standard_Integer nF1,
                          XBOPTools_ListOfPaveBlock& aLPB) ;

  Standard_EXPORT
    void RealSplitsOnEdge(const Standard_Integer nE1,
                          const Standard_Integer nE2,
                          XBOPTools_ListOfPaveBlock& aLs) ;

  Standard_EXPORT
    void RealSplitsOnFace(const Standard_Integer nE1,
                          const Standard_Integer nF2,
                          XBOPTools_ListOfPaveBlock& aLs) ;

  Standard_EXPORT
    void RealSplitsOnFace(const Standard_Integer aBid,
                          const Standard_Integer nF1,
                          const Standard_Integer nF2,
                          XBOPTools_ListOfPaveBlock& aLs) ;

  Standard_EXPORT
    void PrepareSetForFace(const Standard_Integer nF1,
                           const Standard_Integer nF2,
                           const XBOPTools_ListOfPaveBlock& aLPB,
                           XBOPTools_PaveSet& aPSF) ;

  Standard_EXPORT
    void PutPaveOnCurve(const XBOPTools_PaveSet& aPSF,
                        const Standard_Real aTol,
                        XBOPTools_Curve& aBC) ;

  Standard_EXPORT
    void PutBoundPaveOnCurve(XBOPTools_Curve& aBC,
                             XBOPTools_SSInterference& aFF) ;

  Standard_EXPORT
    void PutBoundPaveOnCurve(const gp_Pnt& aP,
                             const Standard_Real aT,
                             XBOPTools_Curve& aBC,
                             XBOPTools_SSInterference& aFF) ;

  Standard_EXPORT
    Standard_Boolean FindPave(const gp_Pnt& aP,
                              const Standard_Real aTpV,
                              const XBOPTools_PaveSet& aPS,
                              XBOPTools_Pave& aPV) ;

  Standard_EXPORT
    Standard_Integer CheckIntermediatePoint(const XBOPTools_PaveBlock& aPB,
                                            const XBOPTools_PaveBlock& aPBR,
                                            const Standard_Real aTol) ;

  Standard_EXPORT
    Standard_Boolean IsExistingPaveBlock(const XBOPTools_PaveBlock& aPB,
                                         const XBOPTools_ListOfPaveBlock& aLPB,
                                         const Standard_Real aTol) ;

  Standard_EXPORT
    void MakePCurves() ;

  Standard_EXPORT
    const NMTTools_IndexedDataMapOfIndexedMapOfInteger& AloneVertices() const;

  Standard_EXPORT
    Standard_Boolean IsExistingPaveBlock(const XBOPTools_PaveBlock& aPB,
                                         const TopTools_ListOfShape& aLPB,
                                         const Standard_Real aTol) ;

  Standard_EXPORT
    Standard_Boolean CheckCoincidence(const XBOPTools_PaveBlock& aPB,
                                      const XBOPTools_ListOfPaveBlock& aLPB) ;

  Standard_EXPORT
    Standard_Integer CheckIntermediatePoint(const XBOPTools_PaveBlock& aPB,
                                            const TopoDS_Edge& aE,
                                            const Standard_Real aTol) ;

  Standard_EXPORT
    void SharedEdges(const Standard_Integer nF1,
                     const Standard_Integer nF2,
                     TColStd_ListOfInteger& aLNE,
                     TopTools_ListOfShape& aLSE) ;

  Standard_EXPORT
    void FuseVertices(const TopoDS_Shape& aC,
                      TopTools_DataMapOfShapeShape& aDMVV) const;

  Standard_EXPORT
    void TreatPaveBlocks(NMTTools_ListOfCommonBlock& theLCB) ;

  Standard_EXPORT
    XBOPTools_PavePool& ChangePavePoolNew() ;

  Standard_EXPORT
    Standard_Boolean CheckCoincidence(const XBOPTools_PaveBlock& aPB1,
                                      const XBOPTools_PaveBlock& aPB2) ;

  Standard_EXPORT
    void PutClosingPaveOnCurve(XBOPTools_Curve& aBC,
                               XBOPTools_SSInterference& aFF) ;

 protected:
  Standard_EXPORT
    virtual  void Init() ;

  Standard_EXPORT
    virtual  void Clear() ;

  Standard_EXPORT
    virtual  void PerformVV() ;

  Standard_EXPORT
    virtual  void PerformVE() ;

  Standard_EXPORT
    virtual  void PerformVF() ;

  Standard_EXPORT
    virtual  void PerformEE() ;

  Standard_EXPORT
    virtual  void PerformEF() ;

  Standard_EXPORT
    virtual  void PerformFF() ;

  Standard_EXPORT
    void MakeSplitEdges() ;

  Standard_EXPORT
    virtual  void PreparePaveBlocks(const TopAbs_ShapeEnum aType1,
                                    const TopAbs_ShapeEnum aType2) ;

  Standard_EXPORT
    void CorrectShrunkRanges(const Standard_Integer aSide,
                             const XBOPTools_Pave& aPave,
                             XIntTools_ShrunkRange& aSR) ;

  Standard_EXPORT
    virtual  void PreparePaveBlocks(const Standard_Integer anE) ;

  Standard_EXPORT
    virtual  void PrepareEdges() ;

  Standard_EXPORT
    Standard_Boolean IsSuccessorsComputed(const Standard_Integer iF1,
                                          const Standard_Integer iF2) const;

  Standard_EXPORT
    Standard_Boolean IsBlocksCoinside(const XBOPTools_PaveBlock& aPB1,
                                      const XBOPTools_PaveBlock& aPB2) const;

  Standard_EXPORT
    void RefinePavePool() ;

  Standard_EXPORT
    Standard_Integer CheckFacePaves(const TopoDS_Vertex& aV,
                                    const Standard_Integer nF) ;

  Standard_EXPORT
    void ReplaceCommonBlocks(const NMTTools_ListOfCommonBlock& aLCB) ;

  Standard_EXPORT
    void RemoveCommonBlocks(const NMTTools_ListOfCommonBlock& aLCB) ;

  Standard_EXPORT
    void SplitCommonBlocks(const NMTTools_ListOfCommonBlock& aLCB) ;

  Standard_EXPORT
    void SplitCommonBlock(const NMTTools_CommonBlock& aCB,NMTTools_ListOfCommonBlock& aLCB) ;

  Standard_EXPORT
    void EECommonBlocks(const XBOPTools_IDMapOfPaveBlockIMapOfPaveBlock& aM) ;

  Standard_EXPORT
    void EFCommonBlocks(const XBOPTools_IDMapOfPaveBlockIMapOfInteger& aMapCB) ;

  Standard_EXPORT
    void EENewVertices(const XBooleanOperations_IndexedDataMapOfShapeInteger& aM) ;

  Standard_EXPORT
    void EENewVertices(const TopoDS_Vertex& aV,
                       const XBooleanOperations_IndexedDataMapOfShapeInteger& aM) ;

  Standard_EXPORT
    void EFNewVertices(const XBooleanOperations_IndexedDataMapOfShapeInteger& aM) ;

  Standard_EXPORT
     void EFNewVertices(const TopoDS_Vertex& aV,
                        const XBooleanOperations_IndexedDataMapOfShapeInteger& aM) ;

  Standard_EXPORT
    void UpdateCommonBlocks() ;

  Standard_EXPORT
    void UpdateCommonBlocks(const Standard_Integer aI) ;

  Standard_EXPORT
    void UpdatePaveBlocks() ;

  Standard_EXPORT
    Standard_Integer SplitIndex(const XBOPTools_PaveBlock& aPB) const;

  Standard_EXPORT
    void MakeBlocks() ;

  Standard_EXPORT
    void PerformVF1() ;

  Standard_EXPORT
    void MakeAloneVertices() ;

  Standard_EXPORT
    void FillFaceInfo() ;

  Standard_EXPORT
    void CorrectTolR3D(const XBOPTools_SSInterference& aFF,
                       const TColStd_MapOfInteger& aMVStick,
                       Standard_Real& aTolR3D) ;


  NMTDS_PShapesDataStructure myDS;
  Standard_Boolean myIsDone;
  Standard_Integer myNbSources;
  Standard_Integer myNbEdges;
  XBOPTools_PavePool myPavePool;
  XBOPTools_PavePool myPavePoolNew;
  NMTTools_CommonBlockPool myCommonBlockPool;
  XBOPTools_SplitShapesPool mySplitShapesPool;
  Handle_XIntTools_Context myContext;
  XBOPTools_SSIntersectionAttribute mySectionAttribute;
  NMTTools_IndexedDataMapOfIndexedMapOfInteger myAloneVertices;
  TColStd_DataMapOfIntegerInteger myVSD;
  NMTDS_PIterator myDSIt;
  TopoDS_Shape myCompositeShape;
  NMTDS_PInterfPool myIP;
  NMTTools_DataMapOfIntegerFaceInfo myFaceInfo;


  // private:

};
#endif
