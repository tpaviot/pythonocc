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

#include "GEOM_Solver.hxx"
#include <GEOM_Engine.hxx>
#include <TDF_Label.hxx>
#include <TDF_ChildIterator.hxx>
#include <TFunction_Function.hxx>
#include <TFunction_Driver.hxx>
#include <TFunction_Logbook.hxx>
#include <TFunction_DriverTable.hxx>
#include "GEOM_Function.hxx"
#include <Standard_GUID.hxx>

#include <utilities.h>

#define GEOM_LABEL 1

//=============================================================================
/*!
 *  Update
 */
//=============================================================================
bool GEOM_Solver::Update(int theDocID, TDF_LabelSequence& theSeq)
{
  bool aRetVal = true;
  
  if (GEOM_Engine::GetEngine()->IsDocumentExistant(theDocID)) {
	Handle(TDocStd_Document) theDocument = GEOM_Engine::GetEngine()->GetDocument(theDocID);
	TDF_Label theObjectsLabel = theDocument->Main().FindChild(GEOM_LABEL,false);
	if (!theObjectsLabel.IsNull()) {
	  for (TDF_ChildIterator it(theObjectsLabel); it.More(); it.Next()) {
		TDF_Label currObjLabel = it.Value();
		Handle_GEOM_Object currObj = GEOM_Object::GetObject(currObjLabel);
		if (!currObj.IsNull()) {
		  if (!ComputeObject(currObj))
			aRetVal = false;
		  else
            theSeq.Append(currObj->GetEntry());
		}
		else {
		  aRetVal = false;
		}
	  }
	}
  }
  else
	aRetVal = false;

  return aRetVal;
} 

//=============================================================================
/*!
 *  UpdateObject
 */
//=============================================================================
bool GEOM_Solver::UpdateObject(Handle(GEOM_Object) theObject, TDF_LabelSequence& theSeq)
{
  //In the future in this routine there will be checking against "touching"
  //of an object's child labels.In this case it will be updated.

  bool aRetVal = true;

  //Compute functions of theObject
  if (ComputeObject(theObject)) {

	//Add theObject in the list since it is also updated
	theSeq.Append(theObject->GetEntry());

	//Get the label where all objects are in.
	TDF_Label theObjectsLabel = theObject->GetEntry().Father();

	//Iterate the objects
	for (TDF_ChildIterator it(theObjectsLabel); it.More(); it.Next()) {
	  TDF_Label currObjLabel = it.Value();
	  Handle_GEOM_Object currObj = GEOM_Object::GetObject(currObjLabel);
	  if (!currObj.IsNull()) {
		if (currObj == theObject) continue; //to avoid cyclic redundancies
        //Sequence of dependencies
		Handle(TColStd_HSequenceOfTransient) anObjSequence = currObj->GetAllDependency();
		if (!anObjSequence.IsNull()) {
		  for (int theCnt = 1; theCnt <= anObjSequence->Length(); theCnt++) {
			Handle(GEOM_Object) aDependencyObject = Handle(GEOM_Object)::DownCast(anObjSequence->Value(theCnt));
			if (!aDependencyObject.IsNull()) {
			  if (aDependencyObject == theObject) {
				if (!UpdateObject(currObj, theSeq))
				  aRetVal = false;
			  }
			}
		  }
		}
	  }
	}
  }
  else
    aRetVal = false;

  return aRetVal;
}

//=============================================================================
/*!
 *  ComputeObject
 */
//=============================================================================
bool GEOM_Solver::ComputeObject(Handle(GEOM_Object) theObject)
{
  bool aRetVal = true;
  bool ProceedWithUpdateFlag = true;
  
  //iterate through the object's functions
  for (int theCnt = 1;theCnt <= theObject->GetNbFunctions();theCnt++) {
	Handle(GEOM_Function) aFunction = theObject->GetFunction(theCnt);
	//Check functions existance
	if (!aFunction.IsNull()) {
	  TDF_LabelSequence aSeq;
	  aFunction->GetDependency(aSeq);
	  Standard_Integer aLength = aSeq.Length();
	  if(aLength > 0) {
		//here we must check if the prerequisite objects exist in the DF
		//otherwise the current object cannot be updated
		for(Standard_Integer j =1; j<=aLength; j++) {
		  Handle(GEOM_Object) aRefObject = theObject->GetReferencedObject(aSeq(j));
		  if (aRefObject.IsNull()) {
			ProceedWithUpdateFlag = false;
			break;
		  }  
		}
	  }
	  if (ProceedWithUpdateFlag) {
		try {
		  if (!ComputeFunction(aFunction))
			aRetVal = false;
		}
		catch (Standard_Failure) {
		  Handle(Standard_Failure) aFail = Standard_Failure::Caught();
		  MESSAGE("Solver ComputeObject Error: " << aFail->GetMessageString());
		  //reraise exception in order to pass control to caller
		  Standard_Failure::Raise("Solver ComputeObject Error");
		}
	  }
	}
  }

  return aRetVal;
}

//=============================================================================
/*!
 *  ComputeFunction
 */
//=============================================================================
bool GEOM_Solver::ComputeFunction(Handle(GEOM_Function) theFunction)
{
  if(theFunction.IsNull())
	return false;

  Standard_GUID aGUID = theFunction->GetDriverGUID();

  Handle(TFunction_Driver) aDriver;
  if(!TFunction_DriverTable::Get()->FindDriver(aGUID, aDriver)) return false;

  aDriver->Init(theFunction->GetEntry());

  TFunction_Logbook aLog;
  
  if(aDriver->Execute(aLog) == 0)
	return false;

  return true;
}
