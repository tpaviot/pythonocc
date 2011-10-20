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

#ifndef _Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState_HeaderFile
#define _Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState_HeaderFile

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
class GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState;
Standard_EXPORT Handle_Standard_Type& STANDARD_TYPE(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState);

class Handle(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState) : public Handle(TCollection_MapNode) {
  public:
    Handle(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState)():Handle(TCollection_MapNode)() {} 
    Handle(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState)(const Handle(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState)& aHandle) : Handle(TCollection_MapNode)(aHandle) 
     {
     }

    Handle(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState)(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState* anItem) : Handle(TCollection_MapNode)((TCollection_MapNode *)anItem) 
     {
     }

    Handle(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState)& operator=(const Handle(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState)& aHandle)
     {
      Assign(aHandle.Access());
      return *this;
     }

    Handle(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState)& operator=(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState* anItem)
     {
      Assign((Standard_Transient *)anItem);
      return *this;
     }

    GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState* operator->() const
     {
      return (GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState *)ControlAccess();
     }

//   Standard_EXPORT ~Handle(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState)();
 
   Standard_EXPORT static const Handle(GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState) DownCast(const Handle(Standard_Transient)& AnObject);
};
#endif
