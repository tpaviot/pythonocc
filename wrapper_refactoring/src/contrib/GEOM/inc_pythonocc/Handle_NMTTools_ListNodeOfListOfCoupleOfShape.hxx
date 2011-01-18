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
#ifndef _Handle_NMTTools_ListNodeOfListOfCoupleOfShape_HeaderFile
#define _Handle_NMTTools_ListNodeOfListOfCoupleOfShape_HeaderFile

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
class NMTTools_ListNodeOfListOfCoupleOfShape;
Standard_EXPORT Handle_Standard_Type& STANDARD_TYPE(NMTTools_ListNodeOfListOfCoupleOfShape);

class Handle(NMTTools_ListNodeOfListOfCoupleOfShape) : public Handle(TCollection_MapNode) {
  public:
    Handle(NMTTools_ListNodeOfListOfCoupleOfShape)():Handle(TCollection_MapNode)() {} 
    Handle(NMTTools_ListNodeOfListOfCoupleOfShape)(const Handle(NMTTools_ListNodeOfListOfCoupleOfShape)& aHandle) : Handle(TCollection_MapNode)(aHandle) 
     {
     }

    Handle(NMTTools_ListNodeOfListOfCoupleOfShape)(const NMTTools_ListNodeOfListOfCoupleOfShape* anItem) : Handle(TCollection_MapNode)((TCollection_MapNode *)anItem) 
     {
     }

    Handle(NMTTools_ListNodeOfListOfCoupleOfShape)& operator=(const Handle(NMTTools_ListNodeOfListOfCoupleOfShape)& aHandle)
     {
      Assign(aHandle.Access());
      return *this;
     }

    Handle(NMTTools_ListNodeOfListOfCoupleOfShape)& operator=(const NMTTools_ListNodeOfListOfCoupleOfShape* anItem)
     {
      Assign((Standard_Transient *)anItem);
      return *this;
     }

    NMTTools_ListNodeOfListOfCoupleOfShape* operator->() const
     {
      return (NMTTools_ListNodeOfListOfCoupleOfShape *)ControlAccess();
     }

//   Standard_EXPORT ~Handle(NMTTools_ListNodeOfListOfCoupleOfShape)();
 
   Standard_EXPORT static const Handle(NMTTools_ListNodeOfListOfCoupleOfShape) DownCast(const Handle(Standard_Transient)& AnObject);
};
#endif
