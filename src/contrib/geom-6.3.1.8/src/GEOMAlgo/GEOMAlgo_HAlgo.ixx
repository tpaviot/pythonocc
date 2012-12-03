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
#include <GEOMAlgo_HAlgo.jxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

//GEOMAlgo_HAlgo::~GEOMAlgo_HAlgo() {}
 


Standard_EXPORT Handle_Standard_Type& GEOMAlgo_HAlgo_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMAlgo_HAlgo",
			                                 sizeof(GEOMAlgo_HAlgo),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(GEOMAlgo_HAlgo) Handle(GEOMAlgo_HAlgo)::DownCast(const Handle(Standard_Transient)& AnObject) 
{
  Handle(GEOMAlgo_HAlgo) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMAlgo_HAlgo))) {
       _anOtherObject = Handle(GEOMAlgo_HAlgo)((Handle(GEOMAlgo_HAlgo)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& GEOMAlgo_HAlgo::DynamicType() const 
{ 
  return STANDARD_TYPE(GEOMAlgo_HAlgo) ; 
}
//Standard_Boolean GEOMAlgo_HAlgo::IsKind(const Handle(Standard_Type)& AType) const 
//{ 
//  return (STANDARD_TYPE(GEOMAlgo_HAlgo) == AType || MMgt_TShared::IsKind(AType)); 
//}
//Handle_GEOMAlgo_HAlgo::~Handle_GEOMAlgo_HAlgo() {}

