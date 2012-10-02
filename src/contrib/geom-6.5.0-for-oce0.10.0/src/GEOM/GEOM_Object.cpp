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

#include <Standard_Stream.hxx>

#include "utilities.h"

#include <GEOM_Object.hxx>
#include <GEOM_Engine.hxx>
#include <GEOM_Solver.hxx>
#include <TDF_Tool.hxx>
#include <TDF_Data.hxx>
#include <TDF_Reference.hxx>
#include <TDF_LabelSequence.hxx>
#include <TDocStd_Owner.hxx>
#include <TDocStd_Document.hxx>
#include <TDataStd_Integer.hxx>
#include <TDataStd_Real.hxx>
#include <TDataStd_ChildNodeIterator.hxx>
#include <TDataStd_UAttribute.hxx>
#include <TDataStd_Name.hxx>
#include <TDataStd_Comment.hxx>
#include <TDataStd_RealArray.hxx>
#include <TDataStd_ByteArray.hxx>
#include <TColStd_HArray1OfReal.hxx>
#include <TCollection_AsciiString.hxx>
#include <TCollection_ExtendedString.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TopExp.hxx>

#define FUNCTION_LABEL(theNb) (_label.FindChild(1).FindChild((theNb)))
#define TYPE_LABEL       2
#define FREE_LABEL       3
#define TIC_LABEL        4
#define COLOR_LABEL      5
#define AUTO_COLOR_LABEL 6
#define MARKER_LABEL     7

#define MARKER_LABEL_TYPE 1
#define MARKER_LABEL_SIZE 2
#define MARKER_LABEL_ID   3

//=======================================================================
//function : GetObjectID
//purpose  :
//=======================================================================
const Standard_GUID& GEOM_Object::GetObjectID()
{
  static Standard_GUID anObjectID("FF1BBB01-5D14-4df2-980B-3A668264EA16");
  return anObjectID;
}

//=======================================================================
//function : GetSubShapeID
//purpose  :
//=======================================================================
const Standard_GUID& GEOM_Object::GetSubShapeID()
{
  static Standard_GUID anObjectID("FF1BBB68-5D14-4df2-980B-3A668264EA16");
  return anObjectID;
}

//=============================================================================
/*!
 *  GetObject
 */
//=============================================================================
Handle(GEOM_Object) GEOM_Object::GetObject(TDF_Label& theLabel)
{
  if (!theLabel.IsAttribute(GetObjectID())) return NULL;

  TCollection_AsciiString anEntry;
  TDF_Tool::Entry(theLabel, anEntry);

  Handle(TDocStd_Document) aDoc = TDocStd_Owner::GetDocument(theLabel.Data());
  if(aDoc.IsNull()) return NULL;

  Handle(TDataStd_Integer) anID;
  if(!aDoc->Main().FindAttribute(TDataStd_Integer::GetID(), anID)) return NULL;


  GEOM_Engine* anEngine=  GEOM_Engine::GetEngine();
  if(anEngine == NULL) return NULL;
  return anEngine->GetObject(anID->Get(), (char*) anEntry.ToCString());


}

//=============================================================================
/*!
 *  GetReferencedObject
 */
//=============================================================================
Handle(GEOM_Object) GEOM_Object::GetReferencedObject(TDF_Label& theLabel)
{
  Handle(TDF_Reference) aRef;
  if (!theLabel.FindAttribute(TDF_Reference::GetID(), aRef)) {
    return NULL;
  }
  
  if(aRef.IsNull() || aRef->Get().IsNull()) {
    return NULL;
  }


  // Get TreeNode of a referenced function
  Handle(TDataStd_TreeNode) aT, aFather;
  if (!TDataStd_TreeNode::Find(aRef->Get(), aT)) {
    return NULL;
  }


  // Get TreeNode of Object of the referenced function
  aFather = aT->Father();
  if (aFather.IsNull()) {
    return NULL;
  }

  // Get label of the referenced object
  TDF_Label aLabel = aFather->Label();
  

  return GEOM_Object::GetObject(aLabel);
}

//=============================================================================
/*!
 *  Constructor: private
 */
