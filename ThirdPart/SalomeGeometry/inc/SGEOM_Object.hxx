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
#ifndef _GEOM_Object_HeaderFile
#define _GEOM_Object_HeaderFile

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif
#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif
#ifndef _Standard_HeaderFile
#include <Standard.hxx>
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
#ifndef _TColStd_HSequenceOfTransient_HeaderFile
#include <TColStd_HSequenceOfTransient.hxx>
#endif
#ifndef _TCollection_AsciiString_HeaderFile
#include <TCollection_AsciiString.hxx>
#endif
#ifndef _Quantity_Color_HeaderFile
#include <Quantity_Color.hxx>
#endif

#ifdef GetObject
#undef GetObject
#endif

class Handle_TColStd_HSequenceOfTransient;
class Standard_Transient;
class Handle_Standard_Type;
class Handle(MMgt_TShared);
class GEOM_Object;


Standard_EXPORT Handle_Standard_Type& STANDARD_TYPE(GEOM_Object);

class Handle(GEOM_Object) : public Handle(MMgt_TShared) {
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

    Handle(GEOM_Object)():Handle(MMgt_TShared)() {}
    Handle(GEOM_Object)(const Handle(GEOM_Object)& aHandle) : Handle(MMgt_TShared)(aHandle)
     {
     }

    Handle(GEOM_Object)(const GEOM_Object* anItem) : Handle(MMgt_TShared)((MMgt_TShared *)anItem)
     {
     }

    Handle(GEOM_Object)& operator=(const Handle(GEOM_Object)& aHandle)
     {
      Assign(aHandle.Access());
      return *this;
     }

    Handle(GEOM_Object)& operator=(const GEOM_Object* anItem)
     {
      Assign((Standard_Transient *)anItem);
      return *this;
     }

    GEOM_Object* operator->()
     {
      return (GEOM_Object *)ControlAccess();
     }

    GEOM_Object* operator->() const
     {
      return (GEOM_Object *)ControlAccess();
     }

   Standard_EXPORT ~Handle(GEOM_Object)() {};

   Standard_EXPORT static const Handle(GEOM_Object) DownCast(const Handle(Standard_Transient)& AnObject);
};


#include <Standard_GUID.hxx>
#include <TDataStd_TreeNode.hxx>
#include "SGEOM_Function.hxx"
#include "SGEOM_Engine.hxx"

//!Class that represents a geometric entity in the Data Framework
class GEOM_Object : public MMgt_TShared
{
 friend class GEOM_Engine;

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
  Standard_EXPORT friend Handle_Standard_Type& GEOM_Object_Type_();
  Standard_EXPORT const Handle(Standard_Type)& DynamicType() const  { return STANDARD_TYPE(GEOM_Object) ; }
  Standard_EXPORT Standard_Boolean IsKind(const Handle(Standard_Type)& AType) const
           { return (STANDARD_TYPE(GEOM_Object) == AType || MMgt_TShared::IsKind(AType)); }

 private:
  GEOM_Object(TDF_Label& theLabel);

 public:
  Standard_EXPORT GEOM_Object(TDF_Label& theEntry, int theType);
  Standard_EXPORT ~GEOM_Object() {;}

  //!Finds a GEOM_Object on the label theLabel
  Standard_EXPORT static Handle(GEOM_Object) GetObject(TDF_Label& theLabel);

  //!Finds a GEOM_Object by a reference, stored on the label theLabel
  Standard_EXPORT static Handle(GEOM_Object) GetReferencedObject(TDF_Label& theLabel);

  //!Returns a GEOM_Object common GUID
  Standard_EXPORT static const Standard_GUID& GetObjectID();

  //!Returns a GUID associated with a sub shape object
  Standard_EXPORT static const Standard_GUID& GetSubShapeID();

  //###########################################################
  //Access to properties
  //###########################################################

  //!Returns a TreeNode that presents a root of a function tree for this GEOM_Object
  Standard_EXPORT Handle(TDataStd_TreeNode) GetRootNode() { return _root; }

  //!Returns a label of this GEOM_Object
  Standard_EXPORT TDF_Label GetEntry() { return _label; }

