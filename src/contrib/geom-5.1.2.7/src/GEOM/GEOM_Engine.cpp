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

#ifdef WNT
#pragma warning( disable:4786 )
#endif

#include "GEOM_Engine.hxx"

#include "GEOM_Solver.hxx"
#include "GEOM_Function.hxx"
#include "GEOM_ISubShape.hxx"
#include "GEOM_SubShapeDriver.hxx"
#include "GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient.hxx"
#include "GEOM_PythonDump.hxx"

#include <TDF_Tool.hxx>
#include <TDF_Data.hxx>
#include <TDF_Reference.hxx>
#include <TDF_LabelSequence.hxx>
#include <TDF_ChildIterator.hxx>
#include <TDataStd_Comment.hxx>
#include <TDataStd_Integer.hxx>
#include <TDataStd_Real.hxx>
#include <TDataStd_ChildNodeIterator.hxx>
#include <TDataStd_Variable.hxx>
#include <TDataStd_AsciiString.hxx>
#include <TFunction_Driver.hxx>
#include <TFunction_DriverTable.hxx>

#include <TopExp.hxx>
#include <TopTools_IndexedMapOfShape.hxx>

#include <TCollection_AsciiString.hxx>
#include <TCollection_ExtendedString.hxx>
#include <TColStd_SequenceOfAsciiString.hxx>
#include <TColStd_MapOfTransient.hxx>
#include <TColStd_HSequenceOfInteger.hxx>

#include <Quantity_Color.hxx>

#include <Interface_DataMapIteratorOfDataMapOfIntegerTransient.hxx>
#include <Resource_DataMapIteratorOfDataMapOfAsciiStringAsciiString.hxx>

#include <set>
#include <map>
#include <string>

#include <Standard_Failure.hxx>
#include <Standard_ErrorHandler.hxx> // CAREFUL ! position of this file is critic : see Lucien PIGNOLONI / OCC

#define GEOM_LABEL       1
#define CONSTANTS_LABEL  2
#define USER_DATA_LABEL  3

#define COMMA ','
#define O_BRACKET '('
#define C_BRACKET ')'
#define O_SQR_BRACKET '['
#define C_SQR_BRACKET ']'
#define PY_NULL "None"

//used for replace variables in script
#ifdef _DEBUG_
static int MYDEBUG = 0;
#else
static int MYDEBUG = 0;
#endif

static GEOM_Engine* TheEngine = NULL;

static TCollection_AsciiString BuildIDFromObject(Handle(GEOM_Object)& theObject)
{
  TCollection_AsciiString anID(theObject->GetDocID()), anEntry;
  TDF_Tool::Entry(theObject->GetEntry(), anEntry);
  anID+=(TCollection_AsciiString("_")+anEntry);
  return anID;
}

static TCollection_AsciiString BuildID(Standard_Integer theDocID, const char* theEntry)
{
  TCollection_AsciiString anID(theDocID);
  anID+=(TCollection_AsciiString("_")+theEntry);
  return anID;
}

static Standard_Integer ExtractDocID(TCollection_AsciiString& theID)
{
  TCollection_AsciiString aDocID = theID.Token("_");
  if(aDocID.Length() < 1) return -1;
  return aDocID.IntegerValue();
}

void ProcessFunction(Handle(GEOM_Function)&   theFunction,
                     TCollection_AsciiString& theScript,
                     const TVariablesList&    theVariables,
                     TDF_LabelMap&            theProcessed,
                     std::set<std::string>&   theDumpedObjs);

void ReplaceVariables(TCollection_AsciiString& theCommand, 
                      const TVariablesList&    theVariables);

Handle(TColStd_HSequenceOfInteger) FindEntries(TCollection_AsciiString& theString);

//=============================================================================
/*!
 *  GetEngine
 */
//=============================================================================
GEOM_Engine* GEOM_Engine::GetEngine() { return TheEngine; }


//=============================================================================
/*!
 *  SetEngine
 */
//=============================================================================
void GEOM_Engine::SetEngine(GEOM_Engine* theEngine) { TheEngine = theEngine; }

//=============================================================================
/*!
 *  Constructor
 */
//=============================================================================
GEOM_Engine::GEOM_Engine()
{
  TFunction_DriverTable::Get()->AddDriver(GEOM_Object::GetSubShapeID(), new GEOM_SubShapeDriver());

  _OCAFApp = new GEOM_Application();
  _UndoLimit = 10;
}

//=============================================================================
/*!
 *  Destructor
 */
//=============================================================================
GEOM_Engine::~GEOM_Engine()
{ 
  GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient It(_objects);
  for(; It.More(); It.Next()) 
    {
      RemoveObject(Handle(GEOM_Object)::DownCast(It.Value()));
    }

  //Close all documents not closed
  for(Interface_DataMapIteratorOfDataMapOfIntegerTransient anItr(_mapIDDocument); anItr.More(); anItr.Next())
    Close(anItr.Key());

  _mapIDDocument.Clear();
  _objects.Clear();
}

//=============================================================================
/*!
 *  IsDocumentExistant
 */
//=============================================================================
bool GEOM_Engine::IsDocumentExistant(int theDocID)
{
  if(!_mapIDDocument.IsBound(theDocID)) {
	return false;
  }
  return true;
}

//=============================================================================
/*!
 *  GetDocument
 */
//=============================================================================
Handle(TDocStd_Document) GEOM_Engine::GetDocument(int theDocID)
{
  Handle(TDocStd_Document) aDoc;

  if(!_mapIDDocument.IsBound(theDocID)) {
	_OCAFApp->NewDocument("GEOMETRY", aDoc);
    aDoc->SetUndoLimit(_UndoLimit);
	_mapIDDocument.Bind(theDocID, aDoc);
	TDataStd_Integer::Set(aDoc->Main(), theDocID);
  }

  return Handle(TDocStd_Document)::DownCast(_mapIDDocument(theDocID));
}

//=============================================================================
/*!
 *  GetDocID
 */