//=============================================================================
GEOM_Object::GEOM_Object(TDF_Label& theEntry)
  : _label(theEntry), _ior(""), _docID(-1)
{
  Handle(TDocStd_Document) aDoc = TDocStd_Owner::GetDocument(_label.Data());
  if(!aDoc.IsNull()) {
    Handle(TDataStd_Integer) anID;
    if(aDoc->Main().FindAttribute(TDataStd_Integer::GetID(), anID)) _docID = anID->Get();
  }

  if(!theEntry.FindAttribute(TDataStd_TreeNode::GetDefaultTreeID(), _root))
    _root = TDataStd_TreeNode::Set(theEntry);
}

//=============================================================================
/*!
 *  Constructor: public
 */
//=============================================================================
GEOM_Object::GEOM_Object(TDF_Label& theEntry, int theType)
: _label(theEntry), _ior(""), _docID(-1)
{
  Handle(TDocStd_Document) aDoc = TDocStd_Owner::GetDocument(_label.Data());
  if(!aDoc.IsNull()) {
    Handle(TDataStd_Integer) anID;
    if(aDoc->Main().FindAttribute(TDataStd_Integer::GetID(), anID)) _docID = anID->Get();
  }

  theEntry.ForgetAllAttributes(Standard_True);

  if(!theEntry.FindAttribute(TDataStd_TreeNode::GetDefaultTreeID(), _root))
    _root = TDataStd_TreeNode::Set(theEntry);

  TDataStd_Integer::Set(theEntry.FindChild(TYPE_LABEL), theType);

  TDataStd_UAttribute::Set(theEntry, GetObjectID());
}

//=============================================================================
/*!
 *  Destructor
 */
//=============================================================================
GEOM_Object::~GEOM_Object()
{
  MESSAGE("GEOM_Object::~GEOM_Object()");
}

//=============================================================================
/*!
 *  GetType
 */
//=============================================================================
int GEOM_Object::GetType()
{
  Handle(TDataStd_Integer) aType;
  if(!_label.FindChild(TYPE_LABEL).FindAttribute(TDataStd_Integer::GetID(), aType)) return -1;

  return aType->Get();
}

//=============================================================================
/*!
 *  SetType
 */
//=============================================================================
void GEOM_Object::SetType(int theType)
{
  TDataStd_Integer::Set(_label.FindChild(TYPE_LABEL), theType);
}


//=============================================================================
/*!
 *  Returns modifications counter of this object.
 *  Comparing this value with modifications counters of argument objects
 *  (on which this object depends) we decide whether this object needs to be updated.
 */
//=============================================================================
int GEOM_Object::GetTic()
{
  Handle(TDataStd_Integer) aTicAttr;
  if (!_label.FindChild(TIC_LABEL).FindAttribute(TDataStd_Integer::GetID(), aTicAttr))
    return 0;

  return aTicAttr->Get();
}

//=============================================================================
/*!
 *  Set another value of modifications counter.
 *
 *  Use this method to update modifications counter of dependent object
 *  to be equal to modifications counter of its argument.
 *  This is commonly done in GEOM_Function::GetValue()
 */
//=============================================================================
void GEOM_Object::SetTic(int theTic)
{
  TDataStd_Integer::Set(_label.FindChild(TIC_LABEL), theTic);
}

//=============================================================================
/*!
 *  Increment modifications counter to mark this object as modified.
 *
 *  Commonly called from GEOM_Function::SetValue()
 */
//=============================================================================
void GEOM_Object::IncrementTic()
{
  TDF_Label aTicLabel = _label.FindChild(TIC_LABEL);

  Standard_Integer aTic = 0;
  Handle(TDataStd_Integer) aTicAttr;
  if (aTicLabel.FindAttribute(TDataStd_Integer::GetID(), aTicAttr))
    aTic = aTicAttr->Get();

  TDataStd_Integer::Set(aTicLabel, aTic + 1);
}


//=============================================================================
/*!
 *  GetDocID
 */
//=============================================================================
int GEOM_Object::GetDocID()
{
  return _docID;
}


//=============================================================================
/*!
 *  GetValue
 */
