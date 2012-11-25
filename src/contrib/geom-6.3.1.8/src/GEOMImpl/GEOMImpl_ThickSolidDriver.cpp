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
#include "utilities.h"

#include <Standard_Stream.hxx>

#include <GEOMImpl_ThickSolidDriver.hxx>
#include <GEOMImpl_IThickSolid.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOMImpl_ILocalOperations.hxx>
#include <GEOM_Function.hxx>

#include <Precision.hxx>
#include <BRepOffsetAPI_MakeThickSolid.hxx>
#include <BRepCheck_Analyzer.hxx>

#include <TopoDS_Shape.hxx>
#include <StdFail_NotDone.hxx>
#include <Standard_ConstructionError.hxx>

//=======================================================================
//function : GetID
//purpose  :
//======================================================================= 
const Standard_GUID& GEOMImpl_ThickSolidDriver::GetID()
{
  static Standard_GUID aThickSolidDriver("FF1BBB70-5D14-4df2-980B-3A668264EA16");
  return aThickSolidDriver; 
}


//=======================================================================
//function : GEOMImpl_ThickSolidDriver
//purpose  : 
//=======================================================================

GEOMImpl_ThickSolidDriver::GEOMImpl_ThickSolidDriver() 
{
}

//=======================================================================
//function : Execute
//purpose  :
//======================================================================= 
Standard_Integer GEOMImpl_ThickSolidDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label()); 
  if(aFunction.IsNull()) return 0;
  
  //Add implemetation here

  GEOMImpl_IThickSolid aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  Handle(GEOM_Function) aRefShape = aCI.GetShape();
  TopoDS_Shape aShapeBase = aRefShape->GetValue();

  TopTools_ListOfShape aFaceList;

  int aLen = aCI.GetLength();
  int ind = 1;
  for (; ind <= aLen; ind++) 
  {
	  TopoDS_Shape aShapeFace;
	  if (GEOMImpl_ILocalOperations::GetSubShape(aShapeBase, aCI.GetFace(ind), aShapeFace)) 
		aFaceList.Append(aShapeFace); 
  }

  double anOffsetValue = aCI.GetOffset();

  try
  {
	BRepOffsetAPI_MakeThickSolid aThickSolidOperation(aShapeBase, aFaceList, anOffsetValue, Precision::Confusion() , BRepOffset_Skin, Standard_True, Standard_False, GeomAbs_Arc);

	aThickSolidOperation.Build();

	if (aThickSolidOperation.IsDone())
		aShape = aThickSolidOperation.Shape();
	else
		StdFail_NotDone::Raise("ThickSolid cannot be computed on the current shape");
  }
  catch (Standard_Failure)
  {
	Handle(Standard_Failure) aFailExceptionClass = Standard_Failure::Caught();
	StdFail_NotDone::Raise(aFailExceptionClass->GetMessageString());
  }

  if (aShape.IsNull()) return 0;

  // Check shape validity
  BRepCheck_Analyzer ana (aShape, false);
  if (!ana.IsValid()) {
	Standard_CString anErrStr("ThickSolid algorithm has produced an invalid shape result");
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
//function :  GEOMImpl_ThickSolidDriver_Type_
//purpose  :
//======================================================================= 
Standard_EXPORT Handle_Standard_Type& GEOMImpl_ThickSolidDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared); 
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_ThickSolidDriver",
			                                 sizeof(GEOMImpl_ThickSolidDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//======================================================================= 

const Handle(GEOMImpl_ThickSolidDriver) Handle(GEOMImpl_ThickSolidDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_ThickSolidDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_ThickSolidDriver))) {
	   _anOtherObject = Handle(GEOMImpl_ThickSolidDriver)((Handle(GEOMImpl_ThickSolidDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}


