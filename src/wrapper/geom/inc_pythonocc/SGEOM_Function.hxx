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

#ifndef _GEOM_Function_HeaderFile
#define _GEOM_Function_HeaderFile

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif
#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif
#ifndef _Handle_MMgt_TShared_HeaderFile
#include <Handle_MMgt_TShared.hxx>
#endif  
#ifndef _MMgt_TShared_HeaderFile
#include <MMgt_TShared.hxx>
#endif  
#ifndef _Standard_GUID_HeaderFile
#include <Standard_GUID.hxx>
#endif
#ifndef _TopoDS_Shape_HeaderFile
#include <TopoDS_Shape.hxx>
#endif
#ifndef _TDF_Label_HeaderFile
#include <TDF_Label.hxx>
#endif
#ifndef _TDF_LabelSequence_HeaderFile
#include <TDF_LabelSequence.hxx>
#endif
#ifndef _TColStd_HArray1OfExtendedString_HeaderFile
#include <TColStd_HArray1OfExtendedString.hxx>
#endif
#ifndef _TColStd_HArray1OfAsciiString_HeaderFile
#include <TColStd_HArray1OfAsciiString.hxx>
#endif

class Handle_TColStd_HArray1OfReal;
class Handle_TColStd_HArray1OfInteger;
class Handle_TColStd_HSequenceOfTransient;
class Handle_TColStd_HArray1OfExtendedString;

class Standard_Transient;
class Handle_Standard_Type;
class Handle(MMgt_TShared);
class GEOM_Function;

#include <TCollection_AsciiString.hxx>
#include <TDataStd_ListOfExtendedString.hxx>


Standard_EXPORT Handle_Standard_Type& STANDARD_TYPE(GEOM_Function);

class Handle(GEOM_Function) : public Handle(MMgt_TShared) {
  public:
    inline void* operator new(size_t,void* anAddress) 
      {
        return anAddress;
      }
    inline void* operator new(size_t size) 
      { 
        return Standard::Allocate(size); 
      }
    inline void  operator delete(void *anAddress) 
      { 
        if (anAddress) Standard::Free((Standard_Address&)anAddress); 
      }

    Handle(GEOM_Function)():Handle(MMgt_TShared)() {} 
    Handle(GEOM_Function)(const Handle(GEOM_Function)& aHandle) : Handle(MMgt_TShared)(aHandle) 
     {
     }

    Handle(GEOM_Function)(const GEOM_Function* anItem) : Handle(MMgt_TShared)((MMgt_TShared *)anItem) 
     {
     }

    Handle(GEOM_Function)& operator=(const Handle(GEOM_Function)& aHandle)
     {
      Assign(aHandle.Access());
      return *this;
     }

    Handle(GEOM_Function)& operator=(const GEOM_Function* anItem)
     {
      Assign((Standard_Transient *)anItem);
      return *this;
     }

    GEOM_Function* operator->() 
     {
      return (GEOM_Function *)ControlAccess();
     }

    GEOM_Function* operator->() const 
     {
      return (GEOM_Function *)ControlAccess();
     }

   Standard_EXPORT ~Handle(GEOM_Function)() {};
 
   Standard_EXPORT static const Handle(GEOM_Function) DownCast(const Handle(Standard_Transient)& AnObject);
};

//!Class that manages functions in the Data Framework
class GEOM_Function : public MMgt_TShared
{

public:

    inline void* operator new(size_t,void* anAddress) 
      {
        return anAddress;
      }
    inline void* operator new(size_t size) 
      { 
        return Standard::Allocate(size); 
      }
    inline void  operator delete(void *anAddress) 
      { 
        if (anAddress) Standard::Free((Standard_Address&)anAddress); 
      }

    // Type management
    //
    Standard_EXPORT friend Handle_Standard_Type& GEOM_Function_Type_();
    Standard_EXPORT const Handle(Standard_Type)& DynamicType() const  { return STANDARD_TYPE(GEOM_Function) ; }
    Standard_EXPORT Standard_Boolean IsKind(const Handle(Standard_Type)& AType) const { return (STANDARD_TYPE(GEOM_Function) == AType || MMgt_TShared::IsKind(AType)); } 


private:
  GEOM_Function(const TDF_Label& theEntry) { _label = theEntry; }

public:

  //!Returns a GUID for a function tree
  Standard_EXPORT static const Standard_GUID& GetFunctionTreeID();

  //!Returns the ID which is associated with a reference to another function
  Standard_EXPORT static const Standard_GUID& GetDependencyID();

  //!Finds and returns a function located on a label theEntry
  Standard_EXPORT static Handle(GEOM_Function) GetFunction(const TDF_Label& theEntry);


  Standard_EXPORT GEOM_Function(const TDF_Label& theEntry, const Standard_GUID& theGUID, int theType); 
  Standard_EXPORT ~GEOM_Function() {;}

  Standard_EXPORT TDF_Label GetOwnerEntry();

  Standard_EXPORT int GetDocumentID();

  //Access to properties 

  //!Returns a result of the function built by the function Driver
  Standard_EXPORT TopoDS_Shape GetValue();

  //!Sets the function result
  Standard_EXPORT void SetValue(TopoDS_Shape& theShape);

  //!Returns a function entry in the OCAF document
  Standard_EXPORT TDF_Label& GetEntry() { return _label; }

  //!Returns the type of the function
  Standard_EXPORT int GetType();    

  //!Returns a function Driver GUID
  Standard_EXPORT Standard_GUID GetDriverGUID();

  //!Returns a user description of the function
  Standard_EXPORT TCollection_AsciiString GetDescription();

  //!Sets a user description of the function
  Standard_EXPORT void SetDescription(const TCollection_AsciiString& theDescription);  

