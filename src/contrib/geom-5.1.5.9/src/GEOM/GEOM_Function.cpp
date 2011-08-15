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

#include <GEOM_Function.hxx>
#include <GEOM_Object.hxx>
#include <GEOM_Solver.hxx>
#include <GEOM_ISubShape.hxx>

#include <TDF.hxx>
#include <TDF_Tool.hxx>
#include <TDF_Data.hxx>
#include <TDF_ChildIterator.hxx>
#include <TDF_Reference.hxx>
#include <TDataStd_Integer.hxx>
#include <TDataStd_IntegerArray.hxx>
#include <TDataStd_Real.hxx>
#include <TDataStd_RealArray.hxx>
#include <TDataStd_Comment.hxx>
#include <TDataStd_TreeNode.hxx>
#include <TDataStd_UAttribute.hxx>
#include <TDataStd_ChildNodeIterator.hxx>
#include <TDataStd_ExtStringArray.hxx>
#include <TDataStd_ExtStringList.hxx>
#include <TDataStd_Expression.hxx>
#include <TDocStd_Owner.hxx>
#include <TDocStd_Document.hxx>
#include <TFunction_Function.hxx>
#include <TNaming_NamedShape.hxx>
#include <TNaming_Builder.hxx>

#include <TColStd_ListOfInteger.hxx>
#include <TColStd_ListIteratorOfListOfInteger.hxx>
#include <TColStd_HArray1OfReal.hxx>
#include <TColStd_HArray1OfInteger.hxx>
#include <TColStd_HSequenceOfTransient.hxx>
#include <TCollection_AsciiString.hxx>
#include <TCollection_ExtendedString.hxx>

#include <Standard_Failure.hxx>
#include <Standard_ErrorHandler.hxx> // CAREFUL ! position of this file is critic : see Lucien PIGNOLONI / OCC

#define ARGUMENT_LABEL 1
#define RESULT_LABEL 2
#define DESCRIPTION_LABEL 3
#define HISTORY_LABEL 4

#define EXPRESSION_LABEL 5
#define SCRIPTCOMMAND_LABEL 6

#define SUBSHAPES_LABEL 7 // 0020756: GetGroups
#define NAMING_LABEL 8 // 002020750: Naming during STEP import


#define STD_DOCUMENT_MAIN_LABEL 1

#define ARGUMENTS _label.FindChild((ARGUMENT_LABEL))
#define ARGUMENT(thePosition) _label.FindChild((ARGUMENT_LABEL)).FindChild((thePosition))
#define EXPRESSION(thePosition) _label.FindChild((EXPRESSION_LABEL)).FindChild((thePosition))
#define SUB_ARGUMENT(thePos1, thePos2) _label.FindChild((ARGUMENT_LABEL)).FindChild((thePos1)).FindChild((thePos2))

//=======================================================================
//function : GetFunctionTreeID
//purpose  :
//=======================================================================
const Standard_GUID& GEOM_Function::GetFunctionTreeID()
{
  static Standard_GUID aFunctionTreeID("FF1BBB00-5D14-4df2-980B-3A668264EA16");
  return aFunctionTreeID;
}


//=======================================================================
//function : GetDependencyID
//purpose  :
//=======================================================================
const Standard_GUID& GEOM_Function::GetDependencyID()
{
  static Standard_GUID aDependencyID("E2620650-2354-41bd-8C2C-210CFCD00948");
  return aDependencyID;
}

//=============================================================================
/*!
 *  GetFunction:
 */
//=============================================================================
Handle(GEOM_Function) GEOM_Function::GetFunction(const TDF_Label& theEntry)
{
  Handle(GEOM_Function) myRetVal;

  if(!theEntry.IsNull())
    if(theEntry.IsAttribute(TFunction_Function::GetID()))
      myRetVal = new GEOM_Function(theEntry);

  return myRetVal;
}

//=============================================================================
/*!
 *  Constructor:
 */
//=============================================================================
GEOM_Function::GEOM_Function(const TDF_Label& theEntry, const Standard_GUID& theGUID, int theType)
: _label(theEntry)
{
  TFunction_Function::Set(theEntry, theGUID);
  TDataStd_Integer::Set(theEntry, theType);

  //Add function to a function tree
  Handle(TDocStd_Document) aDoc = TDocStd_Owner::GetDocument(theEntry.Data());
  Handle(TDataStd_TreeNode) aRoot, aNode;
  if(!aDoc->Main().FindAttribute(GetFunctionTreeID(), aRoot))
    aRoot = TDataStd_TreeNode::Set(aDoc->Main(), GetFunctionTreeID());

  aNode = TDataStd_TreeNode::Set(theEntry, GetFunctionTreeID());
  aRoot->Append(aNode);
}

//=============================================================================
/*!
 *  GetOwner
 */
//=============================================================================
TDF_Label GEOM_Function::GetOwnerEntry()
{
  TDF_Label aFather = _label.Father();
  while(!aFather.IsRoot()) {
	if(aFather.IsAttribute(GEOM_Object::GetObjectID())) return aFather;
	aFather = aFather.Father();
  }

  return TDF_Label();
}

//=============================================================================
/*!
 *  GetDocumentOwner
 */
