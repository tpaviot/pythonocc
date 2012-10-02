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

#include <BlockFix_BlockFixAPI.jxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

BlockFix_BlockFixAPI::~BlockFix_BlockFixAPI() {}



Standard_EXPORT Handle_Standard_Type& BlockFix_BlockFixAPI_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(MMgt_TShared);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(Standard_Transient);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("BlockFix_BlockFixAPI",
                                                         sizeof(BlockFix_BlockFixAPI),
                                                         1,
                                                         (Standard_Address)_Ancestors,
                                                         (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(BlockFix_BlockFixAPI) Handle(BlockFix_BlockFixAPI)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(BlockFix_BlockFixAPI) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(BlockFix_BlockFixAPI))) {
       _anOtherObject = Handle(BlockFix_BlockFixAPI)((Handle(BlockFix_BlockFixAPI)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& BlockFix_BlockFixAPI::DynamicType() const
{
  return STANDARD_TYPE(BlockFix_BlockFixAPI) ;
}
Standard_Boolean BlockFix_BlockFixAPI::IsKind(const Handle(Standard_Type)& AType) const
{
  return (STANDARD_TYPE(BlockFix_BlockFixAPI) == AType || MMgt_TShared::IsKind(AType));
}
Handle_BlockFix_BlockFixAPI::~Handle_BlockFix_BlockFixAPI() {}

