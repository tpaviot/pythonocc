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

// File:        GEOMAlgo_Gluer2.hxx
// Author:      Peter KURNEV

#ifndef _GEOMAlgo_Gluer2_HeaderFile
#define _GEOMAlgo_Gluer2_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Boolean.hxx>

#include <TopAbs_ShapeEnum.hxx>

#include <TopTools_DataMapOfShapeListOfShape.hxx>
#include <TopTools_DataMapOfShapeShape.hxx>

#include <NMTTools_CoupleOfShape.hxx>
#include <NMTTools_ListOfCoupleOfShape.hxx>

#include <GEOMAlgo_GluerAlgo.hxx>
#include <GEOMAlgo_BuilderShape.hxx>
#include <GEOMAlgo_GlueDetector.hxx>

//=======================================================================
//class : GEOMAlgo_Gluer2
//purpose  :
//=======================================================================
class GEOMAlgo_Gluer2  : public GEOMAlgo_GluerAlgo,
                         public GEOMAlgo_BuilderShape {
public:

  Standard_EXPORT
    GEOMAlgo_Gluer2();

  Standard_EXPORT
    virtual ~GEOMAlgo_Gluer2();

  Standard_EXPORT
    void SetShapesToGlue(const TopTools_DataMapOfShapeListOfShape& aM) ;

  Standard_EXPORT
    const TopTools_DataMapOfShapeListOfShape& ShapesToGlue() const;

  Standard_EXPORT
    void SetKeepNonSolids(const Standard_Boolean theFlag) ;

  Standard_EXPORT
    Standard_Boolean KeepNonSolids() const;

  Standard_EXPORT   virtual  void Clear() ;

  Standard_EXPORT
    virtual  void Perform() ;

  Standard_EXPORT
    virtual  void CheckData() ;

  Standard_EXPORT
    void Detect() ;

  Standard_EXPORT
    const TopTools_DataMapOfShapeListOfShape& ShapesDetected() const;

  Standard_EXPORT
    const TopTools_DataMapOfShapeListOfShape& ImagesToWork() const;

  Standard_EXPORT
    virtual const TopTools_ListOfShape& Generated(const TopoDS_Shape& theS) ;

  Standard_EXPORT
    virtual const TopTools_ListOfShape& Modified(const TopoDS_Shape& theS) ;

  Standard_EXPORT
    virtual Standard_Boolean IsDeleted(const TopoDS_Shape& theS) ;

  Standard_EXPORT
    static void MakeVertex(const TopTools_ListOfShape& theLV,
                           TopoDS_Vertex& theV) ;

  Standard_EXPORT
    static void MapBRepShapes(const TopoDS_Shape& theS,
                              TopTools_MapOfShape& theM) ;

  Standard_EXPORT
    static void MapShapes(const TopoDS_Shape& theS,
                          TopTools_MapOfShape& theM) ;

//modified by NIZNHY-PKV Tue Mar 13 12:23:20 2012f
  Standard_EXPORT
    const TopTools_IndexedDataMapOfShapeListOfShape& StickedShapes();
//modified by NIZNHY-PKV Tue Mar 13 12:23:26 2012t
//------------------------------------------------
protected:
  Standard_EXPORT
    void PerformShapesToWork() ;

  Standard_EXPORT
    void FillVertices() ;

  Standard_EXPORT
    void FillEdges() ;

  Standard_EXPORT
    void FillWires() ;

  Standard_EXPORT
    void FillFaces() ;

  Standard_EXPORT
    void FillShells() ;

  Standard_EXPORT
    void FillSolids() ;

  Standard_EXPORT
    void FillCompSolids() ;

  Standard_EXPORT
    void FillCompounds() ;

  Standard_EXPORT
    void BuildResult() ;

  Standard_EXPORT
    void FillBRepShapes(const TopAbs_ShapeEnum theType) ;

  Standard_EXPORT
    void FillContainers(const TopAbs_ShapeEnum theType) ;

  Standard_EXPORT
    void FillCompound(const TopoDS_Shape& theC) ;

  Standard_EXPORT
    virtual  void PrepareHistory() ;

  Standard_EXPORT
    Standard_Boolean HasImage(const TopoDS_Shape& theC) ;

  Standard_EXPORT
    void MakeBRepShapes(const TopoDS_Shape& theS,
                        TopoDS_Shape& theSnew) ;

  Standard_EXPORT
    void MakeEdge(const TopoDS_Edge& theE,
                  TopoDS_Edge& theEnew) ;

  Standard_EXPORT
    void MakeFace(const TopoDS_Face& theF,
                  TopoDS_Face& theFnew) ;

  Standard_EXPORT
    void TreatPair(const NMTTools_CoupleOfShape& theCS,
                   NMTTools_ListOfCoupleOfShape& theLCS) ;

protected:
  TopTools_DataMapOfShapeListOfShape myShapesToGlue;
  TopTools_DataMapOfShapeListOfShape myImagesDetected;
  TopTools_DataMapOfShapeShape myOriginsDetected;
  TopTools_DataMapOfShapeListOfShape myImagesToWork;
  TopTools_DataMapOfShapeShape myOriginsToWork;
  Standard_Boolean myKeepNonSolids;
  //modified by NIZNHY-PKV Tue Mar 13 13:30:40 2012f
  GEOMAlgo_GlueDetector myDetector;
  //modified by NIZNHY-PKV Tue Mar 13 13:30:43 2012t
private:
};
#endif
