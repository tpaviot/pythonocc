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
// File:        GEOMAlgo_Builder.cxx
// Created:
// Author:      Peter KURNEV
//
#ifndef _GEOMAlgo_Builder_HeaderFile
#define _GEOMAlgo_Builder_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <NMTTools_PPaveFiller.hxx>
#include <TopTools_ListOfShape.hxx>
#include <Standard_Integer.hxx>
#include <TopTools_MapOfShape.hxx>
#include <BRepAlgo_Image.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <TopTools_IndexedDataMapOfShapeShape.hxx>
#include <GEOMAlgo_BuilderShape.hxx>
#include <NMTTools_PaveFiller.hxx>
#include <Standard_Boolean.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <TopoDS_Shape.hxx>
#include <BRepAlgo_Image.hxx>

//=======================================================================
//function : GEOMAlgo_Builder
//purpose  :
//=======================================================================
class GEOMAlgo_Builder  : public GEOMAlgo_BuilderShape
{
 public:
  //!  Empty constructor <br>
  Standard_EXPORT
    GEOMAlgo_Builder();

  Standard_EXPORT
    virtual ~GEOMAlgo_Builder();

  //!  Performs calculations <br>
  Standard_EXPORT
    virtual  void Perform() ;

  //!  Performs calculations using prepared PaveFiller <br>
  //!           object theDSF <br>
  Standard_EXPORT
    virtual  void PerformWithFiller(const NMTTools_PaveFiller& theDSF) ;

  //!  Adds argument theShape of the operation <br>
  Standard_EXPORT
    virtual  void AddShape(const TopoDS_Shape& theShape) ;

  //!  Clears internal fields and arguments <br>
  Standard_EXPORT
    virtual  void Clear() ;

  //!  Returns the arguments of the operation <br>
  Standard_EXPORT
    const TopTools_ListOfShape& Shapes() const;

  //! Returns the  list of shapes generated from the <br>
  //!          shape theS. <br>
  Standard_EXPORT
    virtual const TopTools_ListOfShape& Generated(const TopoDS_Shape& theS) ;

  //! Returns the list of shapes modified from the shape <br>
  //!          theS. <br>
  Standard_EXPORT
    virtual const TopTools_ListOfShape& Modified(const TopoDS_Shape& theS) ;

  //! Returns true if the shape theS has been deleted. <br>
  Standard_EXPORT
    virtual  Standard_Boolean IsDeleted(const TopoDS_Shape& theS) ;

  //!  Adds arguments of the operation as <br>
  //!           shapes of upper level of container shape theShape <br>
  Standard_EXPORT
    void AddCompound(const TopoDS_Shape& theShape) ;

  //! Returns list of arguments of type theType <br>
  Standard_EXPORT
    const TopTools_ListOfShape& Shapes1(const Standard_Integer theType) const;

  //! Returns image shapes <br>
  Standard_EXPORT
    const BRepAlgo_Image& Images() const;

  //! Returns split-parts of shapes that have <br>
  //!          state IN for the domain of shape theShape <br>
  Standard_EXPORT
    const TopTools_ListOfShape& InParts(const TopoDS_Shape& theShape) const;

protected:
  //!  Performs calculations using prepared DSFiller <br>
  //!           object theDSF <br>
  Standard_EXPORT
    virtual  void PerformInternal(const NMTTools_PaveFiller& theDSF) ;

  //!  Prepare information for history support <br>
  Standard_EXPORT
    virtual  void PrepareHistory() ;

  //!  Clears internal fields <br>
  Standard_EXPORT
    virtual  void ClearInternals() ;

  //!  Provides preparing actions <br>
  Standard_EXPORT
    virtual  void Prepare() ;

  //!  Provides post-tratment actions <br>
  Standard_EXPORT
    virtual  void PostTreat() ;

  //!  Append the argument theShape to <br>
  //!           typified lists of arguments myShapes1 <br>
  Standard_EXPORT
    void AddShape1(const TopoDS_Shape& theShape) ;

  //! Build the resulting shapes of type theType <br>
  Standard_EXPORT
    virtual  void BuildResult(const TopAbs_ShapeEnum theType) ;

  //! Fill Images for vertices <br>
  Standard_EXPORT
    void FillImagesVertices() ;

  //! Fill Images for edges <br>
  Standard_EXPORT
    void FillImagesEdges() ;

  //! Fill Images for faces <br>
  Standard_EXPORT
    void FillImagesFaces() ;

  //! For each interferred face find split edges <br>
  //!          that are in 2-D domain of the face <br>
  Standard_EXPORT
    void FillIn2DParts() ;

  //! Build draft faces <br>
  Standard_EXPORT
    void BuildSplitFaces() ;

  //! Among draft faces find same domain faces <br>
  Standard_EXPORT
    void FillSameDomainFaces() ;

  //! Fill Images for faces <br>
  //!          taking into account same domain faces <br>
  Standard_EXPORT
    void FillImagesFaces1() ;

  //! Update Images for faces by <br>
  //!          internal vertices <br>
  Standard_EXPORT
    void FillInternalVertices() ;

  //!  Fill Images for Wires, Shells, Compsolids, Compounds <br>
  Standard_EXPORT
    void FillImagesContainers(const TopAbs_ShapeEnum theType) ;

  //!  Fill Images for solids <br>
  Standard_EXPORT
    void FillImagesSolids() ;

  //! For each interferred solid find split faces <br>
  //!          that are in 3-D domain of the solid <br>
  Standard_EXPORT
    void FillIn3DParts() ;

  //! Build draft solids <br>
  Standard_EXPORT
    void BuildSplitSolids() ;

  //!  Update draft solids by <br>
  //!           internal shells, edges, vertices <br>
  Standard_EXPORT
    void FillInternalShapes() ;

  //!  Build solid theDraftSolid that consists of <br>
  //!           non-internal split faces of the solid <br>
  //!           theSolid. <br>
  //!           All splits of internal faces of <br>
  //!           theSolid are in the list: theInternalFaces <br>
  Standard_EXPORT
    void BuildDraftSolid(const TopoDS_Shape& theSolid,
                         TopoDS_Shape& theDraftSolid,
                         TopTools_ListOfShape& theInternalFaces) ;


  NMTTools_PPaveFiller myPaveFiller;
  TopTools_ListOfShape myShapes;
  Standard_Integer myNbTypes;
  TopTools_MapOfShape myMapFence;
  TopTools_ListOfShape myShapes1[9];
  BRepAlgo_Image myImages;
  TopTools_IndexedDataMapOfShapeListOfShape myInParts;
  BRepAlgo_Image mySplitFaces;
  TopTools_IndexedDataMapOfShapeShape mySameDomainShapes;
  TopTools_IndexedDataMapOfShapeShape myDraftSolids;
  Standard_Integer myEntryPoint;

};
#endif