  //!Returns a type of this GEOM_Object (GEOM_POINT, GEOM_VECTOR...)
  Standard_EXPORT int GetType();

  //!Sets the type of this GEOM_Object
  Standard_EXPORT void SetType(int theType);

  //!Modifications counter management
  Standard_EXPORT int  GetTic();

  //!Modifications counter management
  Standard_EXPORT void SetTic(int theTic);

  //!Modifications counter management
  Standard_EXPORT void IncrementTic();

  //!Returns an ID of the OCAF document where this GEOM_Object is stored
  Standard_EXPORT int GetDocID();

  //!Returns a value (as TopoDS_Shape) of this GEOM_Object
  Standard_EXPORT TopoDS_Shape GetValue();

  //!Sets a name of this GEOM_Object
  Standard_EXPORT void SetName(const char* theName);

  //!Returns a name of this GEOM_Object
  Standard_EXPORT const char* GetName();

  //!Sets a color of this GEOM_Object
  Standard_EXPORT void SetColor(const Quantity_Color &theColor);

  //!Returns a color of this GEOM_Object
  Standard_EXPORT Quantity_Color GetColor();

  //!Toggles an auto color mode on this GEOM_Object
  Standard_EXPORT void SetAutoColor(bool theAutoColor);

  //!Returns a flag of auto color mode of this GEOM_Object
  Standard_EXPORT bool GetAutoColor();

  //!Sets an auxiliary data
  Standard_EXPORT void SetAuxData(const char* theData);

  //!Returns an auxiliary data
  Standard_EXPORT TCollection_AsciiString GetAuxData();

  //###########################################################
  // Sub shape methods
  //###########################################################

  //!Returns false if the object is a sub shape of another object
  Standard_EXPORT bool IsMainShape();

  //###########################################################
  // CORBA related methods
  //###########################################################

  //!Sets an IOR of CORBA GEOM_Object_i which refers to this object
  Standard_EXPORT void SetIOR(TCollection_AsciiString& theIOR) { _ior = theIOR; }

  //!Returns an IOR of CORBA GEOM_Object_i which refers to this object
  Standard_EXPORT TCollection_AsciiString GetIOR() { return _ior; }

  //###########################################################
  //Functions methods
  //###########################################################

  //!Adds a function with a driver GUID = theGUID and a type theFunctionType
  //!to the function tree of this GEOM_Object
  Standard_EXPORT Handle(GEOM_Function) AddFunction(const Standard_GUID& theGUID, int theFunctionType);

  //!Removes the function aFunction from the this object
  Standard_EXPORT Standard_Boolean RemoveFunction(Handle(GEOM_Function) aFunction);

  //!Returns a number of functions of this GEOM_Object
  Standard_EXPORT int GetNbFunctions();

  //!Returns a function with given number theFunctionNumber
  Standard_EXPORT Handle(GEOM_Function) GetFunction(int theFunctionNumber);

  //!Return the last function of this GEOM_Object
  Standard_EXPORT Handle(GEOM_Function) GetLastFunction();

  //!Returns all dependencies of the object
  Standard_EXPORT Handle(TColStd_HSequenceOfTransient) GetAllDependency();

  //!Returns the dependencies of the last function
  Standard_EXPORT Handle(TColStd_HSequenceOfTransient) GetLastDependency();

  //!gets the Dirty flag of this object.Used to mark a shape as problematic
  Standard_EXPORT Standard_Boolean IsDirty();

  //!sets the Dirty flag of this object.Used to mark a shape as problematic
  Standard_EXPORT void SetDirty(Standard_Boolean theFlag);

  //###########################################################
  // Internal methods
  //###########################################################

  //!Returns a label which could be used to store some additional data
  Standard_EXPORT TDF_Label GetFreeLabel();

  //!Returns a label which could be used to store user data
  Standard_EXPORT TDF_Label GetUserDataLabel();

 private:
  Handle(TDataStd_TreeNode) _root;
  TDF_Label                 _label;
  TCollection_AsciiString   _ior;
};

#endif
