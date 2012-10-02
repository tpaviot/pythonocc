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

#include <GEOMImpl_SphereDriver.hxx>
#include <GEOMImpl_ISphere.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <BRepPrimAPI_MakeSphere.hxx>
#include <BRep_Tool.hxx>
#include <gp_Pnt.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopAbs.hxx>

//=======================================================================
//function : GetID
//purpose  :
//======================================================================= 
const Standard_GUID& GEOMImpl_SphereDriver::GetID()
{
  static Standard_GUID aSphereDriver("FF1BBB16-5D14-4df2-980B-3A668264EA16");
  return aSphereDriver; 
}


//=======================================================================
//function : GEOMImpl_SphereDriver
//purpose  : 
//=======================================================================
GEOMImpl_SphereDriver::GEOMImpl_SphereDriver() 
{
}

//=======================================================================
//function : Execute
//purpose  :
//======================================================================= 
Standard_Integer GEOMImpl_SphereDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;    
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_ISphere aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  char aMsg[] = "Sphere creation aborted: radius value less than 1e-07 is not acceptable";

  if (aType == SPHERE_R) {
    double anR = aCI.GetR();
    if (anR < Precision::Confusion())
      Standard_ConstructionError::Raise(aMsg);

    aShape = BRepPrimAPI_MakeSphere(anR).Shape();
  }
  else if (aType == SPHERE_PNT_R) {
    double anR = aCI.GetR();
    if (anR < Precision::Confusion())
      Standard_ConstructionError::Raise(aMsg);

    Handle(GEOM_Function) aRefPoint  = aCI.GetPoint();
    TopoDS_Shape aShapePnt = aRefPoint->GetValue();
    if (aShapePnt.ShapeType() != TopAbs_VERTEX)
      Standard_ConstructionError::Raise("Invalid shape given for sphere center: it must be a point");
    gp_Pnt aP = BRep_Tool::Pnt(TopoDS::Vertex(aShapePnt));

    aShape = BRepPrimAPI_MakeSphere(aP, anR).Shape();
  }
  else {
  }

  if (aShape.IsNull()) return 0;

  aFunction->SetValue(aShape);

  log.SetTouched(Label()); 

  return 1;    
}


//=======================================================================
//function :  GEOMImpl_SphereDriver_Type_
//purpose  :
//======================================================================= 
Standard_EXPORT Handle_Standard_Type& GEOMImpl_SphereDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared); 
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_SphereDriver",
                                                         sizeof(GEOMImpl_SphereDriver),
                                                         1,
                                                         (Standard_Address)_Ancestors,
                                                         (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//======================================================================= 
const Handle(GEOMImpl_SphereDriver) Handle(GEOMImpl_SphereDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_SphereDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_SphereDriver))) {
       _anOtherObject = Handle(GEOMImpl_SphereDriver)((Handle(GEOMImpl_SphereDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