  //!Returns a basic script command of the function
  Standard_EXPORT TCollection_AsciiString GetScriptCommand();

  //!Sets a basic script command of the function
  Standard_EXPORT void SetScriptCommand(const TCollection_AsciiString& theCommand);

  //Access to arguments

  //!Sets a real argument at position thePosition
  Standard_EXPORT void SetReal(int thePosition, double theValue);

  //!Sets a real argument at position thePosition as string
  Standard_EXPORT void SetReal(int thePosition, const TCollection_AsciiString& theValue);

  //!Returns a real argument at position thePosition
  Standard_EXPORT double GetReal(int thePosition);

  //!Sets a real array argument at position thePosition
  Standard_EXPORT void SetRealArray(int thePosition, const Handle(TColStd_HArray1OfReal)& theArray);

  //!Sets a real array argument at position thePosition as strings
  Standard_EXPORT void SetRealArray(int thePosition, const Handle(TColStd_HArray1OfAsciiString)& theArray);

  //!Returns a real array argument at position thePosition
  Standard_EXPORT Handle(TColStd_HArray1OfReal) GetRealArray(int thePosition);

  //!Sets an integer argument at position thePosition
  Standard_EXPORT void SetInteger(int thePosition, int theValue);

  //!Sets an integer argument at position thePosition as string
  Standard_EXPORT void SetInteger(int thePosition, const TCollection_AsciiString& theValue);

  //!Returns an integer argument at position thePosition
  Standard_EXPORT int GetInteger(int thePosition);  
  
  //!Sets an integer array argument at position thePosition
  Standard_EXPORT void SetIntegerArray(int thePosition, const Handle(TColStd_HArray1OfInteger)& theArray);

  //!Sets an integer array argument at position thePosition as strings
  Standard_EXPORT void SetIntegerArray(int thePosition, const Handle(TColStd_HArray1OfAsciiString)& theArray);

  //!Returns an integer array argument at position thePosition
  Standard_EXPORT Handle(TColStd_HArray1OfInteger) GetIntegerArray(int thePosition);

  //!Sets a reference to other function argument at position thePosition
  Standard_EXPORT void SetReference(int thePosition, Handle(GEOM_Function) theReference);

  //!Sets a string argument at position thePosition
  Standard_EXPORT void SetString(int thePosition, const TCollection_AsciiString& theValue);

  //!Returns a string argument at position thePosition
  Standard_EXPORT TCollection_AsciiString GetString(int thePosition);

  //!Returns a reference to other function argument at position thePosition
  Standard_EXPORT Handle(GEOM_Function) GetReference(int thePosition);

  //!Sets a reference to other label argument at position thePosition
  Standard_EXPORT void SetReferenceLabel(int thePosition, const TDF_Label& theReference);

  //!Returns a reference to other label argument at position thePosition
  Standard_EXPORT TDF_Label GetReferenceLabel(int thePosition);

  //!Set an array of ExtendedString
  Standard_EXPORT void SetStringArray(int thePosition, const Handle(TColStd_HArray1OfExtendedString)& theArray);

  //!Returns the array of ExtendedString
  Standard_EXPORT Handle(TColStd_HArray1OfExtendedString) GetStringArray(int thePosition);

  //!Returns a GUID for a references tree
  Standard_EXPORT static const Standard_GUID& GetReferencesTreeID();

  //!Sets a list of references to other function arguments at position thePosition
  Standard_EXPORT void SetReferenceList (int thePosition,
						 const Handle(TColStd_HSequenceOfTransient)& theRefList);

  //!Returns a list of references to other function arguments at position thePosition
  Standard_EXPORT Handle(TColStd_HSequenceOfTransient) GetReferenceList (int thePosition);

  //Sets a TopoDS_Shape argument at position thePosition
  //void SetShape(int thePosition, const TopoDS_Shape& theShape);

  //Returns a TopoDS_Shape argument at position thePosition
  //TopoDS_Shape GetShape(int thePosition);

  //!Returns true if the last method succided
  Standard_EXPORT bool IsDone() { return _isDone; }

  //!Add subshape references
  Standard_EXPORT void AddSubShapeReference   (Handle(GEOM_Function) theSubShape);
  
  //!Remove subshape references
  Standard_EXPORT void RemoveSubShapeReference(Handle(GEOM_Function) theSubShape);
  
  //!Check subshape references
  Standard_EXPORT bool HasSubShapeReferences();
  
  //!Get subshape references
  Standard_EXPORT const TDataStd_ListOfExtendedString& GetSubShapeReferences();
  
  //!Returns a sequence of the external dependencies of this function
  Standard_EXPORT void GetDependency(TDF_LabelSequence& theSeq);

  //!Returns top label of this function's history tree
  Standard_EXPORT TDF_Label GetHistoryEntry (const Standard_Boolean create = Standard_True);

  //!Returns history label, corresponding to the label,
  //!on which a reference on argument is stored
  Standard_EXPORT TDF_Label GetArgumentHistoryEntry (const TDF_Label&       theArgumentRefEntry,
									 const Standard_Boolean create = Standard_True);

  //!Gets the Value stored in thePosition (if it is an Equation it returns it)
  Standard_EXPORT TCollection_AsciiString GetSingleValueAsString(int thePosition);

  //!Gets the Value stored in thePosition (if it is an Equation it returns it)
  Standard_EXPORT Handle(TColStd_HArray1OfExtendedString) GetArrayValueAsString(int thePosition);

  //!Returns top label of this function's naming tree
  Standard_EXPORT TDF_Label GetNamingEntry (const Standard_Boolean create = Standard_True);

private:


  TDF_Label    _label;
  bool _isDone;
};

#endif