//=============================================================================
int GEOM_Function::GetDocumentID()
{
  Handle(TDocStd_Document) aDoc = TDocStd_Owner::GetDocument(_label.Data());
  if(aDoc.IsNull()) return 0;

  Handle(TDataStd_Integer) anID;
  if(!aDoc->Main().FindAttribute(TDataStd_Integer::GetID(), anID)) return 0;

  return anID->Get();
}

//=============================================================================
/*!
 *  GetType
 */
//=============================================================================
int GEOM_Function::GetType()
{
  _isDone = false;
  Handle(TDataStd_Integer) aType;
  if(!_label.FindAttribute(TDataStd_Integer::GetID(), aType)) return 0;
  _isDone = true;
  return aType->Get();
}

//=============================================================================
/*!
 *  GetValue
 */
//=============================================================================
TopoDS_Shape GEOM_Function::GetValue()
{
  _isDone = false;

  TopoDS_Shape aShape;
  TDF_Label aLabel = GetOwnerEntry();
  if (aLabel.IsRoot()) return aShape;
  Handle(GEOM_Object) anObject = GEOM_Object::GetObject(aLabel);
  if (anObject.IsNull()) return aShape;

  if (!anObject->IsMainShape()) {
    bool isResult = false;
    TDF_Label aResultLabel = _label.FindChild(RESULT_LABEL);
    if (!aResultLabel.IsNull()) {
      Handle(TNaming_NamedShape) aNS;
      if (aResultLabel.FindAttribute(TNaming_NamedShape::GetID(), aNS))
        isResult = true;
    }

    // compare tics
    if (isResult) {
      // tic of this
      Standard_Integer aTic = anObject->GetTic();

	  // tic of main shape
      // Check if the current function is a modification of a subshape
	  Handle(GEOM_Function) mySubShapeFunction;
	  if (this->GetType() == 28) 	//this func is a subshape
		mySubShapeFunction = this;
	  else						//this func is a modification fo a subshape
		mySubShapeFunction = anObject->GetFunction(1);
	  GEOM_ISubShape aCI (mySubShapeFunction);

      TDF_Label aLabelObjMainSh = aCI.GetMainShape()->GetOwnerEntry();
      if (aLabelObjMainSh.IsRoot()) return aShape;
      Handle(GEOM_Object) anObjMainSh = GEOM_Object::GetObject(aLabelObjMainSh);
      if (anObjMainSh.IsNull()) return aShape;
      Standard_Integer aTicMainSh = anObjMainSh->GetTic();

      // compare
      isResult = ((aTic == aTicMainSh) ? true : false);
    }

    if (!isResult) {
      try {
#if (OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE) > 0x060100
		OCC_CATCH_SIGNALS;
#endif
		GEOM_Solver aSolver(GEOM_Engine::GetEngine());
        if (!aSolver.ComputeFunction(this)) {
          MESSAGE("GEOM_Object::GetValue Error : Can't build a sub shape");
          return aShape;
        }
      }
      catch (Standard_Failure) {
		Handle(Standard_Failure) aFail = Standard_Failure::Caught();
        MESSAGE("GEOM_Function::GetValue Error: " << aFail->GetMessageString());
        return aShape;
      }
    }
  }

  TDF_Label aResultLabel = _label.FindChild(RESULT_LABEL);
  Handle(TNaming_NamedShape) aNS;
  if (!aResultLabel.FindAttribute(TNaming_NamedShape::GetID(), aNS)) return aShape;

  aShape = aNS->Get();

  _isDone = true;
  return aShape;
}

//=============================================================================
/*!
 *  SetValue
 */
//=============================================================================
void GEOM_Function::SetValue(TopoDS_Shape& theShape)
{
  _isDone = false;
  TDF_Label aResultLabel = _label.FindChild(RESULT_LABEL);
  TNaming_Builder aBuilder(aResultLabel);

  aBuilder.Generated(theShape);

  // synchronisation between main shape and its sub-shapes
  TDF_Label aLabel = GetOwnerEntry();
  if (aLabel.IsRoot()) return;
  Handle(GEOM_Object) anObject = GEOM_Object::GetObject(aLabel);
  if (anObject.IsNull()) return;
  if (anObject->IsMainShape()) {
    // increase modifications counter of this (main) shape
    anObject->IncrementTic();
  }
  else {
	// update modifications counter of this (sub-) shape to be the same as on main shape
	// Check if the current function is a modification of a subshape
	Handle(GEOM_Function) mySubShapeFunction;
	if (this->GetType() == 28) 	//this func is a subshape
	  mySubShapeFunction = this;
	else						//this func is a modification fo a subshape
	  mySubShapeFunction = anObject->GetFunction(1);
	GEOM_ISubShape aCI (mySubShapeFunction);

    TDF_Label aLabelObjMainSh = aCI.GetMainShape()->GetOwnerEntry();
    if (aLabelObjMainSh.IsRoot()) return;
    Handle(GEOM_Object) anObjMainSh = GEOM_Object::GetObject(aLabelObjMainSh);
    if (anObjMainSh.IsNull()) return;

    anObject->SetTic(anObjMainSh->GetTic());
  }

  _isDone = true;
}

//=============================================================================
/*!
 *  GetDriverGUID
 */