//=============================================================================
int GEOM_Engine::GetDocID(Handle(TDocStd_Document) theDocument)
{
  if(theDocument.IsNull()) return -1;
  for(Interface_DataMapIteratorOfDataMapOfIntegerTransient anItr(_mapIDDocument); anItr.More(); anItr.Next())
    if(anItr.Value() == theDocument) return anItr.Key();

  return -1;

}

//=============================================================================
/*!
 *  GetObject
 */
//=============================================================================
Handle(GEOM_Object) GEOM_Engine::GetObject(int theDocID, const char* theEntry)
{
  TCollection_AsciiString anID = BuildID(theDocID, theEntry);
  if(_objects.IsBound(anID)) return Handle(GEOM_Object)::DownCast(_objects(anID));

  TDF_Label aLabel;
  Handle(TDocStd_Document) aDoc = GetDocument(theDocID);
  TDF_Tool::Label(aDoc->Main().Data(), theEntry, aLabel, Standard_True);
  Handle(GEOM_Object) anObject = new GEOM_Object(aLabel);

  _objects.Bind(anID, anObject);

  return anObject;
}

//=============================================================================
/*!
 *  AddObject
 */
//=============================================================================
Handle(GEOM_Object) GEOM_Engine::AddObject(int theDocID, int theType)
{
  Handle(TDocStd_Document) aDoc = GetDocument(theDocID);

  //case 1---  new
  TDF_Label alab = aDoc->Main().FindChild(GEOM_LABEL,true);
  //Handle(TDataStd_TreeNode) aRoot = TDataStd_TreeNode::Set(alab);
  // NPAL18604: use existing label to decrease memory usage,
  //            if this label has been freed (object deleted)
  bool useExisting = false;
  TDF_Label aChild;
  #ifdef MEM_OPTIMISED_LABEL
  if (_freeLabels.find(theDocID) != _freeLabels.end()) {
    std::list<TDF_Label>& aFreeLabels = _freeLabels[theDocID];
    if (!aFreeLabels.empty()) {
      useExisting = true;
      aChild = aFreeLabels.front();
      aFreeLabels.pop_front();
    }
  }
  if (!useExisting) //{
    // create new label
  #endif
	aChild = TDF_TagSource::NewChild(alab);
  //}

  Handle(GEOM_Object) anObject = new GEOM_Object(aChild, theType);

  //Put an object in the map of created objects
  TCollection_AsciiString anID = BuildIDFromObject(anObject);
  if(_objects.IsBound(anID)) _objects.UnBind(anID);
  _objects.Bind(anID, anObject);

  return anObject;
}

//=============================================================================
/*!
 *  AddSubShape
 */
//=============================================================================
Handle(GEOM_Object) GEOM_Engine::AddSubShape(Handle(GEOM_Object) theMainShape, 
					     Handle(TColStd_HArray1OfInteger) theIndices,
					     bool isStandaloneOperation)
{
  Handle(GEOM_Object) aVoidRetVal;
  if(theMainShape.IsNull() || theIndices.IsNull()) return aVoidRetVal;
  Handle(TDocStd_Document) aDoc = GetDocument(theMainShape->GetDocID());
  TDF_Label alab = aDoc->Main().FindChild(GEOM_LABEL,true);

  // NPAL18604: use existing label to decrease memory usage,
  //            if this label has been freed (object deleted)
  bool useExisting = false;
  TDF_Label aChild;

  #ifdef MEM_OPTIMISED_LABEL
  /*
  if (!_lastCleared.IsNull()) {
    if (_lastCleared.Root() == aDoc->Main().Root()) {
      useExisting = true;
      aChild = _lastCleared;
      // 0020229: if next label exists and is empty, try to reuse it
      Standard_Integer aNextTag = aChild.Tag() + 1;
      TDF_Label aNextL = aDoc->Main().FindChild(aNextTag, Standard_False);
      if (!aNextL.IsNull() && !aNextL.HasAttribute())
        _lastCleared = aNextL;
      else
        _lastCleared.Nullify();
    }
  }
  */
  int aDocID = theMainShape->GetDocID();
  if (_freeLabels.find(aDocID) != _freeLabels.end()) {
    std::list<TDF_Label>& aFreeLabels = _freeLabels[aDocID];
    if (!aFreeLabels.empty()) {
      useExisting = true;
      aChild = aFreeLabels.front();
      aFreeLabels.pop_front();
    }
  }
  if (!useExisting) //{
    // create new label
  #endif
	aChild = TDF_TagSource::NewChild(alab);
  //}

  Handle(GEOM_Function) aMainShape = theMainShape->GetLastFunction();
  Handle(GEOM_Object) anObject = new GEOM_Object(aChild, 28); //28 is SUBSHAPE type
  Handle(GEOM_Function) aFunction = anObject->AddFunction(GEOM_Object::GetSubShapeID(), 1);

  GEOM_ISubShape aSSI(aFunction);
  aSSI.SetMainShape(aMainShape);
  aSSI.SetIndices(theIndices);

  try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
    OCC_CATCH_SIGNALS;
#endif
    GEOM_Solver aSolver (GEOM_Engine::GetEngine());
    if (!aSolver.ComputeFunction(aFunction)) {
      MESSAGE("GEOM_Engine::AddSubShape Error: Can't build a sub shape");
      return aVoidRetVal;
    }
  }
  catch (Standard_Failure) {
    Handle(Standard_Failure) aFail = Standard_Failure::Caught();
    MESSAGE("GEOM_Engine::AddSubShape Error: " << aFail->GetMessageString());
    return aVoidRetVal;
  }

  //Put an object in the map of created objects
  TCollection_AsciiString anID = BuildIDFromObject(anObject);
  if(_objects.IsBound(anID)) _objects.UnBind(anID);
  _objects.Bind(anID, anObject);

  GEOM::TPythonDump pd (aFunction);
 
  if (isStandaloneOperation) {
    pd << anObject << "GetSubShape(" << theMainShape << ", [";
    Standard_Integer i = theIndices->Lower(), up = theIndices->Upper();
    for (; i <= up - 1; i++) {
      pd << theIndices->Value(i) << ", ";
    }
    pd << theIndices->Value(up) << "])";
  }
  else
    pd << "None";

  return anObject;
}

