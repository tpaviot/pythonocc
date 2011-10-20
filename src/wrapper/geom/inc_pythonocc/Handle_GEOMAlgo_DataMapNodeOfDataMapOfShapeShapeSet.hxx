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

#ifndef _Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet_HeaderFile
#define _Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet_HeaderFile

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
class GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet;
Standard_EXPORT Handle_Standard_Type& STANDARD_TYPE(GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet);

class Handle(GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet) : public Handle(TCollection_MapNode) {
  public:
    Handle(GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet)():Handle(TCollection_MapNode)() {} 
    Handle(GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet)(const Handle(GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet)& aHandle) : Handle(TCollection_MapNode)(aHandle) 
     {
     }

    Handle(GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet)(const GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet* anItem) : Handle(TCollection_MapNode)((TCollection_MapNode *)anItem) 
     {
     }

    Handle(GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet)& operator=(const Handle(GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet)& aHandle)
     {
      Assign(aHandle.Access());
      return *this;
     }

    Handle(GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet)& operator=(const GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet* anItem)
     {
      Assign((Standard_Transient *)anItem);
      return *this;
     }

    GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet* operator->() const
     {
      return (GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet *)ControlAccess();
     }

//   Standard_EXPORT ~Handle(GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet)();
 
   Standard_EXPORT static const Handle(GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet) DownCast(const Handle(Standard_Transient)& AnObject);
};
#endif