//=============================================================================
Standard_GUID GEOM_Function::GetDriverGUID()
{
  Handle(TFunction_Function) aFunction;
  if(!_label.FindAttribute(TFunction_Function::GetID(), aFunction)) {
    return TDF::LowestID();
  }

  return aFunction->GetDriverGUID();
}

//=============================================================================
/*!
 *  GetDescription
 */
//=============================================================================
TCollection_AsciiString GEOM_Function::GetDescription()
{
	Handle(TDataStd_Comment) aComment;
	TDF_Label aChild = _label.FindChild(DESCRIPTION_LABEL);
	if(!aChild.FindAttribute(TDataStd_Comment::GetID(), aComment)) return TCollection_AsciiString();
	TCollection_AsciiString aDescr(aComment->Get());
	return aDescr;
}

//=============================================================================
/*!
 *  SetDescription
 */
//=============================================================================
void GEOM_Function::SetDescription(const TCollection_AsciiString& theDescription)
{
	TDF_Label aChild = _label.FindChild(DESCRIPTION_LABEL);
	Handle(TDataStd_Comment) aComment =
			TDataStd_Comment::Set(aChild, TCollection_ExtendedString(theDescription));
}

//=============================================================================
/*!
 *  GetScriptCommand
 */
//=============================================================================
TCollection_AsciiString GEOM_Function::GetScriptCommand()
{
	Handle(TDataStd_Comment) aComment;
	TDF_Label aChild = _label.FindChild(SCRIPTCOMMAND_LABEL);
	if(!aChild.FindAttribute(TDataStd_Comment::GetID(), aComment)) return TCollection_AsciiString();
	TCollection_AsciiString aCommand(aComment->Get());
	return aCommand;
}

//=============================================================================
/*!
 *  SetScriptCommand
 */
//=============================================================================
void GEOM_Function::SetScriptCommand(const TCollection_AsciiString& theScriptCommand)
{
	TDF_Label aChild = _label.FindChild(SCRIPTCOMMAND_LABEL);
	Handle(TDataStd_Comment) aComment =
			TDataStd_Comment::Set(aChild, TCollection_ExtendedString(theScriptCommand));
}

//=============================================================================
/*!
 *  SetReal
 */
//=============================================================================
void GEOM_Function::SetReal(int thePosition, double theValue)
{
  _isDone = false;
  if(thePosition <= 0) return;

  TDF_Label anArgLabel 			= ARGUMENT(thePosition);
  TDF_Label anArgLabelExpr  	= EXPRESSION(thePosition);

  if( anArgLabelExpr.IsAttribute(TDataStd_Expression::GetID()) )
	anArgLabelExpr.ForgetAttribute( TDataStd_Expression::GetID() );

  TDataStd_Real::Set(anArgLabel, theValue);
  _isDone = true;
}
//=============================================================================
/*!
 *  SetReal As Expression
 */
//=============================================================================
void GEOM_Function::SetReal(int thePosition, const TCollection_AsciiString& theValue)
{
  _isDone = false;
  if(thePosition <= 0) return;

  TDF_Label anArgLabel 			= ARGUMENT(thePosition);
  TDF_Label anArgLabelExpr  	= EXPRESSION(thePosition);

  double theRealValue;

  theRealValue = GEOM_Engine::GetEngine()->GetInterpreterEquationValue(GetDocumentID(), theValue);

  TDataStd_Expression::Set(anArgLabelExpr)->SetExpression(theValue);
  TDataStd_Real::Set(anArgLabel, theRealValue);

  _isDone = true;
}

//=============================================================================
/*!
 *  SetRealArray
 */
//=============================================================================
void GEOM_Function::SetRealArray (int thePosition,
								  const Handle(TColStd_HArray1OfReal)& theArray)
{
  _isDone = false;
  if(thePosition <= 0) return;

  TDF_Label anArgLabel 		= ARGUMENT(thePosition);
  TDF_Label anArgLabelExpr  = EXPRESSION(thePosition);

  if( anArgLabelExpr.IsAttribute(TDataStd_ExtStringArray::GetID()) )
	anArgLabelExpr.ForgetAttribute( TDataStd_ExtStringArray::GetID() );

  Handle(TDataStd_RealArray) anAttr = TDataStd_RealArray::Set(anArgLabel, theArray->Lower(), theArray->Upper());
  anAttr->ChangeArray(theArray);

  _isDone = true;
}

//=============================================================================
/*!
 *  SetRealArray As EXPRESSION
 */
//=============================================================================
void GEOM_Function::SetRealArray (int thePosition,
								  const Handle(TColStd_HArray1OfAsciiString)& theStringArray)
{
  _isDone = false;
  if(thePosition <= 0) return;

  TDF_Label anArgLabel 		= ARGUMENT(thePosition);
  TDF_Label anArgLabelExpr  = EXPRESSION(thePosition);

  Handle(TDataStd_RealArray)      aTDFRealArray   = new TDataStd_RealArray;
  aTDFRealArray->Init(theStringArray->Lower(), theStringArray->Upper());

  Handle(TDataStd_ExtStringArray) aTDFStringArray = new TDataStd_ExtStringArray;
  aTDFStringArray->Init(theStringArray->Lower(), theStringArray->Upper());

  double aRealValue;

  for (int itr = theStringArray->Lower(); itr <= theStringArray->Upper(); itr ++) {
    aRealValue = GEOM_Engine::GetEngine()->GetInterpreterEquationValue(GetDocumentID(), theStringArray->Value(itr));

    aTDFRealArray->SetValue(itr, aRealValue);
    aTDFStringArray->SetValue(itr, theStringArray->Value(itr));
  }

  anArgLabel.AddAttribute(aTDFRealArray);
  anArgLabelExpr.AddAttribute(aTDFStringArray);

  _isDone = true;
}

