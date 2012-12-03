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

#ifndef _Handle_BlockFix_BlockFixAPI_HeaderFile
#define _Handle_BlockFix_BlockFixAPI_HeaderFile

#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif
#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif

#ifndef _Handle_MMgt_TShared_HeaderFile
#include <Handle_MMgt_TShared.hxx>
#endif

class Standard_Transient;
class Handle_Standard_Type;
class Handle(MMgt_TShared);
class BlockFix_BlockFixAPI;
Standard_EXPORT Handle_Standard_Type& STANDARD_TYPE(BlockFix_BlockFixAPI);

class Handle(BlockFix_BlockFixAPI) : public Handle(MMgt_TShared) {
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
    Handle(BlockFix_BlockFixAPI)():Handle(MMgt_TShared)() {}
    Handle(BlockFix_BlockFixAPI)(const Handle(BlockFix_BlockFixAPI)& aHandle) : Handle(MMgt_TShared)(aHandle)
     {
     }

    Handle(BlockFix_BlockFixAPI)(const BlockFix_BlockFixAPI* anItem) : Handle(MMgt_TShared)((MMgt_TShared *)anItem)
     {
     }

    Handle(BlockFix_BlockFixAPI)& operator=(const Handle(BlockFix_BlockFixAPI)& aHandle)
     {
      Assign(aHandle.Access());
      return *this;
     }

    Handle(BlockFix_BlockFixAPI)& operator=(const BlockFix_BlockFixAPI* anItem)
     {
      Assign((Standard_Transient *)anItem);
      return *this;
     }

    BlockFix_BlockFixAPI* operator->()
     {
      return (BlockFix_BlockFixAPI *)ControlAccess();
     }

    BlockFix_BlockFixAPI* operator->() const
     {
      return (BlockFix_BlockFixAPI *)ControlAccess();
     }

   Standard_EXPORT ~Handle(BlockFix_BlockFixAPI)();

   Standard_EXPORT static const Handle(BlockFix_BlockFixAPI) DownCast(const Handle(Standard_Transient)& AnObject);
};
#endif
