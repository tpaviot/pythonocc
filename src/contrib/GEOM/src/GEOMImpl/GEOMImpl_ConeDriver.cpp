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
//

#include <Standard_Stream.hxx>

#include <GEOMImpl_ConeDriver.hxx>
#include <GEOMImpl_ICone.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <BRepPrimAPI_MakeCone.hxx>
#include <BRepPrimAPI_MakeCylinder.hxx>
#include <BRep_Tool.hxx>

#include <TopAbs.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopExp.hxx>

#include <Standard_TypeMismatch.hxx>
#include <Standard_NullObject.hxx>
#include <StdFail_NotDone.hxx>
#include <Precision.hxx>
#include <gp_Pnt.hxx>
#include <gp.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_ConeDriver::GetID()
{
  static Standard_GUID aConeDriver("FF1BBB15-5D14-4df2-980B-3A668264EA16");
  return aConeDriver;
}


//=======================================================================
//function : GEOMImpl_ConeDriver
//purpose  :
//=======================================================================
GEOMImpl_ConeDriver::GEOMImpl_ConeDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_ConeDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_ICone aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  gp_Pnt aP;
  gp_Vec aV;

  Standard_Real aR1 = aCI.GetR1();
  Standard_Real aR2 = aCI.GetR2();

  if (aType == CONE_R1_R2_H) {
    aP = gp::Origin();
    aV = gp::DZ();

  } else if (aType == CONE_PNT_VEC_R1_R2_H) {
    Handle(GEOM_Function) aRefPoint  = aCI.GetPoint();
    Handle(GEOM_Function) aRefVector = aCI.GetVector();
    TopoDS_Shape aShapePnt = aRefPoint->GetValue();
    TopoDS_Shape aShapeVec = aRefVector->GetValue();
    if (aShapePnt.IsNull() || aShapeVec.IsNull()) {
      Standard_NullObject::Raise
        ("Cone creation aborted: point or vector is not defined");
    }
    if (aShapePnt.ShapeType() != TopAbs_VERTEX ||
        aShapeVec.ShapeType() != TopAbs_EDGE) {
      Standard_TypeMismatch::Raise
        ("Cone creation aborted: point or vector shapes has wrong type");
    }

    aP = BRep_Tool::Pnt(TopoDS::Vertex(aShapePnt));

    TopoDS_Edge anE = TopoDS::Edge(aShapeVec);
    TopoDS_Vertex V1, V2;
    TopExp::Vertices(anE, V1, V2, Standard_True);
    if (V1.IsNull() || V2.IsNull()) {
      Standard_NullObject::Raise
        ("Cylinder creation aborted: vector is not defined");
    }
    aV = gp_Vec(BRep_Tool::Pnt(V1), BRep_Tool::Pnt(V2));

  } else {
    return 0;
  }

  if (aCI.GetH() < 0.0) aV.Reverse();
  gp_Ax2 anAxes (aP, aV);

  double theAngle = aCI.GetAngle();
  if (theAngle == 0.)
	theAngle = PI*2.;

  TopoDS_Shape aShape;
  // Cone does not work if same radius
  if (fabs(aR1 - aR2) <= Precision::Confusion()) {
  
	BRepPrimAPI_MakeCylinder MC (anAxes, (aR1 + aR2)/2.0, Abs(aCI.GetH()), theAngle);

	MC.Build();
    if (!MC.IsDone()) {
      StdFail_NotDone::Raise("Cylinder can't be computed from the given parameters");
    }
    aShape = MC.Shape();
  } else {
    BRepPrimAPI_MakeCone MC (anAxes, aCI.GetR1(), aCI.GetR2(), Abs(aCI.GetH()), theAngle);
    MC.Build();
    if (!MC.IsDone()) {
      StdFail_NotDone::Raise("Cylinder can't be computed from the given parameters");
    }
    aShape = MC.Shape();
  }
  if (aShape.IsNull()) return 0;

  log.SetTouched(Label());

  aFunction->SetValue(aShape);
  return 1;
}


//=======================================================================
//function :  GEOMImpl_ConeDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_ConeDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_ConeDriver",
			                                 sizeof(GEOMImpl_ConeDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_ConeDriver) Handle(GEOMImpl_ConeDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_ConeDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_ConeDriver))) {
       _anOtherObject = Handle(GEOMImpl_ConeDriver)((Handle(GEOMImpl_ConeDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
