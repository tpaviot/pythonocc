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

#ifndef _Handle_GEOMAlgo_ClsfSolid_HeaderFile
#define _Handle_GEOMAlgo_ClsfSolid_HeaderFile

#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif
#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif

#ifndef _Handle_GEOMAlgo_Clsf_HeaderFile
#include <Handle_GEOMAlgo_Clsf.hxx>
#endif

class Standard_Transient;
class Handle_Standard_Type;
class Handle(GEOMAlgo_Clsf);
class GEOMAlgo_ClsfSolid;
Standard_EXPORT Handle_Standard_Type& STANDARD_TYPE(GEOMAlgo_ClsfSolid);

class Handle(GEOMAlgo_ClsfSolid) : public Handle(GEOMAlgo_Clsf) {
  public:
    Handle(GEOMAlgo_ClsfSolid)():Handle(GEOMAlgo_Clsf)() {} 
    Handle(GEOMAlgo_ClsfSolid)(const Handle(GEOMAlgo_ClsfSolid)& aHandle) : Handle(GEOMAlgo_Clsf)(aHandle) 
     {
     }

    Handle(GEOMAlgo_ClsfSolid)(const GEOMAlgo_ClsfSolid* anItem) : Handle(GEOMAlgo_Clsf)((GEOMAlgo_Clsf *)anItem) 
     {
     }

    Handle(GEOMAlgo_ClsfSolid)& operator=(const Handle(GEOMAlgo_ClsfSolid)& aHandle)
     {
      Assign(aHandle.Access());
      return *this;
     }

    Handle(GEOMAlgo_ClsfSolid)& operator=(const GEOMAlgo_ClsfSolid* anItem)
     {
      Assign((Standard_Transient *)anItem);
      return *this;
     }

    GEOMAlgo_ClsfSolid* operator->() const
     {
      return (GEOMAlgo_ClsfSolid *)ControlAccess();
     }

//   Standard_EXPORT ~Handle(GEOMAlgo_ClsfSolid)();
 
   Standard_EXPORT static const Handle(GEOMAlgo_ClsfSolid) DownCast(const Handle(Standard_Transient)& AnObject);
};
#endif