//=============================================================================
/*!
 *  GetReal
 */
//=============================================================================
double GEOM_Function::GetReal(int thePosition)
{
  _isDone = false;

  if(thePosition <= 0) return 0.0;
  Handle(TDataStd_Real) aReal;

  TDF_Label anArgLabel 		= ARGUMENT(thePosition);
  TDF_Label anArgLabelExpr 	= EXPRESSION(thePosition);

  Handle(TDataStd_Expression) anExpression;

  if(anArgLabelExpr.FindAttribute(TDataStd_Expression::GetID() , anExpression  )) {
    TCollection_AsciiString theValueExpr = anExpression->GetExpression();

    double theRealValue = GEOM_Engine::GetEngine()->GetInterpreterEquationValue(GetDocumentID(), theValueExpr);
    TDataStd_Real::Set(anArgLabel, theRealValue);
  }

  if(!anArgLabel.FindAttribute(TDataStd_Real::GetID(), aReal)) return 0.0;
  _isDone = true;
  return aReal->Get();
}

//=============================================================================
/*!
 *  GetRealArray
 */
//=============================================================================
Handle(TColStd_HArray1OfReal) GEOM_Function::GetRealArray(int thePosition)
{
  Handle(TColStd_HArray1OfReal) aRetVal;

  _isDone = false;
  if(thePosition <= 0) return aRetVal;

  Handle(TDataStd_RealArray) aRealArray;

  TDF_Label anArgLabel 		= ARGUMENT(thePosition);
  TDF_Label anArgLabelExpr	= EXPRESSION(thePosition);

  if(!anArgLabel.FindAttribute(TDataStd_RealArray::GetID(), aRealArray)) return aRetVal;

  Handle(TDataStd_ExtStringArray) aTDFStringArray;

  if(anArgLabelExpr.FindAttribute(TDataStd_ExtStringArray::GetID() , aTDFStringArray  )) {
    double aRealValue;
    for (int itr = aTDFStringArray->Lower(); itr <= aTDFStringArray->Upper(); itr ++) {
      aRealValue = GEOM_Engine::GetEngine()->GetInterpreterEquationValue(GetDocumentID(), aTDFStringArray->Value(itr));
      aRealArray->SetValue(itr, aRealValue);
    }
  }
  _isDone = true;
  aRetVal = aRealArray->Array();
  return aRetVal;
}

//=============================================================================
/*!
 *  SetInteger
 */
//=============================================================================
void GEOM_Function::SetInteger(int thePosition, int theValue)
{
  _isDone = false;
  if(thePosition <= 0) return;

  TDF_Label anArgLabel = ARGUMENT(thePosition);
  TDF_Label anArgLabelExpr = EXPRESSION(thePosition);

  if( anArgLabelExpr.IsAttribute(TDataStd_Expression::GetID()) )
	anArgLabelExpr.ForgetAttribute( TDataStd_Expression::GetID() );

  TDataStd_Integer::Set(anArgLabel, theValue);
  _isDone = true;
}

//=============================================================================
/*!
 *  SetInteger As Expr
 */
//=============================================================================
void GEOM_Function::SetInteger(int thePosition, const TCollection_AsciiString& theValue)
{
  _isDone = false;
  if(thePosition <= 0) return;

  TDF_Label anArgLabel = ARGUMENT(thePosition);
  TDF_Label anArgLabelExpr 	= EXPRESSION(thePosition);

  double theDoubleToIntValue = GEOM_Engine::GetEngine()->GetInterpreterEquationValue(GetDocumentID(), theValue);

  TDataStd_Expression::Set(anArgLabelExpr)->SetExpression(theValue);
  TDataStd_Integer::Set(anArgLabel, (Standard_Integer) theDoubleToIntValue);

  _isDone = true;
}

//=============================================================================
/*!
 *  SetIntegerArray
 */
//=============================================================================
void GEOM_Function::SetIntegerArray (int thePosition,
									 const Handle(TColStd_HArray1OfInteger)& theArray)
{
  _isDone = false;
  if(thePosition <= 0) return;

  TDF_Label anArgLabel = ARGUMENT(thePosition);
  TDF_Label anArgLabelExpr = EXPRESSION(thePosition);

  if( anArgLabelExpr.IsAttribute(TDataStd_ExtStringArray::GetID()) )
	anArgLabelExpr.ForgetAttribute( TDataStd_ExtStringArray::GetID() );

  Handle(TDataStd_IntegerArray) anAttr = TDataStd_IntegerArray::Set(anArgLabel, theArray->Lower(), theArray->Upper());
  anAttr->ChangeArray(theArray);
  _isDone = true;
}