//=============================================================================
/*!
 *  RemoveObject
 */
//=============================================================================
bool GEOM_Engine::RemoveObject(Handle(GEOM_Object) theObject)
{
  if(!theObject) return false;

  int aDocID = theObject->GetDocID();

  //Remove an object from the map of available objects
  TCollection_AsciiString anID = BuildIDFromObject(theObject);
  if(_objects.IsBound(anID)) _objects.UnBind(anID);

  int nb = theObject->GetNbFunctions();
  Handle(TDataStd_TreeNode) aNode;
  for(int i = 1; i<=nb; i++) {
	Handle(GEOM_Function) aFunction = theObject->GetFunction(i);
	if(aFunction->GetEntry().FindAttribute(GEOM_Function::GetFunctionTreeID(), aNode))
	  aNode->Remove();
  }

  TDF_Label aLabel = theObject->GetEntry();
  aLabel.ForgetAllAttributes(Standard_True);

  // Remember the label to reuse it then
  #ifdef MEM_OPTIMISED_LABEL
  std::list<TDF_Label>& aFreeLabels = _freeLabels[aDocID];
  aFreeLabels.push_back(aLabel);
  #endif

  theObject.Nullify();

  return true;
}

//=============================================================================
/*!
 *  Undo
 */
//=============================================================================
void GEOM_Engine::Undo(int theDocID)
{
  GetDocument(theDocID)->Undo();
}

//=============================================================================
/*!
 *  Redo
 */
//=============================================================================
void GEOM_Engine::Redo(int theDocID)
{
  GetDocument(theDocID)->Redo();
}

//=============================================================================
/*!
 *  Save
 */
//=============================================================================
bool GEOM_Engine::Save(int theDocID, char* theFileName)
{
  if(!_mapIDDocument.IsBound(theDocID)) return false;
  Handle(TDocStd_Document) aDoc = Handle(TDocStd_Document)::DownCast(_mapIDDocument(theDocID));

  _OCAFApp->SaveAs(aDoc, theFileName);

  return true;
}

//=============================================================================
/*!
 *  Load
 */
//=============================================================================
bool GEOM_Engine::Load(int theDocID, char* theFileName)
{
  Handle(TDocStd_Document) aDoc;
  if(_OCAFApp->Open(theFileName, aDoc) != CDF_RS_OK) {
    return false;
  }

  aDoc->SetUndoLimit(_UndoLimit);

  if(_mapIDDocument.IsBound(theDocID))
	_mapIDDocument.UnBind(theDocID);

  _mapIDDocument.Bind(theDocID, aDoc);

  TDataStd_Integer::Set(aDoc->Main(), theDocID);

  return true;
}

//=============================================================================
/*!
 *  Close
 */
//=============================================================================
void GEOM_Engine::Close(int theDocID)
{
  if(_mapIDDocument.IsBound(theDocID)) {
	Handle(TDocStd_Document) aDoc = Handle(TDocStd_Document)::DownCast(_mapIDDocument(theDocID));

    //Remove all GEOM Objects associated to the given document
    TColStd_SequenceOfAsciiString aSeq;
    GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient It(_objects);
    for(; It.More(); It.Next()) {
      TCollection_AsciiString anObjID(It.Key());
      Standard_Integer anID = ExtractDocID(anObjID);
      if(theDocID == anID) aSeq.Append(It.Key());
    }
    for(Standard_Integer i=1; i<=aSeq.Length(); i++) _objects.UnBind(aSeq.Value(i));

    #ifdef MEM_OPTIMISED_LABEL
    // Forget free labels for this document
    TFreeLabelsList::iterator anIt = _freeLabels.find(theDocID);
    if (anIt != _freeLabels.end()) {
      _freeLabels.erase(anIt);
    }
    #endif
    
   _mapIDDocument.UnBind(theDocID);
	_OCAFApp->Close(aDoc);
	aDoc.Nullify();
  }
}

//=============================================================================
/*!
 *  SetInterpreterConstant
 */
//=============================================================================
void GEOM_Engine::SetInterpreterConstant(int theDocID, const TCollection_AsciiString& theConstant, double theValue, const TCollection_AsciiString& theDescription, bool isUpdateDescription)
{
  bool foundConstant = false;

  if (theConstant.IsRealValue())
    return;
             
  TDF_Label aLabel = GetDocument(theDocID)->Main().FindChild(CONSTANTS_LABEL,true);

  for (TDF_ChildIterator it(aLabel); it.More(); it.Next()) {
	Handle(TDataStd_Variable) aConstantTDFval;
	if (it.Value().FindAttribute(TDataStd_Variable::GetID(), aConstantTDFval)) {
	  if (aConstantTDFval->Name() == theConstant) {
        foundConstant = true;
		if (aConstantTDFval->Get() != theValue)
		  aConstantTDFval->Set(theValue, TDataStd_SCALAR);
        if (isUpdateDescription) {
          Handle(TDataStd_AsciiString) aComment;
          if (it.Value().FindAttribute(TDataStd_AsciiString::GetID(), aComment)) {
            if (aComment->Get() != theDescription)
              aComment->Set(theDescription);
          }
          else {
            TDataStd_AsciiString::Set(it.Value(), theDescription);
          }
        }
        break;
	  }
	}
  }
  if (!foundConstant) {
	Handle(TDataStd_TreeNode) aRoot = TDataStd_TreeNode::Set(aLabel);
	TDF_Label aChild = TDF_TagSource::NewChild(aLabel);

	TDataStd_Variable::Set(aChild)->Name(theConstant);
	TDataStd_Variable::Set(aChild)->Set(theValue, TDataStd_SCALAR);
    if (isUpdateDescription)
      TDataStd_AsciiString::Set(aChild, theDescription);
  }
}

//=============================================================================
/*!
 *  GetInterpreterEquationValue
 */
