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
//Author : Sioutis Fotios
//Date : 30/9/2008
//for the salome geom

#include "utilities.h"

#include <Standard_Stream.hxx>

#include <GEOMImpl_DraftDriver.hxx>
#include <GEOMImpl_IDraft.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <GEOMImpl_ILocalOperations.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopExp.hxx>
#include <BRepOffsetAPI_DraftAngle.hxx>
#include <BRepCheck_Analyzer.hxx>
#include <BRep_Tool.hxx>

#include <gp_Dir.hxx>
#include <gp_Pln.hxx>
#include <Geom_Surface.hxx>
#include <Geom_Plane.hxx>

#include <Standard_ConstructionError.hxx>
#include <StdFail_NotDone.hxx>

//=======================================================================
//function : GetID
//purpose  :
//======================================================================= 
const Standard_GUID& GEOMImpl_DraftDriver::GetID()
{
  static Standard_GUID aDraftDriver("FF1BBB75-5D14-4df2-980B-3A668264EA16");
  return aDraftDriver; 
}

//=======================================================================
//function : GEOMImpl_DraftDriver
//purpose  : 
//=======================================================================
GEOMImpl_DraftDriver::GEOMImpl_DraftDriver() 
{
}

//=======================================================================
//function : Execute
//purpose  :
//======================================================================= 
Standard_Integer GEOMImpl_DraftDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());
  if(aFunction.IsNull()) return 0;

  GEOMImpl_IDraft aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;
  TopoDS_Shape aPlaneShape;

  gp_Pln theNeutralPlane;
  gp_Dir theDirection;

  Handle(GEOM_Function) aRefShape = aCI.GetShape();
  TopoDS_Shape aShapeBase = aRefShape->GetValue();

  //get the reference plane and direction
  if (aType == DRAFT_BY_FACE_PLN_ANG) {
	Handle(GEOM_Function) aRefPlane = aCI.GetPlane();
	if (aRefPlane.IsNull())
	  return 0;
	aPlaneShape = aRefPlane->GetValue();
  }
  else if (aType == DRAFT_BY_FACE_STA_ANG) {
	GEOMImpl_ILocalOperations::GetSubShape(aShapeBase, aCI.GetStationary(), aPlaneShape);
  }
  if (aPlaneShape.IsNull() || aPlaneShape.ShapeType() != TopAbs_FACE)
	return 0;

  TopoDS_Face aFace = TopoDS::Face(aPlaneShape);

  Handle(Geom_Surface) surf = BRep_Tool::Surface(aFace);
  Handle(Geom_Plane) myPlane = Handle(Geom_Plane)::DownCast(surf);

  theNeutralPlane = myPlane->Pln();
  theDirection = theNeutralPlane.Axis().Direction();

  //compute the value
  Standard_Real theAngle = aCI.GetAngle();

  int aLen = aCI.GetLength();
  int ind = 1;
  int added = 0;

  BRepOffsetAPI_DraftAngle aDraft (aShapeBase);

  for (; ind <= aLen; ind++) {
	TopoDS_Shape aShapeFace;
	if (GEOMImpl_ILocalOperations::GetSubShape(aShapeBase, aCI.GetFace(ind), aShapeFace)) {
	  TopoDS_Face aFace = TopoDS::Face(aShapeFace);
	  aDraft.Add(aFace, theDirection, theAngle, theNeutralPlane);
	  if (aDraft.AddDone())
		added++;
	  else
		aDraft.Remove(aFace);
	}
  }
  if (added == 0)
	StdFail_NotDone::Raise("None of the faces provided can be used for draft algo");

  aDraft.Build();

  if (!aDraft.IsDone()) {
	StdFail_NotDone::Raise("Draft can't be computed on the given shape with the given parameters");
  }
  aShape = aDraft.Shape();

  if (aShape.IsNull()) return 0;

  // Check shape validity
  BRepCheck_Analyzer ana (aShape, false);
  if (!ana.IsValid()) {
	Standard_CString anErrStr("Draft algorythm has produced an invalid shape result");
	#ifdef THROW_ON_INVALID_SH
	  Standard_ConstructionError::Raise(anErrStr);
	#else
	  MESSAGE(anErrStr);
	  //further processing can be performed here
	  //...
	  //in case of failure of automatic treatment
	  //mark the corresponding GEOM_Object as problematic
	  TDF_Label aLabel = aFunction->GetOwnerEntry();
	  if (!aLabel.IsRoot()) {
		Handle(GEOM_Object) aMainObj = GEOM_Object::GetObject(aLabel);
		if (!aMainObj.IsNull())
		  aMainObj->SetDirty(Standard_True);
	  }
	#endif
  }
  aFunction->SetValue(aShape);
  log.SetTouched(Label());
  return 1;
}

//=======================================================================
//function :  GEOMImpl_DraftDriver_Type_
//purpose  :
//======================================================================= 
Standard_EXPORT Handle_Standard_Type& GEOMImpl_DraftDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared); 
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_DraftDriver",
			                                 sizeof(GEOMImpl_DraftDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_DraftDriver) Handle(GEOMImpl_DraftDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_DraftDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_DraftDriver))) {
       _anOtherObject = Handle(GEOMImpl_DraftDriver)((Handle(GEOMImpl_DraftDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}

