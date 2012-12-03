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
//  File   : GEOMImpl_PipeDriver.ixx
//  Module : GEOMImpl

#ifndef _GEOMImpl_PipeDriver_HeaderFile
#define _GEOMImpl_PipeDriver_HeaderFile

#ifndef _TColStd_SequenceOfExtendedString_HeaderFile
#include <TColStd_SequenceOfExtendedString.hxx>
#endif
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
#ifndef _Standard_GUID_HeaderFile
#include <Standard_GUID.hxx>
#endif 

#ifndef _Handle_TFunction_Driver_HeaderFile
#include <Handle_TFunction_Driver.hxx>
#endif


class Standard_Transient;
class Handle_Standard_Type;
class Handle(TFunction_Driver);
class GEOMImpl_PipeDriver;

Standard_EXPORT Handle_Standard_Type& STANDARD_TYPE(GEOMImpl_PipeDriver);

class Handle(GEOMImpl_PipeDriver) : public Handle(TFunction_Driver) {
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

    Handle(GEOMImpl_PipeDriver)():Handle(TFunction_Driver)() {} 
    Handle(GEOMImpl_PipeDriver)(const Handle(GEOMImpl_PipeDriver)& aHandle) : Handle(TFunction_Driver)(aHandle) 
     {
     }

    Handle(GEOMImpl_PipeDriver)(const GEOMImpl_PipeDriver* anItem) : Handle(TFunction_Driver)((TFunction_Driver *)anItem) 
     {
     }

    Handle(GEOMImpl_PipeDriver)& operator=(const Handle(GEOMImpl_PipeDriver)& aHandle)
     {
      Assign(aHandle.Access());
      return *this;
     }

    Handle(GEOMImpl_PipeDriver)& operator=(const GEOMImpl_PipeDriver* anItem)
     {
      Assign((Standard_Transient *)anItem);
      return *this;
     }

    GEOMImpl_PipeDriver* operator->() 
     {
      return (GEOMImpl_PipeDriver *)ControlAccess();
     }

    GEOMImpl_PipeDriver* operator->() const 
     {
      return (GEOMImpl_PipeDriver *)ControlAccess();
     }

   Standard_EXPORT ~Handle(GEOMImpl_PipeDriver)() {};
 
   Standard_EXPORT static const Handle(GEOMImpl_PipeDriver) DownCast(const Handle(Standard_Transient)& AnObject);
};

#ifndef _TFunction_Driver_HeaderFile
#include <TFunction_Driver.hxx>
#endif
#ifndef _TFunction_Logbook_HeaderFile
#include <TFunction_Logbook.hxx>
#endif
#ifndef _Standard_CString_HeaderFile
#include <Standard_CString.hxx>
#endif

#include <TopoDS_Wire.hxx>
#include <TopoDS_Shape.hxx>
#include <TopTools_HSequenceOfShape.hxx>

class TColStd_SequenceOfExtendedString;


class GEOMImpl_PipeDriver : public TFunction_Driver {

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

  // Methods PUBLIC
  // 
  Standard_EXPORT GEOMImpl_PipeDriver();
  Standard_EXPORT virtual  Standard_Integer Execute(TFunction_Logbook& log) const; 
  Standard_EXPORT virtual void Validate(TFunction_Logbook&) const {}
  Standard_EXPORT Standard_Boolean MustExecute(const TFunction_Logbook&) const
  { return Standard_True; }
  Standard_EXPORT static const Standard_GUID& GetID();
  Standard_EXPORT ~GEOMImpl_PipeDriver() {};

  Standard_EXPORT static TopoDS_Shape CreatePipeWithDifferentSections
                                     (const TopoDS_Wire& theWirePath,
                                      const Handle(TopTools_HSequenceOfShape) theBases,
                                      const Handle(TopTools_HSequenceOfShape) theLocs,
                                      const Standard_Boolean theWithContact,
                                      const Standard_Boolean theWithCorrect);


  // Type management
  //
  Standard_EXPORT friend Handle_Standard_Type& GEOMImpl_PipeDriver_Type_();
  Standard_EXPORT const Handle(Standard_Type)& DynamicType() const
  { return STANDARD_TYPE(GEOMImpl_PipeDriver) ; }
  Standard_EXPORT Standard_Boolean IsKind(const Handle(Standard_Type)& AType) const
  { return (STANDARD_TYPE(GEOMImpl_PipeDriver) == AType ||
	    TFunction_Driver::IsKind(AType)); } 

};

#endif
