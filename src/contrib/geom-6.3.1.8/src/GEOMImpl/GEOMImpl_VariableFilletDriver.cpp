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
//Date : 31/1/2008
//for the salome geom win32 port

#include "utilities.h"

#include <Standard_Stream.hxx>

#include <GEOMImpl_VariableFilletDriver.hxx>
#include <GEOMImpl_IVariableFillet.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOMImpl_ILocalOperations.hxx>
#include <GEOM_Function.hxx>

#include <BRepFilletAPI_MakeFillet.hxx>
#include <BRepCheck_Analyzer.hxx>
#include <TColStd_HArray1OfInteger.hxx>
#include <TColStd_HArray1OfReal.hxx>
#include <TColgp_Array1OfPnt2d.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>

#include <StdFail_NotDone.hxx>

//=======================================================================
//function : GetID
//purpose  :
//======================================================================= 
const Standard_GUID& GEOMImpl_VariableFilletDriver::GetID()
{
  static Standard_GUID aVariableFillet("FF1BBB71-5D14-4df2-980B-3A668264EA16");
  return aVariableFillet;
}


//=======================================================================
//function : GEOMImpl_VariableFilletDriver
//purpose  : 
//=======================================================================

GEOMImpl_VariableFilletDriver::GEOMImpl_VariableFilletDriver() 
{
}

//=======================================================================
//function : Execute
//purpose  :
//======================================================================= 
Standard_Integer GEOMImpl_VariableFilletDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label()); 
  if(aFunction.IsNull()) return 0;

  bool isDividedDistances = false;

  GEOMImpl_IVariableFillet aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  Handle(GEOM_Function) aRefShape = aCI.GetShape();
  TopoDS_Shape aShapeBase = aRefShape->GetValue();

  Handle(TColStd_HArray1OfInteger) 	anEdgeArray 	= aCI.GetEdgesArray();
  Handle(TColStd_HArray1OfReal) 	aParamsArray 	= aCI.GetParamsArray();
  Handle(TColStd_HArray1OfReal) 	aRadiusArray 	= aCI.GetRadiusArray();


  if (anEdgeArray->Length() == 0)
	StdFail_NotDone::Raise("No Edges selected for variable fillet");
  else if (aRadiusArray->Length() == 0)
	StdFail_NotDone::Raise("No radius values have been set for variable fillet");
  else if (!aParamsArray.IsNull())
	if (aParamsArray->Length() != aRadiusArray->Length())
	  StdFail_NotDone::Raise("Not every radius value matches a param value");

  if (aParamsArray.IsNull())
	isDividedDistances = true;


  if (aType == VARFILLET)
  {
	BRepFilletAPI_MakeFillet fill (aShapeBase);

	Handle(TColStd_HArray1OfInteger) anEdgeArray = aCI.GetEdgesArray();
	for (int anIt = anEdgeArray->Lower(); anIt <= anEdgeArray->Upper(); anIt++)
	{
	  TopoDS_Shape aShapeEdge;
	  if (GEOMImpl_ILocalOperations::GetSubShape(aShapeBase, anEdgeArray->Value(anIt), aShapeEdge))
	  {
		fill.Add(TopoDS::Edge(aShapeEdge));
	  }
	}

	double theRadiusCount = aRadiusArray->Length();

	double theEdgeParameterStep;
	
	if (theRadiusCount == 1)
	  theEdgeParameterStep  = 0.;
	else
	  theEdgeParameterStep = 1. / (theRadiusCount-1);
	
	TColgp_Array1OfPnt2d aPointArray(1,aRadiusArray->Length());
	
	int aCounter = 1;
	for (int anIt = aRadiusArray->Lower();anIt <= aRadiusArray->Upper();anIt++, aCounter++)
	{
	  double aRadiusValue = aRadiusArray->Value(anIt);
	  double anEdgeParameter;
	  
	  if (isDividedDistances)
		anEdgeParameter = (aCounter-1) * theEdgeParameterStep;
	  else
		anEdgeParameter = aParamsArray->Value(anIt);
		
	  gp_Pnt2d aPoint(anEdgeParameter, aRadiusValue);
	  
	  aPointArray.SetValue(aCounter,aPoint);
	}

	for (int i = 1; i <= fill.NbContours(); i++)
	{
	  fill.SetRadius(aPointArray, i, 1);
	}
	
	fill.Build();

	if (!fill.IsDone())
	{
	  StdFail_NotDone::Raise("Variable fillet can't be computed on the given shape with the given parameters");
	}
	aShape = fill.Shape();
  }

  if (aShape.IsNull()) return 0;

  // Check shape validity
  BRepCheck_Analyzer ana (aShape, false);
  if (!ana.IsValid())
  {
	Standard_CString anErrStr("Variable fillet algorithm has produced an invalid shape result");
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
//function :  GEOMImpl_VariableFilletDriver_Type_
//purpose  :
//======================================================================= 
Standard_EXPORT Handle_Standard_Type& GEOMImpl_VariableFilletDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared); 
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_VariableFilletDriver",
			                                 sizeof(GEOMImpl_VariableFilletDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//======================================================================= 

const Handle(GEOMImpl_VariableFilletDriver) Handle(GEOMImpl_VariableFilletDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_VariableFilletDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_VariableFilletDriver))) {
	   _anOtherObject = Handle(GEOMImpl_VariableFilletDriver)((Handle(GEOMImpl_VariableFilletDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}


