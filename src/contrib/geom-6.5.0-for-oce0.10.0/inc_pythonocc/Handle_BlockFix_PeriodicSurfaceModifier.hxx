// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
//
// Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License.
//
// This library is distributed in the hope that it will be useful,
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

#ifndef _Handle_BlockFix_PeriodicSurfaceModifier_HeaderFile
#define _Handle_BlockFix_PeriodicSurfaceModifier_HeaderFile

#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif
#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif

#ifndef _Handle_BRepTools_Modification_HeaderFile
#include <Handle_BRepTools_Modification.hxx>
#endif

class Standard_Transient;
class Handle_Standard_Type;
class Handle(BRepTools_Modification);
class BlockFix_PeriodicSurfaceModifier;
Standard_EXPORT Handle_Standard_Type& STANDARD_TYPE(BlockFix_PeriodicSurfaceModifier);

class Handle(BlockFix_PeriodicSurfaceModifier) : public Handle(BRepTools_Modification) {
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
    Handle(BlockFix_PeriodicSurfaceModifier)():Handle(BRepTools_Modification)() {}
    Handle(BlockFix_PeriodicSurfaceModifier)(const Handle(BlockFix_PeriodicSurfaceModifier)& aHandle) : Handle(BRepTools_Modification)(aHandle)
     {
     }

    Handle(BlockFix_PeriodicSurfaceModifier)(const BlockFix_PeriodicSurfaceModifier* anItem) : Handle(BRepTools_Modification)((BRepTools_Modification *)anItem)
     {
     }

    Handle(BlockFix_PeriodicSurfaceModifier)& operator=(const Handle(BlockFix_PeriodicSurfaceModifier)& aHandle)
     {
      Assign(aHandle.Access());
      return *this;
     }

    Handle(BlockFix_PeriodicSurfaceModifier)& operator=(const BlockFix_PeriodicSurfaceModifier* anItem)
     {
      Assign((Standard_Transient *)anItem);
      return *this;
     }

    BlockFix_PeriodicSurfaceModifier* operator->()
     {
      return (BlockFix_PeriodicSurfaceModifier *)ControlAccess();
     }

    BlockFix_PeriodicSurfaceModifier* operator->() const
     {
      return (BlockFix_PeriodicSurfaceModifier *)ControlAccess();
     }

   Standard_EXPORT ~Handle(BlockFix_PeriodicSurfaceModifier)();

   Standard_EXPORT static const Handle(BlockFix_PeriodicSurfaceModifier) DownCast(const Handle(Standard_Transient)& AnObject);
};
#endif
