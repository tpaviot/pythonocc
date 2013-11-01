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

#ifndef _Handle_GEOMAlgo_ListNodeOfListOfPnt_HeaderFile
#define _Handle_GEOMAlgo_ListNodeOfListOfPnt_HeaderFile

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
class GEOMAlgo_ListNodeOfListOfPnt;
Standard_EXPORT Handle_Standard_Type& STANDARD_TYPE(GEOMAlgo_ListNodeOfListOfPnt);

class Handle(GEOMAlgo_ListNodeOfListOfPnt) : public Handle(TCollection_MapNode) {
  public:
    Handle(GEOMAlgo_ListNodeOfListOfPnt)():Handle(TCollection_MapNode)() {} 
    Handle(GEOMAlgo_ListNodeOfListOfPnt)(const Handle(GEOMAlgo_ListNodeOfListOfPnt)& aHandle) : Handle(TCollection_MapNode)(aHandle) 
     {
     }

    Handle(GEOMAlgo_ListNodeOfListOfPnt)(const GEOMAlgo_ListNodeOfListOfPnt* anItem) : Handle(TCollection_MapNode)((TCollection_MapNode *)anItem) 
     {
     }

    Handle(GEOMAlgo_ListNodeOfListOfPnt)& operator=(const Handle(GEOMAlgo_ListNodeOfListOfPnt)& aHandle)
     {
      Assign(aHandle.Access());
      return *this;
     }

    Handle(GEOMAlgo_ListNodeOfListOfPnt)& operator=(const GEOMAlgo_ListNodeOfListOfPnt* anItem)
     {
      Assign((Standard_Transient *)anItem);
      return *this;
     }

    GEOMAlgo_ListNodeOfListOfPnt* operator->() const
     {
      return (GEOMAlgo_ListNodeOfListOfPnt *)ControlAccess();
     }

//   Standard_EXPORT ~Handle(GEOMAlgo_ListNodeOfListOfPnt)();
 
   Standard_EXPORT static const Handle(GEOMAlgo_ListNodeOfListOfPnt) DownCast(const Handle(Standard_Transient)& AnObject);
};
#endif