//=============================================================================
bool GEOM_Engine::GetInterpreterEquationValue(int theDocID, const TCollection_AsciiString& theEquation, double& theRefValue)
{
  Handle(ExprIntrp_GenExp) anInterpreter = ExprIntrp_GenExp::Create();

  TDF_Label aCONSTANTlabel = GetDocument(theDocID)->Main().FindChild(CONSTANTS_LABEL,false);

  for (TDF_ChildIterator it(aCONSTANTlabel); it.More(); it.Next()) {
	Handle(TDataStd_Variable) aConstantTDFval;
	if (it.Value().FindAttribute(TDataStd_Variable::GetID(), aConstantTDFval ))
	  anInterpreter->Use(new Expr_NamedConstant(aConstantTDFval->Name(), aConstantTDFval->Get()));
  }
  anInterpreter->Process(theEquation);
  if ( anInterpreter->IsDone() &&  !anInterpreter->Expression()->ContainsUnknowns() ) {
	try {
	  theRefValue = anInterpreter->Expression()->EvaluateNumeric();
	  return true;
	}
	catch(Standard_Failure &the_fail) {
	  theRefValue = 0.;
	  return false;
	}
  }
  else {
	theRefValue = 0.;
	return false;
  }
}

//=============================================================================
/*!
 *  GetInterpreterConstantList
 */
//=============================================================================
void GEOM_Engine::GetInterpreterConstantArray(int theDocID, Handle(TColStd_HArray1OfTransient)& theArray, Handle(TColStd_HArray1OfAsciiString)& theDescriptions)
{
  Handle(TDocStd_Document) aDoc = GetDocument(theDocID);
  TDF_Label aConstantListLabel = aDoc->Main().FindChild(CONSTANTS_LABEL,false);

  if (aConstantListLabel.IsNull())
    return;

  Handle(TColStd_HArray1OfTransient) _Array = new TColStd_HArray1OfTransient(1, aConstantListLabel.NbChildren());
  Handle(TColStd_HArray1OfAsciiString) _Descriptions = new TColStd_HArray1OfAsciiString(1, aConstantListLabel.NbChildren());

  int index = 1;

  for (TDF_ChildIterator it(aConstantListLabel); it.More(); it.Next()) {
	Handle(TDataStd_Variable) aConstantTDFval;
	if (it.Value().FindAttribute(TDataStd_Variable::GetID(), aConstantTDFval)) {
	  _Array->SetValue(index, new Expr_NamedConstant(aConstantTDFval->Name(), aConstantTDFval->Get()));
      Handle(TDataStd_AsciiString) aComment;
      if (it.Value().FindAttribute(TDataStd_AsciiString::GetID(), aComment))
        _Descriptions->SetValue(index, aComment->Get());
      else
        _Descriptions->SetValue(index, "");
	  index++;
	}
  }

  theArray = _Array;
  theDescriptions = _Descriptions;
}

//=============================================================================
/*!
 *  SetInterpreterConstantArray
 */
//=============================================================================
void GEOM_Engine::SetInterpreterConstantArray(int theDocID, Handle(TColStd_HArray1OfTransient) theArray, Handle(TColStd_HArray1OfAsciiString) theDescriptions, bool forgetPrevious)
{
  if (  (theArray->Length() > 0) &&  forgetPrevious  ) {
	Handle(TDocStd_Document) aDoc = GetDocument(theDocID);
	TDF_Label aConstantListLabel = aDoc->Main().FindChild(CONSTANTS_LABEL,false);
    if (!aConstantListLabel.IsNull())
	  aConstantListLabel.ForgetAllAttributes(true);
  }
  bool isUpdateDescriptions = true;
  if (theDescriptions.IsNull())
    isUpdateDescriptions = false;
  for (int it = 1; it <= theArray->Length() ; it++ ) {
	Handle(Expr_NamedConstant) aNamedConstant = Handle(Expr_NamedConstant)::DownCast(theArray->Value(it));
    if (isUpdateDescriptions)
      SetInterpreterConstant(theDocID, aNamedConstant->String(), aNamedConstant->GetValue(), theDescriptions->Value(it), isUpdateDescriptions);
    else
      SetInterpreterConstant(theDocID, aNamedConstant->String(), aNamedConstant->GetValue(), "", isUpdateDescriptions);
  }
}

//=============================================================================
/*!
 *  GetUserDataLabel
 */
//=============================================================================
TDF_Label GEOM_Engine::GetUserDataLabel(int theDocID)
{
  Handle(TDocStd_Document) aDoc = GetDocument(theDocID);
  return aDoc->Main().FindChild(USER_DATA_LABEL);
}

//=============================================================================
/*!
 *  DumpPython
 */
