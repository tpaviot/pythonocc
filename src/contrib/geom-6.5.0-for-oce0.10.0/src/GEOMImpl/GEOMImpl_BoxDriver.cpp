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

#include <Standard_Stream.hxx>

#include <GEOMImpl_BoxDriver.hxx>
#include <GEOMImpl_IBox.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <BRepPrimAPI_MakeBox.hxx>
#include <BRep_Tool.hxx>
#include <gp_Pnt.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopAbs.hxx>

#include <StdFail_NotDone.hxx>

#include <Precision.hxx>

#include<cmath>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_BoxDriver::GetID()
{
  static Standard_GUID aBoxDriver("FF1BBB13-5D14-4df2-980B-3A668264EA16");
  return aBoxDriver;
}


//=======================================================================
//function : GEOMImpl_BoxDriver
//purpose  :
//=======================================================================
GEOMImpl_BoxDriver::GEOMImpl_BoxDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_BoxDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IBox aBI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  if (aType == BOX_DX_DY_DZ) {
    BRepPrimAPI_MakeBox MB (aBI.GetDX(), aBI.GetDY(), aBI.GetDZ());
    MB.Build();

    if (!MB.IsDone()) {
      StdFail_NotDone::Raise("Box with the given dimensions can not be computed");
    }
    aShape = MB.Shape();
  }
  else if (aType == BOX_TWO_PNT) {
    Handle(GEOM_Function) aRefPoint1 = aBI.GetRef1();
    Handle(GEOM_Function) aRefPoint2 = aBI.GetRef2();
    TopoDS_Shape aShape1 = aRefPoint1->GetValue();
    TopoDS_Shape aShape2 = aRefPoint2->GetValue();
    if (aShape1.ShapeType() == TopAbs_VERTEX &&
        aShape2.ShapeType() == TopAbs_VERTEX) {
      gp_Pnt P1 = BRep_Tool::Pnt(TopoDS::Vertex(aShape1));
      gp_Pnt P2 = BRep_Tool::Pnt(TopoDS::Vertex(aShape2));

      if (std::abs(P1.X() - P2.X()) < Precision::Confusion() || 
          std::abs(P1.Y() - P2.Y()) < Precision::Confusion() || 
          std::abs(P1.Z() - P2.Z()) < Precision::Confusion() ) {
        StdFail_NotDone::Raise("Box can not be created, the points belong both to one of the OXY, OYZ or OZX planes");
        return 0;
      }

      BRepPrimAPI_MakeBox MB (P1,P2);
      MB.Build();

      if (!MB.IsDone()) {
        StdFail_NotDone::Raise("Box can not be computed from the given point");
      }
      aShape = MB.Shape();
    }
  }
  else {
  }

  if (aShape.IsNull()) return 0;

  aFunction->SetValue(aShape);

  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_BoxDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_BoxDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_BoxDriver",
                                                         sizeof(GEOMImpl_BoxDriver),
                                                         1,
                                                         (Standard_Address)_Ancestors,
                                                         (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_BoxDriver) Handle(GEOMImpl_BoxDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_BoxDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_BoxDriver))) {
       _anOtherObject = Handle(GEOMImpl_BoxDriver)((Handle(GEOMImpl_BoxDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