//=============================================================================
/*!
 *  SetIntegerArray As Expr
 */
//=============================================================================
void GEOM_Function::SetIntegerArray (int thePosition,
									 const Handle(TColStd_HArray1OfAsciiString)& theArray)
{
  _isDone = false;
  if(thePosition <= 0) return;

  TDF_Label anArgLabel = ARGUMENT(thePosition);
  TDF_Label anArgLabelExpr = EXPRESSION(thePosition);

  Handle(TDataStd_IntegerArray)      aTDFIntArray   = new TDataStd_IntegerArray;
  aTDFIntArray->Init(theArray->Lower(), theArray->Upper());

  Handle(TDataStd_ExtStringArray) aTDFStringArray = new TDataStd_ExtStringArray;
  aTDFStringArray->Init(theArray->Lower(), theArray->Upper());

  double theDoubleToIntValue;

  for (int itr = theArray->Lower(); itr <= theArray->Upper(); itr ++) {
    theDoubleToIntValue = GEOM_Engine::GetEngine()->GetInterpreterEquationValue(GetDocumentID(), theArray->Value(itr));

    aTDFIntArray->SetValue(itr, (Standard_Integer) theDoubleToIntValue);
    aTDFStringArray->SetValue(itr, theArray->Value(itr));
  }

  anArgLabel.AddAttribute(aTDFIntArray);
  anArgLabelExpr.AddAttribute(aTDFStringArray);

  _isDone = true;
}

//=============================================================================
/*!
 *  GetInteger
 */
//=============================================================================
int GEOM_Function::GetInteger(int thePosition)
{
  _isDone = false;
  if(thePosition <= 0) return 0;
  Handle(TDataStd_Integer) anInteger;

  TDF_Label anArgLabel = ARGUMENT(thePosition);
  TDF_Label anArgLabelExpr = EXPRESSION(thePosition);

  Handle(TDataStd_Expression) anExpression;

  if(anArgLabelExpr.FindAttribute(TDataStd_Expression::GetID() , anExpression  )) {
    TCollection_AsciiString theValueExpr = anExpression->GetExpression();

    double theDoubleToIntValue = GEOM_Engine::GetEngine()->GetInterpreterEquationValue(GetDocumentID(), theValueExpr);
    TDataStd_Integer::Set(anArgLabel, (Standard_Integer) theDoubleToIntValue);
  }

  if(!anArgLabel.FindAttribute(TDataStd_Integer::GetID(), anInteger)) return 0;

  _isDone = true;
  return anInteger->Get();
}

//=============================================================================
/*!
 *  GetIntegerArray
 */
//=============================================================================
Handle(TColStd_HArray1OfInteger) GEOM_Function::GetIntegerArray(int thePosition)
{
  _isDone = false;
  if(thePosition <= 0) return 0;
  Handle(TDataStd_IntegerArray) anIntegerArray;

  TDF_Label anArgLabel = ARGUMENT(thePosition);
  TDF_Label anArgLabelExpr = EXPRESSION(thePosition);

  if(!anArgLabel.FindAttribute(TDataStd_IntegerArray::GetID(), anIntegerArray)) return 0;

  Handle(TDataStd_ExtStringArray) aTDFStringArray;
  if(anArgLabelExpr.FindAttribute(TDataStd_ExtStringArray::GetID() , aTDFStringArray  )) {
    double theDoubleToIntValue;
    for (int itr = aTDFStringArray->Lower(); itr <= aTDFStringArray->Upper(); itr ++) {
      theDoubleToIntValue = GEOM_Engine::GetEngine()->GetInterpreterEquationValue(GetDocumentID(), aTDFStringArray->Value(itr));
      anIntegerArray->SetValue(itr, (Standard_Integer) theDoubleToIntValue);
    }
  }
  _isDone = true;
  return anIntegerArray->Array();
}

//=============================================================================
/*!
 *  GetSingleValueAsString
 */
//=============================================================================
TCollection_AsciiString GEOM_Function::GetSingleValueAsString(int thePosition)
{
  _isDone = false;

  TCollection_AsciiString aResult = "";

  if(thePosition <= 0) return aResult;

  TDF_Label anArgLabel      = ARGUMENT(thePosition);
  TDF_Label anArgLabelExpr 	= EXPRESSION (thePosition);

  Handle(TDataStd_Comment) aString;
  Handle(TDataStd_Real)    aReal;
  Handle(TDataStd_Integer) anInteger;

  if(anArgLabelExpr.FindAttribute(TDataStd_Comment::GetID() , aString  ))
	aResult = aString->Get();
  else if (anArgLabelExpr.FindAttribute(TDataStd_Real::GetID() , aReal  ))
	aResult = aReal->Get();
  else if (anArgLabelExpr.FindAttribute(TDataStd_Integer::GetID() , anInteger  ))
	aResult = anInteger->Get();
  else
	aResult = "";

  _isDone = true;
  
  return aResult;
}

//=============================================================================
/*!
 *  GetArrayValueAsString
 */