//=============================================================================
TCollection_AsciiString GEOM_Engine::DumpPython(int theDocID,
                                                Resource_DataMapOfAsciiStringAsciiString& theObjectNames,
                                                TVariablesList theVariables,
                                                bool isPublished,
                                                bool& aValidScript)
{
  TCollection_AsciiString aScript;
  Handle(TDocStd_Document) aDoc = GetDocument(theDocID);

  if (aDoc.IsNull()) return TCollection_AsciiString("def RebuildData(theStudy): pass\n");

  aScript  = "import geompy\n";
  aScript += "import math\n";
  aScript += "import SALOMEDS\n\n";
  aScript += "def RebuildData(theStudy):";
  aScript += "\n\tgeompy.init_geom(theStudy)";

  Standard_Integer posToInsertGlobalVars = aScript.Length() + 1;

  Handle(TDataStd_TreeNode) aNode, aRoot;
  Handle(GEOM_Function) aFunction;
  TDF_LabelMap aCheckedFuncMap;
  std::set<std::string> anIgnoreObjMap;

  if (aDoc->Main().FindAttribute(GEOM_Function::GetFunctionTreeID(), aRoot)) {
    TDataStd_ChildNodeIterator Itr(aRoot);
    for (; Itr.More(); Itr.Next()) {
      aNode = Itr.Value();
      aFunction = GEOM_Function::GetFunction(aNode->Label());
      if (aFunction.IsNull()) {
        MESSAGE ( "Null function !!!!" );
        continue;
      }
      ProcessFunction(aFunction, aScript, theVariables, aCheckedFuncMap, anIgnoreObjMap);
    }
  }

  Resource_DataMapOfAsciiStringAsciiString aEntry2StEntry, aStEntry2Entry;
  Resource_DataMapIteratorOfDataMapOfAsciiStringAsciiString anEntryToNameIt;
  // build maps entry <-> studyEntry
  for (anEntryToNameIt.Initialize( theObjectNames );
       anEntryToNameIt.More();
       anEntryToNameIt.Next())
  {
    const TCollection_AsciiString& aEntry = anEntryToNameIt.Key();
    // look for an object by entry
    TDF_Label L;
    TDF_Tool::Label( aDoc->GetData(), aEntry, L );
    if ( L.IsNull() ) continue;
    Handle(GEOM_Object) obj = GEOM_Object::GetObject( L );
    // fill maps
    if ( !obj.IsNull() ) {
      TCollection_AsciiString aStudyEntry (obj->GetAuxData());
      aEntry2StEntry.Bind( aEntry,  aStudyEntry);
      aStEntry2Entry.Bind( aStudyEntry, aEntry );
    }
  }

  Handle(TColStd_HSequenceOfInteger) aSeq = FindEntries(aScript);
  Standard_Integer aLen = aSeq->Length(), objectCounter = 0, aStart = 1, aScriptLength = aScript.Length();
  Resource_DataMapOfAsciiStringAsciiString aNameToEntry, anEntryToBadName;

  //Replace entries by the names
  TCollection_AsciiString anUpdatedScript, anEntry, aName, aBaseName("geomObj_"),
    allowedChars ("qwertyuioplkjhgfdsazxcvbnmQWERTYUIOPLKJHGFDSAZXCVBNM0987654321_");
  if (aLen == 0) anUpdatedScript = aScript;

  for (Standard_Integer i = 1; i <= aLen; i+=2) {
    anUpdatedScript += aScript.SubString(aStart, aSeq->Value(i)-1);
    anEntry = aScript.SubString(aSeq->Value(i), aSeq->Value(i+1));
    if (theObjectNames.IsBound(anEntry)) {
      aName = theObjectNames.Find(anEntry);
      // check validity of aName
      bool isValidName = true;
      if ( aName.IsIntegerValue() ) { // aName must not start with a digit
        aName.Insert( 1, 'a' );
        isValidName = false;
      }
      int p, p2=1; // replace not allowed chars
      while ((p = aName.FirstLocationNotInSet(allowedChars, p2, aName.Length()))) {
        aName.SetValue(p, '_');
        p2=p;
        isValidName = false;
      }
      if ( aNameToEntry.IsBound( aName ) && anEntry != aNameToEntry( aName ))
      {  // diff objects have same name - make a new name by appending a digit
        TCollection_AsciiString aName2;
        Standard_Integer i = 0;
        do {
          aName2 = aName + "_" + ++i;
        } while ( aNameToEntry.IsBound( aName2 ) && anEntry != aNameToEntry( aName2 ));
        aName = aName2;
        isValidName = false;
      }
      if ( !isValidName ) {
        if ( isPublished )
          anEntryToBadName.Bind( anEntry, theObjectNames.Find(anEntry) );
        theObjectNames( anEntry ) = aName;
      }
    }
    else {
      do {
        aName = aBaseName + TCollection_AsciiString(++objectCounter);
      } while(aNameToEntry.IsBound(aName));
      theObjectNames.Bind(anEntry, aName);
    }
    aNameToEntry.Bind(aName, anEntry); // to detect same name of diff objects

    anUpdatedScript += aName;
    aStart = aSeq->Value(i+1) + 1;
  }

  //Add final part of the script
  if (aLen && aSeq->Value(aLen) < aScriptLength)
    anUpdatedScript += aScript.SubString(aSeq->Value(aLen)+1, aScriptLength); // mkr : IPAL11865

  // ouv : NPAL12872
  for (anEntryToNameIt.Initialize( theObjectNames );
       anEntryToNameIt.More();
       anEntryToNameIt.Next())
  {
    const TCollection_AsciiString& aEntry = anEntryToNameIt.Key();
    const TCollection_AsciiString& aName = anEntryToNameIt.Value();

    TDF_Label L;
    TDF_Tool::Label( aDoc->GetData(), aEntry, L );
    if ( L.IsNull() )
      continue;

    Handle(GEOM_Object) obj = GEOM_Object::GetObject( L );
    if ( obj.IsNull() )
      continue;

    bool anAutoColor = obj->GetAutoColor();
    if ( anAutoColor )
    {
      TCollection_AsciiString aCommand( "\n\t" );
      aCommand += aName + ".SetAutoColor(1)";
      anUpdatedScript += aCommand.ToCString();
    }

    Quantity_Color aColor = obj->GetColor();
    if ( aColor.Red() > 0 || aColor.Green() > 0 || aColor.Blue() > 0 )
    {
      TCollection_AsciiString aCommand( "\n\t" );
      aCommand += aName + ".SetColor(SALOMEDS.Color(" + aColor.Red() + "," + aColor.Green() + "," + aColor.Blue() + "))";
      anUpdatedScript += aCommand.ToCString();
    }
  }

  // Make script to publish in study
  if ( isPublished )
  {
    std::map< int, std::string > anEntryToCommandMap; // sort publishing commands by object entry
    for (anEntryToNameIt.Initialize( theObjectNames );
         anEntryToNameIt.More();
         anEntryToNameIt.Next())
    {
      const TCollection_AsciiString& aEntry = anEntryToNameIt.Key();
      const TCollection_AsciiString& aName = anEntryToNameIt.Value();
      if (anIgnoreObjMap.count(aEntry.ToCString()))
        continue; // should not be dumped
      if ( !aEntry2StEntry.IsBound( aEntry ))
        continue; // was not published
      TCollection_AsciiString aCommand("\n\tgeompy."), aFatherEntry;

      // find a father entry
      const TCollection_AsciiString& aStudyEntry = aEntry2StEntry( aEntry );
      TCollection_AsciiString aFatherStudyEntry =
        aStudyEntry.SubString( 1, aStudyEntry.SearchFromEnd(":") - 1 );
      if ( aStEntry2Entry.IsBound( aFatherStudyEntry ))
        aFatherEntry = aStEntry2Entry( aFatherStudyEntry );

      // make a command
      if ( !aFatherEntry.IsEmpty() && theObjectNames.IsBound( aFatherEntry )) {
        aCommand += "addToStudyInFather( ";
        aCommand += theObjectNames( aFatherEntry ) + ", ";
      }
      else
        aCommand += "addToStudy( ";
      if ( anEntryToBadName.IsBound( aEntry ))
        aCommand += aName + ", \"" + anEntryToBadName( aEntry ) + "\" )";
      else
        aCommand += aName + ", \"" + aName + "\" )";

      // bind a command to the last digit of the entry
      int tag =
        aEntry.SubString( aEntry.SearchFromEnd(":")+1, aEntry.Length() ).IntegerValue();
      anEntryToCommandMap.insert( std::make_pair( tag, aCommand.ToCString() ));
    }

    // add publishing commands to the script
    std::map< int, std::string >::iterator anEntryToCommand = anEntryToCommandMap.begin();
    for ( ; anEntryToCommand != anEntryToCommandMap.end(); ++anEntryToCommand ) {
      anUpdatedScript += (char*)anEntryToCommand->second.c_str();
    }
  }

  //anUpdatedScript += "\n\tpass\n";
  anUpdatedScript += "\n";
  aValidScript = true;

  // fill _studyEntry2NameMap and build globalVars
  TCollection_AsciiString globalVars;
  _studyEntry2NameMap.Clear();
  Resource_DataMapIteratorOfDataMapOfAsciiStringAsciiString aStEntryToEntryIt;
  for (aStEntryToEntryIt.Initialize( aStEntry2Entry );
       aStEntryToEntryIt.More();
       aStEntryToEntryIt.Next() )
  {
    const TCollection_AsciiString & name = theObjectNames( aStEntryToEntryIt.Value() );
    _studyEntry2NameMap.Bind (aStEntryToEntryIt.Key(), name );
    if ( !globalVars.IsEmpty() )
      globalVars += ", ";
    globalVars += name;
  }
  if ( !globalVars.IsEmpty() ) {
    globalVars.Insert( 1, "\n\tglobal " );
    anUpdatedScript.Insert( posToInsertGlobalVars, globalVars );
  }

  return anUpdatedScript;
}

