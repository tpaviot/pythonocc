//  Copyright (C) 2007-2008  CEA/DEN, EDF R&D, OPEN CASCADE
//
//  Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
//  CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
//  This library is free software; you can redistribute it and/or
//  modify it under the terms of the GNU Lesser General Public
//  License as published by the Free Software Foundation; either
//  version 2.1 of the License.
//
//  This library is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//  Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public
//  License along with this library; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
//  See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
#ifndef _Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox_HeaderFile
#define _Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox_HeaderFile

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
class NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox;
Standard_EXPORT Handle_Standard_Type& STANDARD_TYPE(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox);

class Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox) : public Handle(TCollection_MapNode) {
  public:
    Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox)():Handle(TCollection_MapNode)() {} 
    Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox)(const Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox)& aHandle) : Handle(TCollection_MapNode)(aHandle) 
     {
     }

    Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox)(const NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox* anItem) : Handle(TCollection_MapNode)((TCollection_MapNode *)anItem) 
     {
     }

    Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox)& operator=(const Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox)& aHandle)
     {
      Assign(aHandle.Access());
      return *this;
     }

    Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox)& operator=(const NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox* anItem)
     {
      Assign((Standard_Transient *)anItem);
      return *this;
     }

    NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox* operator->() const
     {
      return (NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox *)ControlAccess();
     }

//   Standard_EXPORT ~Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox)();
 
   Standard_EXPORT static const Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox) DownCast(const Handle(Standard_Transient)& AnObject);
};
#endif
