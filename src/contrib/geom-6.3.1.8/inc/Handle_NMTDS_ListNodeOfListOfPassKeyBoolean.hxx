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
#ifndef _Handle_NMTDS_ListNodeOfListOfPassKeyBoolean_HeaderFile
#define _Handle_NMTDS_ListNodeOfListOfPassKeyBoolean_HeaderFile

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
class NMTDS_ListNodeOfListOfPassKeyBoolean;
Standard_EXPORT Handle_Standard_Type& STANDARD_TYPE(NMTDS_ListNodeOfListOfPassKeyBoolean);

class Handle(NMTDS_ListNodeOfListOfPassKeyBoolean) : public Handle(TCollection_MapNode) {
  public:
    Handle(NMTDS_ListNodeOfListOfPassKeyBoolean)():Handle(TCollection_MapNode)() {} 
    Handle(NMTDS_ListNodeOfListOfPassKeyBoolean)(const Handle(NMTDS_ListNodeOfListOfPassKeyBoolean)& aHandle) : Handle(TCollection_MapNode)(aHandle) 
     {
     }

    Handle(NMTDS_ListNodeOfListOfPassKeyBoolean)(const NMTDS_ListNodeOfListOfPassKeyBoolean* anItem) : Handle(TCollection_MapNode)((TCollection_MapNode *)anItem) 
     {
     }

    Handle(NMTDS_ListNodeOfListOfPassKeyBoolean)& operator=(const Handle(NMTDS_ListNodeOfListOfPassKeyBoolean)& aHandle)
     {
      Assign(aHandle.Access());
      return *this;
     }

    Handle(NMTDS_ListNodeOfListOfPassKeyBoolean)& operator=(const NMTDS_ListNodeOfListOfPassKeyBoolean* anItem)
     {
      Assign((Standard_Transient *)anItem);
      return *this;
     }

    NMTDS_ListNodeOfListOfPassKeyBoolean* operator->() const
     {
      return (NMTDS_ListNodeOfListOfPassKeyBoolean *)ControlAccess();
     }

//   Standard_EXPORT ~Handle(NMTDS_ListNodeOfListOfPassKeyBoolean)();
 
   Standard_EXPORT static const Handle(NMTDS_ListNodeOfListOfPassKeyBoolean) DownCast(const Handle(Standard_Transient)& AnObject);
};
#endif