//=======================================================================
//function : GetDumpName
//purpose  :
//=======================================================================

const char* GEOM_Engine::GetDumpName (const char* theStudyEntry) const
{
  if ( _studyEntry2NameMap.IsBound( (char*)theStudyEntry ))
    return _studyEntry2NameMap( (char*)theStudyEntry ).ToCString();

  return NULL;
}

//=======================================================================
//function : GetAllDumpNames
//purpose  :
//=======================================================================

Handle(TColStd_HSequenceOfAsciiString) GEOM_Engine::GetAllDumpNames() const
{
  Handle(TColStd_HSequenceOfAsciiString) aRetSeq = new TColStd_HSequenceOfAsciiString;

  Resource_DataMapIteratorOfDataMapOfAsciiStringAsciiString it (_studyEntry2NameMap);
  for (; it.More(); it.Next()) {
    aRetSeq->Append(it.Value());
  }

  return aRetSeq;
}

//===========================================================================
//                     Internal functions
//===========================================================================
void ProcessFunction(Handle(GEOM_Function)&   theFunction,
                     TCollection_AsciiString& theScript,
                     const TVariablesList&    theVariables,
                     TDF_LabelMap&            theProcessed,
                     std::set<std::string>&   theIgnoreObjs)
{
  if (theFunction.IsNull()) return;

  if (theProcessed.Contains(theFunction->GetEntry())) return;

  // pass functions, that depends on nonexisting ones
  bool doNotProcess = false;
  TDF_LabelSequence aSeq;
  theFunction->GetDependency(aSeq);
  Standard_Integer aLen = aSeq.Length();
  for (Standard_Integer i = 1; i <= aLen && !doNotProcess; i++) {
    TDF_Label aRefLabel = aSeq.Value(i);
    Handle(TDF_Reference) aRef;
    if (!aRefLabel.FindAttribute(TDF_Reference::GetID(), aRef)) {
      doNotProcess = true;
    }
    else {
      if (aRef.IsNull() || aRef->Get().IsNull()) {
        doNotProcess = true;
      }
      else {
        Handle(TDataStd_TreeNode) aT;
        if (!TDataStd_TreeNode::Find(aRef->Get(), aT)) {
          doNotProcess = true;
        }
        else {
          TDF_Label aDepLabel = aT->Label();
          Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(aDepLabel);

          if (aFunction.IsNull()) doNotProcess = true;
          else if (!theProcessed.Contains(aDepLabel)) doNotProcess = true;
        }
      }
    }
  }

  if (doNotProcess) {
    TCollection_AsciiString anObjEntry;
    TDF_Tool::Entry(theFunction->GetOwnerEntry(), anObjEntry);
    theIgnoreObjs.insert(anObjEntry.ToCString());
    return;
  }
  theProcessed.Add(theFunction->GetEntry());

  TCollection_AsciiString aDescr = theFunction->GetDescription();
  if(aDescr.Length() == 0) return;

  //Check if its internal function which doesn't requires dumping
  if(aDescr == "None") return;

  //Replace parameter by notebook variables
  ReplaceVariables(aDescr,theVariables);
  theScript += "\n\t";
  theScript += aDescr;
}

//=============================================================================
/*!
 *  FindEntries: Returns a sequence of start/end positions of entries in the string
 */