//=============================================================================
TopoDS_Shape GEOM_Object::GetValue()
{
  TopoDS_Shape aShape;

  Handle(GEOM_Function) aFunction = GetLastFunction();

  if (!aFunction.IsNull())
    aShape = aFunction->GetValue();

  return aShape;
}

//=============================================================================
/*!
 *  SetName
 */
//=============================================================================
void GEOM_Object::SetName(const char* theName)
{
  TDataStd_Name::Set(_label, (char*)theName);
}

//=============================================================================
/*!
 *  GetName
 */
//=============================================================================
char* GEOM_Object::GetName()
{
  Handle(TDataStd_Name) aNameAttr;
  if(!_label.FindAttribute(TDataStd_Name::GetID(), aNameAttr)) return NULL;

  TCollection_AsciiString aName(aNameAttr->Get());
  // do not return pointer of local variable
  // return aName.ToCString();
  // the following code could lead to memory leak, so take care about recieved pointer
  return strdup(aName.ToCString());
}

//=============================================================================
/*!
 *  SetColor
 */
//=============================================================================
void GEOM_Object::SetColor(const GEOM_Object::Color& theColor)
{
  Handle(TDataStd_RealArray) anArray = new TDataStd_RealArray();
  anArray->Init( 1, 3 );
  anArray->SetValue( 1, theColor.R );
  anArray->SetValue( 2, theColor.G );
  anArray->SetValue( 3, theColor.B );

  Handle(TDataStd_RealArray) anAttr =
    TDataStd_RealArray::Set(_label.FindChild(COLOR_LABEL), anArray->Lower(), anArray->Upper());
  anAttr->ChangeArray(anArray->Array());
}

//=============================================================================
/*!
 *  GetColor
 */
//=============================================================================
GEOM_Object::Color GEOM_Object::GetColor()
{
  Handle(TDataStd_RealArray) anArray;
  bool isFound = _label.FindChild(COLOR_LABEL).FindAttribute(TDataStd_RealArray::GetID(), anArray);

  GEOM_Object::Color aColor;
  aColor.R = isFound ? anArray->Value( 1 ) : -1;
  aColor.G = isFound ? anArray->Value( 2 ) : -1;
  aColor.B = isFound ? anArray->Value( 3 ) : -1;

  return aColor;
}

//=============================================================================
/*!
 *  SetAutoColor
 */
//=============================================================================
void GEOM_Object::SetAutoColor(bool theAutoColor)
{
  TDataStd_Integer::Set(_label.FindChild(AUTO_COLOR_LABEL), (int)theAutoColor);
}

//=============================================================================
/*!
 *  GetAutoColor
 */
//=============================================================================
bool GEOM_Object::GetAutoColor()
{
  Handle(TDataStd_Integer) anAutoColor;
  if(!_label.FindChild(AUTO_COLOR_LABEL).FindAttribute(TDataStd_Integer::GetID(), anAutoColor)) return false;

  return bool(anAutoColor->Get());
}

//=============================================================================
/*!
 *  SetMarkerStd
 */
//=============================================================================
void GEOM_Object::SetMarkerStd(const Aspect_TypeOfMarker theType, double theSize)
{
  TDF_Label aMarkerLabel = _label.FindChild(MARKER_LABEL);
  TDataStd_Integer::Set(aMarkerLabel.FindChild(MARKER_LABEL_TYPE), (int)theType);
  TDataStd_Real::Set(aMarkerLabel.FindChild(MARKER_LABEL_SIZE), theSize);
}
  
//=============================================================================
/*!
 *  SetMarkerTexture
 */
//=============================================================================
void GEOM_Object::SetMarkerTexture(int theTextureId)
{
  TDF_Label aMarkerLabel = _label.FindChild(MARKER_LABEL);
  TDataStd_Integer::Set(aMarkerLabel.FindChild(MARKER_LABEL_TYPE), (int)Aspect_TOM_USERDEFINED);
  TDataStd_Integer::Set(aMarkerLabel.FindChild(MARKER_LABEL_ID),   theTextureId);
}

//=============================================================================
/*!
 *  GetMarkerType
 */
