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
// File:        GEOMAlgo_GluerAlgo.hxx
// Created:
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _GEOMAlgo_GluerAlgo_HeaderFile
#define _GEOMAlgo_GluerAlgo_HeaderFile

#include <Standard_Macro.hxx>
#include <TopoDS_Shape.hxx>
#include <Standard_Real.hxx>
#include <Standard_Boolean.hxx>
#include <IntTools_Context.hxx>
#include <TopTools_DataMapOfShapeListOfShape.hxx>
#include <TopTools_DataMapOfShapeShape.hxx>
#include <GEOMAlgo_BuilderShape.hxx>

//=======================================================================
//class    : GEOMAlgo_GluerAlgo
//purpose  :
//=======================================================================
class GEOMAlgo_GluerAlgo {
public:

  Standard_EXPORT
    GEOMAlgo_GluerAlgo();

  Standard_EXPORT
    virtual ~GEOMAlgo_GluerAlgo();

  Standard_EXPORT
    virtual void SetArgument(const TopoDS_Shape& theShape) ;

  Standard_EXPORT
    const TopoDS_Shape& Argument() const;

  Standard_EXPORT
    void SetTolerance(const Standard_Real aT) ;

  Standard_EXPORT
    Standard_Real Tolerance() const;

  Standard_EXPORT
    void SetCheckGeometry(const Standard_Boolean aFlag) ;

  Standard_EXPORT
    Standard_Boolean CheckGeometry() const;

  Standard_EXPORT
    virtual  void Perform() ;

  Standard_EXPORT
    virtual  void Clear() ;

  Standard_EXPORT
    void SetContext(const Handle(IntTools_Context)&) ;

  Standard_EXPORT
    const Handle(IntTools_Context)& Context() ;

  Standard_EXPORT
    const TopTools_DataMapOfShapeListOfShape& Images() const;

  Standard_EXPORT
    const TopTools_DataMapOfShapeShape& Origins() const;

protected:
  TopoDS_Shape myArgument;
  Standard_Real myTolerance;
  Standard_Boolean myCheckGeometry;
  Handle(IntTools_Context) myContext;
  TopTools_DataMapOfShapeListOfShape myImages;
  TopTools_DataMapOfShapeShape myOrigins;

private:
};
#endif
