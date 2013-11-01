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
//  File   : Handle_SGEOM_DataMapNodeOfDataMapOfAsciiStringTransient.hxx
//  Module : GEOM

#ifndef _Handle_SGEOM_DataMapNodeOfDataMapOfAsciiStringTransient_HeaderFile
#define _Handle_SGEOM_DataMapNodeOfDataMapOfAsciiStringTransient_HeaderFile

#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif
#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif

#ifndef _Handle_TCollection_MapNode_HeaderFile
#include <Handle_TCollection_MapNode.hxx>
#endif

class Standard_Transient;
class Handle_Standard_Type;
class Handle(TCollection_MapNode);
class GEOM_DataMapNodeOfDataMapOfAsciiStringTransient;
Standard_EXPORT Handle_Standard_Type& STANDARD_TYPE(GEOM_DataMapNodeOfDataMapOfAsciiStringTransient);

class Handle(GEOM_DataMapNodeOfDataMapOfAsciiStringTransient) : public Handle(TCollection_MapNode) {
  public:
    void* operator new(size_t,void* anAddress) 
      {
        return anAddress;
      }
    void* operator new(size_t size) 
      { 
        return Standard::Allocate(size); 
      }
    void  operator delete(void *anAddress) 
      { 
        if (anAddress) Standard::Free((Standard_Address&)anAddress); 
      }
    Handle(GEOM_DataMapNodeOfDataMapOfAsciiStringTransient)():Handle(TCollection_MapNode)() {} 
    Handle(GEOM_DataMapNodeOfDataMapOfAsciiStringTransient)(const Handle(GEOM_DataMapNodeOfDataMapOfAsciiStringTransient)& aHandle) : Handle(TCollection_MapNode)(aHandle) 
     {
     }

    Handle(GEOM_DataMapNodeOfDataMapOfAsciiStringTransient)(const GEOM_DataMapNodeOfDataMapOfAsciiStringTransient* anItem) : Handle(TCollection_MapNode)((TCollection_MapNode *)anItem) 
     {
     }

    Handle(GEOM_DataMapNodeOfDataMapOfAsciiStringTransient)& operator=(const Handle(GEOM_DataMapNodeOfDataMapOfAsciiStringTransient)& aHandle)
     {
      Assign(aHandle.Access());
      return *this;
     }

    Handle(GEOM_DataMapNodeOfDataMapOfAsciiStringTransient)& operator=(const GEOM_DataMapNodeOfDataMapOfAsciiStringTransient* anItem)
     {
      Assign((Standard_Transient *)anItem);
      return *this;
     }

    GEOM_DataMapNodeOfDataMapOfAsciiStringTransient* operator->() 
     {
      return (GEOM_DataMapNodeOfDataMapOfAsciiStringTransient *)ControlAccess();
     }

    GEOM_DataMapNodeOfDataMapOfAsciiStringTransient* operator->() const 
     {
      return (GEOM_DataMapNodeOfDataMapOfAsciiStringTransient *)ControlAccess();
     }

   Standard_EXPORT ~Handle(GEOM_DataMapNodeOfDataMapOfAsciiStringTransient)();
 
   Standard_EXPORT static const Handle(GEOM_DataMapNodeOfDataMapOfAsciiStringTransient) DownCast(const Handle(Standard_Transient)& AnObject);
};
#endif