//=============================================================================
Handle(TColStd_HSequenceOfInteger) FindEntries(TCollection_AsciiString& theString)
{
  Handle(TColStd_HSequenceOfInteger) aSeq = new TColStd_HSequenceOfInteger;
  Standard_Integer aLen = theString.Length();
  Standard_Boolean isFound = Standard_False;

  const char* arr = theString.ToCString();
  Standard_Integer i = 0, j;

  while(i < aLen) {
    int c = (int)arr[i];
    j = i+1;
    if(c >= 48 && c <= 57) { //Is digit?
 
      isFound = Standard_False;
      while((j < aLen) && ((c >= 48 && c <= 57) || c == 58) ) { //Check if it is an entry
	c = (int)arr[j++];  
	if(c == 58) isFound = Standard_True;
      }
      
      if(isFound && arr[j-2] != 58) { // last char should be a diggit
	aSeq->Append(i+1); // +1 because AsciiString starts from 1
	aSeq->Append(j-1);
      }
    }
     
	i = j;
  }

  return aSeq;
}

//=============================================================================
/*!
 *  ReplaceVariables: Replace parameters of the function by variales from 
 *                    Notebook if need
 */
//=============================================================================
void ReplaceVariables(TCollection_AsciiString& theCommand, 
                      const TVariablesList&    theVariables)
{
  if (MYDEBUG)
    cout<<"Command : "<<theCommand<<endl;

  if (MYDEBUG) {
    cout<<"All Entries:"<<endl;
    TVariablesList::const_iterator it = theVariables.begin();
    for(;it != theVariables.end();it++)
      cout<<"\t'"<<(*it).first<<"'"<<endl;
  }

  //Additional case - multi-row commands
  int aCommandIndex = 1;
  while( aCommandIndex < 10 ) { // tmp check
    TCollection_AsciiString aCommand = theCommand.Token("\n",aCommandIndex);
    if( aCommand.Length() == 0 )
      break;

    if (MYDEBUG)
      cout<<"Sub-command : "<<aCommand<<endl;

    Standard_Integer aStartCommandPos = theCommand.Location(aCommand,1,theCommand.Length());
    Standard_Integer aEndCommandPos = aStartCommandPos + aCommand.Length();

    //Get Entry of the result object
    TCollection_AsciiString anEntry;
    if( aCommand.Search("=") != -1 ) // command returns an object
      anEntry = aCommand.Token("=",1);
    else { // command modifies the object
      if (int aStartEntryPos = aCommand.Location(1,'(',1,aCommand.Length()))
        if (int aEndEntryPos = aCommand.Location(1,',',aStartEntryPos,aCommand.Length()))
          anEntry = aCommand.SubString(aStartEntryPos+1, aEndEntryPos-1);
    }
    //Remove white spaces
    anEntry.RightAdjust();
    anEntry.LeftAdjust();
    if(MYDEBUG)
      cout<<"Result entry : '" <<anEntry<<"'"<<endl;

    if ( anEntry.IsEmpty() ) {
      aCommandIndex++;
      continue;
    }

    //Check if result is list of entries - enough to get the first entry in this case
    int aNbEntries = 1;
    if( anEntry.Value( 1 ) == O_SQR_BRACKET && anEntry.Value( anEntry.Length() ) == C_SQR_BRACKET ) {
      while(anEntry.Location(aNbEntries,COMMA,1,anEntry.Length()))
	aNbEntries++;
      TCollection_AsciiString aSeparator(COMMA);
      anEntry = anEntry.Token(aSeparator.ToCString(),1);
      anEntry.Remove( 1, 1 );
      anEntry.RightAdjust();
      anEntry.LeftAdjust();
      if(MYDEBUG)
	cout<<"Sub-entry : '" <<anEntry<<"'"<<endl;
    }
    
    //Find variables used for object construction
    ObjectStates* aStates = 0;
    TVariablesList::const_iterator it = theVariables.find(anEntry);
    if( it != theVariables.end() )
      aStates = (*it).second;

    if(!aStates) {
      if(MYDEBUG)
	cout<<"Valiables list empty!!!"<<endl;
      aCommandIndex++;
      continue;
    }

    TState aVariables = aStates->GetCurrectState();

    if(MYDEBUG) {
      cout<<"Variables from SObject:"<<endl;
      for (int i = 0; i < aVariables.size();i++)
	cout<<"\t Variable["<<i<<"] = "<<aVariables[i].myVariable<<endl;
    }

    //Calculate total number of parameters
    Standard_Integer aTotalNbParams = 1;
    while(aCommand.Location(aTotalNbParams,COMMA,1,aCommand.Length()))
      aTotalNbParams++;

    if(MYDEBUG)
      cout<<"aTotalNbParams = "<<aTotalNbParams<<endl;

    Standard_Integer aFirstParam = aNbEntries;

    //Replace parameters by variables
    Standard_Integer aStartPos = 0;
    Standard_Integer aEndPos = 0;
    int iVar = 0;
    TCollection_AsciiString aVar, aReplacedVar;
    for(Standard_Integer i=aFirstParam;i <= aTotalNbParams;i++) {
      //Replace first parameter (bettwen '(' character and first ',' character)
      if(i == aFirstParam)
      {
	aStartPos = aCommand.Location(O_BRACKET, 1, aCommand.Length()) + 1;
	if(aTotalNbParams - aNbEntries > 0 )
	  aEndPos = aCommand.Location(aFirstParam, COMMA, 1, aCommand.Length());
	else
	  aEndPos = aCommand.Location(C_BRACKET, 1, aCommand.Length());	
      }
      //Replace last parameter (bettwen ',' character and ')' character)
      else if(i == aTotalNbParams)
      {
	aStartPos = aCommand.Location(i-1, COMMA, 1, aCommand.Length()) + 2;
	aEndPos = aCommand.Location(C_BRACKET, 1, aCommand.Length());
      }
      //Replace other parameters (bettwen two ',' characters)
      else if(i != aFirstParam && i != aTotalNbParams )
      {
	aStartPos = aCommand.Location(i-1, COMMA, 1, aCommand.Length()) + 2;
	aEndPos = aCommand.Location(i, COMMA, 1, aCommand.Length());
      }

      if( aCommand.Value( aStartPos ) == O_SQR_BRACKET )
	aStartPos++;
      if( aCommand.Value( aEndPos-1 ) == C_SQR_BRACKET )
	aEndPos--;
      if ( aStartPos == aEndPos )
        continue; // PAL20889: for "[]"

      if(MYDEBUG) 
	cout<<"aStartPos = "<<aStartPos<<", aEndPos = "<<aEndPos<<endl;

      aVar = aCommand.SubString(aStartPos, aEndPos-1);
      aVar.RightAdjust();
      aVar.LeftAdjust();
    
      if(MYDEBUG) 
	cout<<"Variable: '"<< aVar <<"'"<<endl;

      // specific case for sketcher
      if(aVar.Location( TCollection_AsciiString("Sketcher:"), 1, aVar.Length() ) != 0) {
	Standard_Integer aNbSections = 1;
	while( aVar.Location( aNbSections, ':', 1, aVar.Length() ) )
	  aNbSections++;
	aNbSections--;

	int aStartSectionPos = 0, aEndSectionPos = 0;
	TCollection_AsciiString aSection, aReplacedSection;
	for(Standard_Integer aSectionIndex = 1; aSectionIndex <= aNbSections; aSectionIndex++) {
	  aStartSectionPos = aVar.Location( aSectionIndex, ':', 1, aVar.Length() ) + 1;
	  if( aSectionIndex != aNbSections )
	    aEndSectionPos = aVar.Location( aSectionIndex + 1, ':', 1, aVar.Length() );
	  else
	    aEndSectionPos = aVar.Length();

	  aSection = aVar.SubString(aStartSectionPos, aEndSectionPos-1);
	  if(MYDEBUG) 
	    cout<<"aSection: "<<aSection<<endl;

	  Standard_Integer aNbParams = 1;
	  while( aSection.Location( aNbParams, ' ', 1, aSection.Length() ) )
	    aNbParams++;
	  aNbParams--;

	  int aStartParamPos = 0, aEndParamPos = 0;
	  TCollection_AsciiString aParameter, aReplacedParameter;
	  for(Standard_Integer aParamIndex = 1; aParamIndex <= aNbParams; aParamIndex++) {
	    aStartParamPos = aSection.Location( aParamIndex, ' ', 1, aSection.Length() ) + 1;
	    if( aParamIndex != aNbParams )
	      aEndParamPos = aSection.Location( aParamIndex + 1, ' ', 1, aSection.Length() );
	    else
	      aEndParamPos = aSection.Length() + 1;

	    aParameter = aSection.SubString(aStartParamPos, aEndParamPos-1);
	    if(MYDEBUG) 
	      cout<<"aParameter: "<<aParameter<<endl;

	    if(iVar >= aVariables.size())
	      continue;

	    aReplacedParameter = aVariables[iVar].myVariable;
	    if(aReplacedParameter.IsEmpty()) {
	      iVar++;
	      continue;
	    }

	    if(aVariables[iVar].isVariable) {
	      aReplacedParameter.InsertBefore(1,"'");
	      aReplacedParameter.InsertAfter(aReplacedParameter.Length(),"'");
	    }

	    if(MYDEBUG) 
	      cout<<"aSection before : "<<aSection<<endl;
	    aSection.Remove(aStartParamPos, aEndParamPos - aStartParamPos);
	    aSection.Insert(aStartParamPos, aReplacedParameter);
	    if(MYDEBUG) 
	      cout<<"aSection after  : "<<aSection<<endl<<endl;
	    iVar++;
	  }
	  if(MYDEBUG) 
	    cout<<"aVar before : "<<aVar<<endl;
	  aVar.Remove(aStartSectionPos, aEndSectionPos - aStartSectionPos);
	  aVar.Insert(aStartSectionPos, aSection);
	  if(MYDEBUG) 
	    cout<<"aVar after  : "<<aVar<<endl<<endl;
	}

	if(MYDEBUG) 
	  cout<<"aCommand before : "<<aCommand<<endl;
	aCommand.Remove(aStartPos, aEndPos - aStartPos);
	aCommand.Insert(aStartPos, aVar);
	if(MYDEBUG) 
	  cout<<"aCommand after  : "<<aCommand<<endl;

	break;
      } // end of specific case for sketcher

      //If parameter is entry or 'None', skip it
      if(theVariables.find(aVar) != theVariables.end() || aVar.Search(":") != -1 || aVar == PY_NULL)
	continue;

      if(iVar >= aVariables.size())
	continue;

      aReplacedVar = aVariables[iVar].myVariable;
      if(aReplacedVar.IsEmpty()) {
	iVar++;
	continue;
      }

      if(aVariables[iVar].isVariable) {
	aReplacedVar.InsertBefore(1,"\"");
	aReplacedVar.InsertAfter(aReplacedVar.Length(),"\"");
      }

      aCommand.Remove(aStartPos, aEndPos - aStartPos);
      aCommand.Insert(aStartPos, aReplacedVar);
      iVar++;
    }

    theCommand.Remove(aStartCommandPos, aEndCommandPos - aStartCommandPos);
    theCommand.Insert(aStartCommandPos, aCommand);

    aCommandIndex++;

    aStates->IncrementState();
  }

  if (MYDEBUG)
    cout<<"Command : "<<theCommand<<endl;
}

//================================================================================
/*!
 * \brief Constructor
 */
//================================================================================
ObjectStates::ObjectStates()
{
  _dumpstate = 0;
}

//================================================================================
/*!
 * \brief Destructor
 */
//================================================================================
ObjectStates::~ObjectStates()
{
}

//================================================================================
/*!
 * \brief Return current object state
 * \retval state - Object state (vector of notebook variable)
 */
//================================================================================
TState ObjectStates::GetCurrectState() const
{
  if(_states.size() > _dumpstate)
    return _states[_dumpstate];
  return TState();
}

//================================================================================
/*!
 * \brief Add new object state 
 * \param theState - Object state (vector of notebook variable)
 */
//================================================================================
void ObjectStates::AddState(const TState &theState)
{
  _states.push_back(theState);
}

//================================================================================
/*!
 * \brief Increment object state
 */
//================================================================================
void ObjectStates::IncrementState()
{
  _dumpstate++;
}

