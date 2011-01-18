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
#include <GEOMAlgo_ClsfBox.jxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

//GEOMAlgo_ClsfBox::~GEOMAlgo_ClsfBox() {}
 


Standard_EXPORT Handle_Standard_Type& GEOMAlgo_ClsfBox_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(GEOMAlgo_Clsf);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(GEOMAlgo_HAlgo);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType4 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,aType4,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMAlgo_ClsfBox",
			                                 sizeof(GEOMAlgo_ClsfBox),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(GEOMAlgo_ClsfBox) Handle(GEOMAlgo_ClsfBox)::DownCast(const Handle(Standard_Transient)& AnObject) 
{
  Handle(GEOMAlgo_ClsfBox) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMAlgo_ClsfBox))) {
       _anOtherObject = Handle(GEOMAlgo_ClsfBox)((Handle(GEOMAlgo_ClsfBox)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& GEOMAlgo_ClsfBox::DynamicType() const 
{ 
  return STANDARD_TYPE(GEOMAlgo_ClsfBox) ; 
}
//Standard_Boolean GEOMAlgo_ClsfBox::IsKind(const Handle(Standard_Type)& AType) const 
//{ 
//  return (STANDARD_TYPE(GEOMAlgo_ClsfBox) == AType || GEOMAlgo_Clsf::IsKind(AType)); 
//}
//Handle_GEOMAlgo_ClsfBox::~Handle_GEOMAlgo_ClsfBox() {}

