// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
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
// File:	GEOMAlgo_WESScaler.hxx
// Created:
// Author:
//		<pkv@VORTEX>

#ifndef _GEOMAlgo_WESScaler_HeaderFile
#define _GEOMAlgo_WESScaler_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Real.hxx>
#include <TopoDS_Face.hxx>
#include <TopTools_ListOfShape.hxx>
#include <GEOMAlgo_DataMapOfOrientedShapeShape.hxx>
#include <TopoDS_Shape.hxx>
#include <GEOMAlgo_Algo.hxx>

//=======================================================================
//function : GEOMAlgo_WESScaler
//purpose  :
//=======================================================================
class GEOMAlgo_WESScaler  : public GEOMAlgo_Algo
{
public:
  //! Empty constructor <br>
  Standard_EXPORT
    GEOMAlgo_WESScaler();

  Standard_EXPORT
    virtual ~GEOMAlgo_WESScaler();

  //! Modifier <br>
  Standard_EXPORT
    void SetScale(const Standard_Real aWES) ;

  //! Selector <br>
  Standard_EXPORT
    Standard_Real Scale() const;

  Standard_EXPORT
    void SetFace(const TopoDS_Face& aF) ;

  Standard_EXPORT
    const TopoDS_Face& Face() const;

  Standard_EXPORT
    void SetEdges(const TopTools_ListOfShape& aLE) ;

  Standard_EXPORT
    const TopTools_ListOfShape& Edges() const;

  //!  Performs the algorithm <br>
  Standard_EXPORT
    virtual  void Perform() ;

  Standard_EXPORT
    const TopoDS_Face& FaceScaled() const;

  Standard_EXPORT
    const TopTools_ListOfShape& EdgesScaled() const;

  Standard_EXPORT
    const TopoDS_Shape& Image(const TopoDS_Shape& aS) const;

  Standard_EXPORT
    const TopoDS_Shape& Origin(const TopoDS_Shape& aS) const;

  //! Selector <br>
  Standard_EXPORT
    const GEOMAlgo_DataMapOfOrientedShapeShape& Images() const;

  //! Selector <br>
  Standard_EXPORT
    const GEOMAlgo_DataMapOfOrientedShapeShape& Origins() const;

 protected:

  //!  Performs the algorithm <br>
  Standard_EXPORT   virtual  void CheckData() ;


  Standard_Real myScale;
  TopoDS_Face myFace;
  TopTools_ListOfShape myEdges;
  TopoDS_Face myFaceScaled;
  TopTools_ListOfShape myEdgesScaled;
  GEOMAlgo_DataMapOfOrientedShapeShape myImages;
  GEOMAlgo_DataMapOfOrientedShapeShape myOrigins;
  TopoDS_Shape myShapeTmp;
};

#endif