//=============================================================================
Aspect_TypeOfMarker GEOM_Object::GetMarkerType()
{
  Standard_Integer aType = -1;
  TDF_Label aMarkerLabel = _label.FindChild(MARKER_LABEL, Standard_False);
  if(!aMarkerLabel.IsNull()) {
    TDF_Label aTypeLabel = aMarkerLabel.FindChild(MARKER_LABEL_TYPE, Standard_False);
    Handle(TDataStd_Integer) aTypeAttr;
    if (!aTypeLabel.IsNull() && aTypeLabel.FindAttribute(TDataStd_Integer::GetID(), aTypeAttr))
      aType = aTypeAttr->Get();
  }
  return (Aspect_TypeOfMarker)aType;
}

//=============================================================================
/*!
 *  GetMarkerSize
 */
//=============================================================================
double GEOM_Object::GetMarkerSize()
{
  Standard_Real aSize = 0.;
  TDF_Label aMarkerLabel = _label.FindChild(MARKER_LABEL, Standard_False);
  if(!aMarkerLabel.IsNull()) {
    TDF_Label aSizeLabel = aMarkerLabel.FindChild(MARKER_LABEL_SIZE, Standard_False);
    Handle(TDataStd_Real) aSizeAttr;
    if (!aSizeLabel.IsNull() && aSizeLabel.FindAttribute(TDataStd_Real::GetID(), aSizeAttr))
      aSize = aSizeAttr->Get();
  }
  return aSize;
}

//=============================================================================
/*!
 *  GetMarkerTexture
 */
//=============================================================================
int GEOM_Object::GetMarkerTexture()
{
  Standard_Integer anId = 0;
  if ( GetMarkerType() == Aspect_TOM_USERDEFINED) {
    TDF_Label aMarkerLabel = _label.FindChild(MARKER_LABEL, Standard_False);
    if(!aMarkerLabel.IsNull()) {
      TDF_Label aTypeLabel = aMarkerLabel.FindChild(MARKER_LABEL_ID, Standard_False);
      Handle(TDataStd_Integer) anIdAttr;
      if (!aTypeLabel.IsNull() && aTypeLabel.FindAttribute(TDataStd_Integer::GetID(), anIdAttr))
        anId = anIdAttr->Get();
    }
  }
  return anId;
}

//=============================================================================
/*!
 *  SetAuxData
 */
//=============================================================================
void GEOM_Object::UnsetMarker()
{
  SetMarkerStd((Aspect_TypeOfMarker)-1, 0.);
}

//=============================================================================
/*!
 *  SetAuxData
 */
//=============================================================================
void GEOM_Object::SetAuxData(const char* theData)
{
  TDataStd_Comment::Set(_label, (char*)theData);
}

//=============================================================================
/*!
 *  GetAuxData
 */
//=============================================================================
TCollection_AsciiString GEOM_Object::GetAuxData()
{
  TCollection_AsciiString aData;

  Handle(TDataStd_Comment) aCommentAttr;
  if (_label.FindAttribute(TDataStd_Comment::GetID(), aCommentAttr))
    aData = aCommentAttr->Get();

  return aData;
}

//=============================================================================
/*!
 *  SetParameters
 */
//=============================================================================
void GEOM_Object::SetParameters(const TCollection_AsciiString& theParameters)
{
  if( _parameters.IsEmpty() )
    _parameters = theParameters;
  else {
    _parameters += "|";
    _parameters += theParameters;
  }
}

//=============================================================================
/*!
 *  GetParameters
 */
//=============================================================================
TCollection_AsciiString GEOM_Object::GetParameters() const
{
  return _parameters;
}


//=============================================================================
/*!
 *  IsSubShape
 */
//=============================================================================
bool GEOM_Object::IsMainShape()
{
  Handle(GEOM_Function) aFunction = GetFunction(1);
  if(aFunction.IsNull() || aFunction->GetDriverGUID() != GetSubShapeID()) return true; // mkr : IPAL9921
  return false;
}


//=============================================================================
/*!
 *  AddFunction
 */