//=============================================================================
Handle(TColStd_HArray1OfExtendedString) GEOM_Function::GetArrayValueAsString(int thePosition)
{
  Handle(TColStd_HArray1OfExtendedString) aResult;

  _isDone = false;
  if(thePosition <= 0) return aResult;

  TDF_Label anArgLabel        = ARGUMENT(thePosition);
  TDF_Label anArgLabelExpr = EXPRESSION (thePosition);

  Handle(TDataStd_ExtStringArray) aStringArray;
  Handle(TDataStd_RealArray)      aRealArray;
  Handle(TDataStd_IntegerArray)   anIntegerArray;

  if(anArgLabelExpr.FindAttribute(TDataStd_ExtStringArray::GetID() , aStringArray  ))
  {
	aResult = new TColStd_HArray1OfExtendedString(aStringArray->Lower(), aStringArray->Upper());
	for (int itr = aStringArray->Lower();itr <= aStringArray->Upper();itr++)
	  aResult->SetValue(itr,aStringArray->Value(itr));
  }
  else if (anArgLabelExpr.FindAttribute(TDataStd_RealArray::GetID() , aRealArray  ))
  {
	aResult = new TColStd_HArray1OfExtendedString(aRealArray->Lower(), aRealArray->Upper());
	for (int itr = aRealArray->Lower();itr <= aRealArray->Upper();itr++)
	  aResult->SetValue(itr,aRealArray->Value(itr));
  }
  else if (anArgLabelExpr.FindAttribute(TDataStd_IntegerArray::GetID() , anIntegerArray  ))
  {
	aResult = new TColStd_HArray1OfExtendedString(anIntegerArray->Lower(), anIntegerArray->Upper());
	for (int itr = anIntegerArray->Lower();itr <= anIntegerArray->Upper();itr++)
	  aResult->SetValue(itr,anIntegerArray->Value(itr));
  }

  _isDone = true;

  return aResult;
}

//=============================================================================
/*!
 *  SetString
 */
//=============================================================================
void GEOM_Function::SetString(int thePosition, const TCollection_AsciiString& theValue)
{
  _isDone = false;
  if(thePosition <= 0) return;
  TDF_Label anArgLabel = ARGUMENT(thePosition);
  TDataStd_Comment::Set(anArgLabel, theValue);
  _isDone = true;
}

//=============================================================================
/*!
 *  GetString
 */
//=============================================================================
TCollection_AsciiString GEOM_Function::GetString(int thePosition)
{
  _isDone = false;
  TCollection_AsciiString aRes;
  if(thePosition <= 0) return aRes;
  Handle(TDataStd_Comment) aString;
  TDF_Label anArgLabel = ARGUMENT(thePosition);
  if(!anArgLabel.FindAttribute(TDataStd_Comment::GetID(), aString)) return aRes;

  _isDone = true;
  aRes = TCollection_AsciiString(aString->Get());
  return aRes;
}

//=============================================================================
/*!
 *  SetReference
 */
//=============================================================================
void GEOM_Function::SetReference(int thePosition, Handle(GEOM_Function) theReference)
{
  _isDone = false;
  if(thePosition <= 0) return;
  if(theReference.IsNull()) return;
  TDF_Label anArgLabel = ARGUMENT(thePosition);
  TDF_Reference::Set(anArgLabel, theReference->GetEntry());
  TDataStd_UAttribute::Set(anArgLabel, GetDependencyID());
  _isDone = true;
  return;
}

//=============================================================================
/*!
 *  GetReference
 */
//=============================================================================
Handle(GEOM_Function) GEOM_Function::GetReference(int thePosition)
{
  Handle(GEOM_Function) aRetVal;

  _isDone = false;
  if(thePosition <= 0) return aRetVal;
  TDF_Label anArgLabel = ARGUMENT(thePosition);
  Handle(TDF_Reference) aRef;
  if(!anArgLabel.FindAttribute(TDF_Reference::GetID(), aRef)) return aRetVal;
  _isDone = true;
  aRetVal = GetFunction(aRef->Get());
  return aRetVal;
}

//=============================================================================
/*!
 *  SetReferenceLabel
 */
//=============================================================================
void GEOM_Function::SetReferenceLabel(int thePosition, const TDF_Label& theReference)
{
  _isDone = false;
  if(thePosition <= 0) return;
  if(theReference.IsNull()) return;
  TDF_Label anArgLabel = ARGUMENT(thePosition);
  TDF_Reference::Set(anArgLabel, theReference);
  TDataStd_UAttribute::Set(anArgLabel, GetDependencyID());
  _isDone = true;
  return;
}

//=============================================================================
/*!
 *  GetReferenceLabel
 */
//=============================================================================
TDF_Label GEOM_Function::GetReferenceLabel(int thePosition)
{
  TDF_Label aRetVal;

  _isDone = false;
  if(thePosition <= 0) return aRetVal;
  TDF_Label anArgLabel = ARGUMENT(thePosition);

  Handle(TDF_Reference) aRef;
  if(!anArgLabel.FindAttribute(TDF_Reference::GetID(), aRef)) return aRetVal;
  _isDone = true;

  aRetVal = aRef->Get();
  return aRetVal;
}

//=============================================================================
/*!
 *  SetStringArray
 */
