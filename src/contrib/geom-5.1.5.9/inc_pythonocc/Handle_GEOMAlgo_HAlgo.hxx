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

#ifndef _Handle_GEOMAlgo_HAlgo_HeaderFile
#define _Handle_GEOMAlgo_HAlgo_HeaderFile

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
class GEOMAlgo_HAlgo;
Standard_EXPORT Handle_Standard_Type& STANDARD_TYPE(GEOMAlgo_HAlgo);

class Handle(GEOMAlgo_HAlgo) : public Handle(MMgt_TShared) {
  public:
    Handle(GEOMAlgo_HAlgo)():Handle(MMgt_TShared)() {} 
    Handle(GEOMAlgo_HAlgo)(const Handle(GEOMAlgo_HAlgo)& aHandle) : Handle(MMgt_TShared)(aHandle) 
     {
     }

    Handle(GEOMAlgo_HAlgo)(const GEOMAlgo_HAlgo* anItem) : Handle(MMgt_TShared)((MMgt_TShared *)anItem) 
     {
     }

    Handle(GEOMAlgo_HAlgo)& operator=(const Handle(GEOMAlgo_HAlgo)& aHandle)
     {
      Assign(aHandle.Access());
      return *this;
     }

    Handle(GEOMAlgo_HAlgo)& operator=(const GEOMAlgo_HAlgo* anItem)
     {
      Assign((Standard_Transient *)anItem);
      return *this;
     }

    GEOMAlgo_HAlgo* operator->() const
     {
      return (GEOMAlgo_HAlgo *)ControlAccess();
     }

//   Standard_EXPORT ~Handle(GEOMAlgo_HAlgo)();
 
   Standard_EXPORT static const Handle(GEOMAlgo_HAlgo) DownCast(const Handle(Standard_Transient)& AnObject);
};
#endif