//=============================================================================
Handle(GEOM_Function) GEOM_Object::AddFunction(const Standard_GUID& theGUID, int theFunctionType)
{
  Standard_Integer nb = GetNbFunctions();
  if(nb == 1 && theGUID == GetSubShapeID()) return NULL; //It's impossible to add a function to sub-shape
  nb++;
  TDF_Label aChild = FUNCTION_LABEL(nb);

  Handle(TDataStd_TreeNode) aNode = TDataStd_TreeNode::Set(aChild);
  _root->Append(aNode);

  Handle(GEOM_Function) aFunction = new GEOM_Function(aChild, theGUID, theFunctionType);

  return aFunction;

}

//=============================================================================
/*!
 *  GetNbFunctions
 */
//=============================================================================
int GEOM_Object::GetNbFunctions()
{
  Standard_Integer nb = 0;
  for(TDataStd_ChildNodeIterator CI(_root); CI.More(); CI.Next()) nb++;
  return nb;
}

//=============================================================================
/*!
 *  GetFunction
 */
//=============================================================================
Handle(GEOM_Function) GEOM_Object::GetFunction(int theFunctionNumber)
{
  TDF_Label aChild = FUNCTION_LABEL(theFunctionNumber);
  return GEOM_Function::GetFunction(aChild);
}

//=============================================================================
/*!
 *  GetlastFunction
 */
//=============================================================================
Handle(GEOM_Function) GEOM_Object::GetLastFunction()
{
  Standard_Integer nb = GetNbFunctions();
  if(nb) return GetFunction(nb);

  return NULL;
}


//=============================================================================
/*!
 *  GetAllDependency
 */
//=============================================================================
Handle(TColStd_HSequenceOfTransient) GEOM_Object::GetAllDependency()
{
  Handle(TColStd_HSequenceOfTransient) anArray;
  TDF_LabelSequence aSeq;
  Standard_Integer nb = GetNbFunctions();
  if(nb == 0) return anArray;
  for(Standard_Integer i=1; i<=nb; i++) {
    Handle(GEOM_Function) aFunction = GetFunction(i);
    if(aFunction.IsNull()) continue;
    aFunction->GetDependency(aSeq);
  }

  Standard_Integer aLength = aSeq.Length();
  if(aLength > 0) {
    anArray = new TColStd_HSequenceOfTransient;
    for(Standard_Integer j =1; j<=aLength; j++) {
      Handle(GEOM_Object) aRefObj = GetReferencedObject(aSeq(j));
      if(!aRefObj.IsNull()) anArray->Append(aRefObj);
    }
  }

  return anArray;
}

//=============================================================================
/*!
 *  GetLastDependency
 */
//=============================================================================
Handle(TColStd_HSequenceOfTransient) GEOM_Object::GetLastDependency()
{
  Handle(TColStd_HSequenceOfTransient) anArray;
  Handle(GEOM_Function) aFunction = GetLastFunction();
  if (aFunction.IsNull()) return anArray;

  TDF_LabelSequence aSeq;
  aFunction->GetDependency(aSeq);
  Standard_Integer aLength = aSeq.Length();
  if (aLength > 0) {
    anArray = new TColStd_HSequenceOfTransient;
    for (Standard_Integer i = 1; i <= aLength; i++)
      anArray->Append(GetReferencedObject(aSeq(i)));
  }

  return anArray;
}

//=============================================================================
/*!
 *  GetFreeLabel
 */
//=============================================================================
TDF_Label GEOM_Object::GetFreeLabel()
{
  return _label.FindChild(FREE_LABEL);
}

//=======================================================================
//function :  GEOM_Object_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOM_Object_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(MMgt_TShared);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(Standard_Transient);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOM_Object",
                                                         sizeof(GEOM_Object),
                                                         1,
                                                         (Standard_Address)_Ancestors,
                                                         (Standard_Address)NULL);
  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================

const Handle(GEOM_Object) Handle(GEOM_Object)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOM_Object) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOM_Object))) {
       _anOtherObject = Handle(GEOM_Object)((Handle(GEOM_Object)&)AnObject);
     }
  }

  return _anOtherObject ;
}