//=============================================================================
void GEOM_Function::SetStringArray(int thePosition, const Handle(TColStd_HArray1OfExtendedString)& theArray)
{
  _isDone = false;
  if(thePosition <= 0 || theArray.IsNull()) return;
  TDF_Label anArgLabel = ARGUMENT(thePosition);

  Handle(TDataStd_ExtStringArray) anArray = new TDataStd_ExtStringArray;
  anArray->ChangeArray(theArray);
  anArgLabel.AddAttribute(anArray);

  _isDone = true;
}


//=============================================================================
/*!
 *  GetStringArray
 */
//=============================================================================
Handle(TColStd_HArray1OfExtendedString) GEOM_Function::GetStringArray(int thePosition)
{
  Handle(TColStd_HArray1OfExtendedString) aRetVal;

  _isDone = false;
  if(thePosition <= 0) return aRetVal;
  TDF_Label anArgLabel = ARGUMENT(thePosition);
  Handle(TDataStd_ExtStringArray) anArray;
  if(!anArgLabel.FindAttribute(TDataStd_ExtStringArray::GetID(), anArray)) return aRetVal;

  _isDone = true;
  aRetVal = anArray->Array();
  return aRetVal;
}

//=======================================================================
//function : GetReferencesTreeID
//purpose  :
//=======================================================================
const Standard_GUID& GEOM_Function::GetReferencesTreeID()
{
  static Standard_GUID aReferencesTreeID("FF1BBB10-5D14-4df2-980B-3A668264EA16");
  return aReferencesTreeID;
}

//=============================================================================
/*!
 *  SetReferenceList
 */
//=============================================================================
void GEOM_Function::SetReferenceList (int thePosition,
                                      const Handle(TColStd_HSequenceOfTransient)& theRefList)
{
  _isDone = false;
  if(thePosition <= 0) return;

  // parent label for the list of references
  TDF_Label anArgLabel = ARGUMENT(thePosition);
  anArgLabel.ForgetAllAttributes();

  // set TreeNode on the parent label
  Handle(TDataStd_TreeNode) aRoot, aNode;
  aRoot = TDataStd_TreeNode::Set(anArgLabel, GetReferencesTreeID());

  // store references on sub-labels of the parent label
  Handle(GEOM_Function) aFunc;
  Standard_Integer ind, len = theRefList->Length();
  for (ind = 1; ind <= len; ind++) {
    aFunc = Handle(GEOM_Function)::DownCast(theRefList->Value(ind));
    if (aFunc.IsNull()) continue;
    TDF_Label anArgLabel_i = SUB_ARGUMENT(thePosition, ind);
    TDF_Reference::Set(anArgLabel_i, aFunc->GetEntry());
    TDataStd_UAttribute::Set(anArgLabel_i, GetDependencyID());

    // set TreeNode on the child label
    aNode = TDataStd_TreeNode::Set(anArgLabel_i, GetReferencesTreeID());
    aRoot->Append(aNode);
  }

  _isDone = true;
  return;
}

//=============================================================================
/*!
 *  GetReferenceList
 */
//=============================================================================
Handle(TColStd_HSequenceOfTransient) GEOM_Function::GetReferenceList(int thePosition)
{
  Handle(TColStd_HSequenceOfTransient) aResult = new TColStd_HSequenceOfTransient;
  _isDone = false;
  if(thePosition <= 0) return aResult;

  // parent label for the list of references
  TDF_Label anArgLabel = ARGUMENT(thePosition);
  Handle(TDF_Reference) aRef;

  // get TreeNode on the parent label
  Handle(TDataStd_TreeNode) aRoot, aNode;
  if(!anArgLabel.FindAttribute(GetReferencesTreeID(), aRoot))
    return aResult;

  // get references, stored on sub-labels of the parent label
  TDF_Label aLabel_i;
  TDataStd_ChildNodeIterator anIter (aRoot);
  for (; anIter.More(); anIter.Next()) {
    aNode = anIter.Value();
    aLabel_i = aNode->Label();
    if (!aLabel_i.FindAttribute(TDF_Reference::GetID(), aRef)) continue;
    Handle(GEOM_Function) aFunc_i = GetFunction(aRef->Get());
    if (aFunc_i.IsNull()) continue;
    aResult->Append(aFunc_i);
  }

  _isDone = true;
  return aResult;
}

//=============================================================================
/*!
 *  SetShape
 */
//=============================================================================
//void GEOM_Function::SetShape(int thePosition, const TopoDS_Shape& theShape)
//{
//  _isDone = false;
//  if(thePosition <= 0 || theShape.IsNull()) return;
//
//  TDF_Label anArgLabel = ARGUMENT(thePosition);
//  TNaming_Builder aBuilder(anArgLabel);
//  aBuilder.Generated(theShape);
//
//  _isDone = true;
//  return;
//}
//
//=============================================================================
/*!
 *  GetShape
 */
//=============================================================================
//TopoDS_Shape GEOM_Function::GetShape(int thePosition)
//{
//  _isDone = false;
//  TopoDS_Shape aShape;
//  if(thePosition <= 0) return aShape;
//
//  TDF_Label anArgLabel = ARGUMENT(thePosition);
//  Handle(TNaming_NamedShape) aNS;
//  if(!anArgLabel.FindAttribute(TNaming_NamedShape::GetID(), aNS)) return aShape;
//
//  aShape = aNS->Get();
//  _isDone = true;
//  return aShape;
//}


