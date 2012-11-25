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

#ifndef _Handle_GEOMAlgo_ClsfBox_HeaderFile
#define _Handle_GEOMAlgo_ClsfBox_HeaderFile

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
class GEOMAlgo_ClsfBox;
Standard_EXPORT Handle_Standard_Type& STANDARD_TYPE(GEOMAlgo_ClsfBox);

class Handle(GEOMAlgo_ClsfBox) : public Handle(GEOMAlgo_Clsf) {
  public:
    Handle(GEOMAlgo_ClsfBox)():Handle(GEOMAlgo_Clsf)() {} 
    Handle(GEOMAlgo_ClsfBox)(const Handle(GEOMAlgo_ClsfBox)& aHandle) : Handle(GEOMAlgo_Clsf)(aHandle) 
     {
     }

    Handle(GEOMAlgo_ClsfBox)(const GEOMAlgo_ClsfBox* anItem) : Handle(GEOMAlgo_Clsf)((GEOMAlgo_Clsf *)anItem) 
     {
     }

    Handle(GEOMAlgo_ClsfBox)& operator=(const Handle(GEOMAlgo_ClsfBox)& aHandle)
     {
      Assign(aHandle.Access());
      return *this;
     }

    Handle(GEOMAlgo_ClsfBox)& operator=(const GEOMAlgo_ClsfBox* anItem)
     {
      Assign((Standard_Transient *)anItem);
      return *this;
     }

    GEOMAlgo_ClsfBox* operator->() const
     {
      return (GEOMAlgo_ClsfBox *)ControlAccess();
     }

//   Standard_EXPORT ~Handle(GEOMAlgo_ClsfBox)();
 
   Standard_EXPORT static const Handle(GEOMAlgo_ClsfBox) DownCast(const Handle(Standard_Transient)& AnObject);
};
#endif
