// Copyright (C) 2005  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either 
// version 2.1 of the License.
// 
// This library is distributed in the hope that it will be useful 
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
//
// File:      ShHealOper_Sewing.hxx
// Created:   29.04.04 13:29:10
// Author:    Galina KULIKOVA


#ifndef ShHealOper_Sewing_HeaderFile
#define ShHealOper_Sewing_HeaderFile

#include <MMgt_TShared.hxx>
#include <ShHealOper_Tool.hxx>
#include <TopoDS_Shape.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <BRepBuilderAPI_Sewing.hxx>
#include <TopoDS_Compound.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_SequenceOfShape.hxx>

//  Class ShHealOper_Sewing

//!Intended for sewing of shapes.
class ShHealOper_Sewing : public ShHealOper_Tool
{
 public:
  // ---------- PUBLIC METHODS ----------

  //! Empty constructor
  Standard_EXPORT ShHealOper_Sewing () : ShHealOper_Tool() {}
  
  //!Constructor for initalization by shape and tolerance.
  Standard_EXPORT ShHealOper_Sewing (const TopoDS_Shape& theShape,
                                     const Standard_Real theTolerance);
  
  //!Method for initalization by whole shape.
  Standard_EXPORT virtual void Init(const TopoDS_Shape& theShape);
   
  //!Performs sewing specified whole shape.
  Standard_EXPORT Standard_Boolean Perform();

  //!Performs local sewing specified sub-shapes from whole shape.
  Standard_EXPORT Standard_Boolean Perform(const TopTools_SequenceOfShape& theSeqShapes);
  
  //!Set mode for sewing faces.(by default true)
  inline void SetFacesMode(const Standard_Boolean theFacesMode )
  {
	myFacesMode = theFacesMode;
  }
  
  //!Get mode for sewing of faces.
  inline Standard_Boolean GetFacesMode( )
  {
	return myFacesMode;
  }

   //!Set mode for sewing floating edges.(by default false)
   inline void SetFloatingEdgesMode(const Standard_Boolean theEdgesMode )
  {
	myEdgesMode = theEdgesMode;
  }
  
  //!Get mode for sewing of floating edges.
  inline Standard_Boolean GetFloatingEdgesMode( )
  {
	return myEdgesMode;
  }
  
  //!Set NonManifoldMode mode  for sewing (by default false)
  inline void SetNonManifoldMode(const Standard_Boolean theNonManifoldMode )
  {
	myNonManifoldMode = theNonManifoldMode;
  }
  
  //!Get NonManifoldMode mode for sewing.
  inline Standard_Boolean GetNonManifoldMode( )
  {
	return myNonManifoldMode;
  }
  
  //!set tolerance for sewing.
  inline void SetTolerance(const Standard_Real theToler)
  {
	myTolerance = theToler;
  }
  
  //!get tolerance set for sewing.
  inline Standard_Real GetTolerance()
  {
	return myTolerance;
  }
  
  //!set shape level (default TopAbs_FACE) for keeping modifications of the shapes.
  inline void SetHistoryLevel(TopAbs_ShapeEnum theHistLevel)
  {
	myHistoryLevel =theHistLevel;
  }
  
  //!get specified shape level for keeping history.
  inline TopAbs_ShapeEnum GetHistoryLevel()
  {
	return myHistoryLevel;
  }
  

 private:
  // ---------- PRIVATE METHODS ----------
  
  Standard_Boolean sewing(const TopTools_SequenceOfShape& theSeqShapes);
  Standard_Boolean getShells(const TopoDS_Shape& theSewShape) const;
  Standard_Boolean getWires(const TopoDS_Shape& theSewShape) const;
  Standard_Boolean getModifications(const TopoDS_Shape& theShape,
                                    const Handle(BRepBuilderAPI_Sewing)& theSewing) const;
  
  Standard_Boolean isSewed(const TopoDS_Shape& theShape) const;

  void deleteFreeEdges(const TopoDS_Shape& theSewShape, 
                       TopTools_MapOfShape& theMapEdges,
                       TopoDS_Compound& theNewComp) const;
 private:
  // ---------- PRIVATE FIELDS ----------

  Standard_Boolean myNonManifoldMode;
  Standard_Boolean myEdgesMode;
  Standard_Boolean myFacesMode;
  Standard_Real myTolerance;
  TopAbs_ShapeEnum myHistoryLevel;
 public:
// Declaration of CASCADE RTTI
//DEFINE_STANDARD_RTTI (ShHealOper_Sewing)
};

// Definition of HANDLE object using Standard_DefineHandle.hxx
//DEFINE_STANDARD_HANDLE (ShHealOper_Sewing, )


#endif