//=============================================================================
/*!
 *  GetDependency
 */
//=============================================================================
void GEOM_Function::GetDependency(TDF_LabelSequence& theSeq)
{
  TDF_ChildIterator anIterator(ARGUMENTS, Standard_True);
  for(; anIterator.More(); anIterator.Next()) {
    if(anIterator.Value().IsAttribute(GetDependencyID())) theSeq.Append(anIterator.Value());
  }
}

//=============================================================================
/*!
 *  AddSubShapeReference
 */
//=============================================================================
void GEOM_Function::AddSubShapeReference(Handle(GEOM_Function) theSubShape)
{
  _isDone = false;

  TDF_Label aSubShapesLabel = _label.FindChild(SUBSHAPES_LABEL);

  Handle(TDataStd_ExtStringList) aList;
  if (!aSubShapesLabel.FindAttribute(TDataStd_ExtStringList::GetID(), aList)) {
    aList = new TDataStd_ExtStringList;
    aSubShapesLabel.AddAttribute(aList);
  }

  TCollection_AsciiString anEntry;
  TDF_Tool::Entry(theSubShape->GetOwnerEntry(), anEntry);
  aList->Append(anEntry);

  _isDone = true;
}

//=============================================================================
/*!
 *  RemoveSubShapeReference
 */
//=============================================================================
void GEOM_Function::RemoveSubShapeReference(Handle(GEOM_Function) theSubShape)
{
  _isDone = false;

  TDF_Label aSubShapesLabel = _label.FindChild(SUBSHAPES_LABEL);

  Handle(TDataStd_ExtStringList) aList;
  if (aSubShapesLabel.FindAttribute(TDataStd_ExtStringList::GetID(), aList)) {
    TCollection_AsciiString anEntry;
    TDF_Tool::Entry(theSubShape->GetOwnerEntry(), anEntry);
    aList->Remove(anEntry);
  }

  _isDone = true;
}

//=============================================================================
/*!
 *  HasSubShapeReferences
 */
//=============================================================================
bool GEOM_Function::HasSubShapeReferences()
{
  _isDone = true;

  TDF_Label aSubShapesLabel = _label.FindChild(SUBSHAPES_LABEL);
  return aSubShapesLabel.IsAttribute(TDataStd_ExtStringList::GetID());
}

//=============================================================================
/*!
 *  GetSubShapeReferences
 */
//=============================================================================
const TDataStd_ListOfExtendedString& GEOM_Function::GetSubShapeReferences()
{
  _isDone = false;

  TDF_Label aSubShapesLabel = _label.FindChild(SUBSHAPES_LABEL);

  Handle(TDataStd_ExtStringList) aList;
  if (!aSubShapesLabel.FindAttribute(TDataStd_ExtStringList::GetID(), aList)) {
    aList = new TDataStd_ExtStringList;
    aSubShapesLabel.AddAttribute(aList);
  }

  _isDone = true;
  return aList->List();
}

//=============================================================================
/*!
 *  GetHistoryEntry
 */
//=============================================================================
TDF_Label GEOM_Function::GetHistoryEntry (const Standard_Boolean create)
{
  return _label.FindChild(HISTORY_LABEL, create);
}

//=============================================================================
/*!
 *  GetArgumentHistoryEntry
 */
//=============================================================================
TDF_Label GEOM_Function::GetArgumentHistoryEntry (const TDF_Label&       theArgumentRefEntry,
                                                  const Standard_Boolean create)
{
  TColStd_ListOfInteger anArgumentRefTags;
  TDF_Tool::TagList(theArgumentRefEntry, anArgumentRefTags);
  Standard_Integer anArgumentRefLabelPos = anArgumentRefTags.Extent();

  TDF_Label aHistoryLabel = GetHistoryEntry(create);
  if (aHistoryLabel.IsNull())
    return aHistoryLabel;
  Standard_Integer aHistoryLabelPos = aHistoryLabel.Depth() + 1;

  Standard_Integer itag;
  TDF_Label aHistoryCurLabel = aHistoryLabel;
  TColStd_ListIteratorOfListOfInteger aListIter (anArgumentRefTags);
  for (itag = 1; itag <= aHistoryLabelPos; itag++) {
    aListIter.Next();
  }
  for (; itag <= anArgumentRefLabelPos; itag++) {
    aHistoryCurLabel = aHistoryCurLabel.FindChild(aListIter.Value(), create);
    if (aHistoryCurLabel.IsNull())
      return aHistoryCurLabel;
    aListIter.Next();
  }

  return aHistoryCurLabel;
}

//=============================================================================
/*!
 *  GetNamingEntry
 */
//=============================================================================
TDF_Label GEOM_Function::GetNamingEntry (const Standard_Boolean create)
{
  return _label.FindChild(NAMING_LABEL, create);
}

//=======================================================================
//function :  GEOM_Function_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOM_Function_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(MMgt_TShared);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(Standard_Transient);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOM_Function",
			                                 sizeof(GEOM_Function),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================

const Handle(GEOM_Function) Handle(GEOM_Function)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOM_Function) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOM_Function))) {
       _anOtherObject = Handle(GEOM_Function)((Handle(GEOM_Function)&)AnObject);
     }
  }

  return _anOtherObject ;
}
