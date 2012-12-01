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

#include <GEOMImpl_VectorDriver.hxx>
#include <GEOMImpl_IVector.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <BRep_Tool.hxx>
#include <BRepBuilderAPI_MakeEdge.hxx>

#include <TopAbs.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>

#include <gp_Pnt.hxx>
#include <Precision.hxx>
#include <Geom_Curve.hxx>
#include <gp_Vec.hxx>
#include <TCollection_AsciiString.hxx>
#include <Standard_ConstructionError.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_VectorDriver::GetID()
{
  static Standard_GUID aVectorDriver("FF1BBB04-5D14-4df2-980B-3A668264EA16");
  return aVectorDriver;
}


//=======================================================================
//function : GEOMImpl_VectorDriver
//purpose  :
//=======================================================================
GEOMImpl_VectorDriver::GEOMImpl_VectorDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_VectorDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull())  return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IVector aPI (aFunction);
  Standard_Integer aType = aFunction->GetType();
  if (aType != VECTOR_DX_DY_DZ && aType != VECTOR_TWO_PNT && aType != VECTOR_TANGENT_CURVE_PAR && aType != VECTOR_PNT_DX_DY_DZ) return 0;

  TopoDS_Shape aShape;

  if (aType == VECTOR_DX_DY_DZ) {
    gp_Pnt P1 = gp::Origin();
    gp_Pnt P2 (aPI.GetDX(), aPI.GetDY(), aPI.GetDZ());
    if (P1.Distance(P2) < Precision::Confusion()) {
      TCollection_AsciiString aMsg ("Can not build vector with length, less than ");
      aMsg += TCollection_AsciiString(Precision::Confusion());
      Standard_ConstructionError::Raise(aMsg.ToCString());
    }
    aShape = BRepBuilderAPI_MakeEdge(P1, P2).Shape();
  } else if (aType == VECTOR_TWO_PNT) {
    Handle(GEOM_Function) aRefPnt1 = aPI.GetPoint1();
    Handle(GEOM_Function) aRefPnt2 = aPI.GetPoint2();
    TopoDS_Shape aShape1 = aRefPnt1->GetValue();
    TopoDS_Shape aShape2 = aRefPnt2->GetValue();
    if (aShape1.ShapeType() != TopAbs_VERTEX ||
        aShape2.ShapeType() != TopAbs_VERTEX) return 0;
    if (aShape1.IsSame(aShape2)) {
      Standard_ConstructionError::Raise("The end points must be different");
    }
    TopoDS_Vertex V1 = TopoDS::Vertex(aShape1);
    TopoDS_Vertex V2 = TopoDS::Vertex(aShape2);
    gp_Pnt P1 = BRep_Tool::Pnt(V1);
    gp_Pnt P2 = BRep_Tool::Pnt(V2);
    if (P1.Distance(P2) < Precision::Confusion()) {
      Standard_ConstructionError::Raise("The end points are too close");
    }
    aShape = BRepBuilderAPI_MakeEdge(V1, V2).Shape();
  } 
  else if(aType == VECTOR_TANGENT_CURVE_PAR) {
    Handle(GEOM_Function) aRefCurve = aPI.GetCurve();
    TopoDS_Shape aRefShape = aRefCurve->GetValue();
    if (aRefShape.ShapeType() != TopAbs_EDGE) {
      Standard_TypeMismatch::Raise
        ("Tangent On Curve creation aborted : curve shape is not an edge");
    }
    Standard_Real aFParam =0., aLParam =0., aParam =0.;
    Handle(Geom_Curve) aCurve = BRep_Tool::Curve(TopoDS::Edge(aRefShape), aFParam, aLParam);
    if(aCurve.IsNull()) {
      Standard_TypeMismatch::Raise
        ("Tangent On Curve creation aborted : curve is null");
    }

    aParam = aFParam + (aLParam - aFParam) * aPI.GetParameter();
    gp_Pnt aPoint1,aPoint2;
    gp_Vec aVec;
    aCurve->D1(aParam,aPoint1,aVec);
    if(aVec.Magnitude() < gp::Resolution())
      Standard_TypeMismatch::Raise
        ("Tangent On Curve creation aborted : invalid value of tangent");
    aPoint2.SetXYZ(aPoint1.XYZ() + aVec.XYZ());
    BRepBuilderAPI_MakeEdge aBuilder(aPoint1,aPoint2);
    if(aBuilder.IsDone())
      aShape = aBuilder.Shape();
  }
  else if(aType == VECTOR_PNT_DX_DY_DZ) {
	Handle(GEOM_Function) aRefPnt1 = aPI.GetPoint1();
	TopoDS_Shape aShape1 = aRefPnt1->GetValue();
	if (aShape1.ShapeType() != TopAbs_VERTEX )
		Standard_ConstructionError::Raise("Not a valid point");

	TopoDS_Vertex V1 = TopoDS::Vertex(aShape1);

	gp_Pnt P1 = BRep_Tool::Pnt(V1);
	gp_Pnt P2 (aPI.GetDX(), aPI.GetDY(), aPI.GetDZ());

	if (P1.Distance(P2) < Precision::Confusion()) {
	  Standard_ConstructionError::Raise("The end points are too close");
	}
	gp_Pnt aFinalPnt = gp_Pnt(P1.X() + P2.X(), P1.Y() + P2.Y(), P1.Z() + P2.Z());
	aShape = BRepBuilderAPI_MakeEdge( P1, aFinalPnt).Shape();
  }

  if (aShape.IsNull()) return 0;

  aFunction->SetValue(aShape);

  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_VectorDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_VectorDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_VectorDriver",
			                                 sizeof(GEOMImpl_VectorDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_VectorDriver) Handle(GEOMImpl_VectorDriver)::DownCast
       (const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_VectorDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_VectorDriver))) {
       _anOtherObject = Handle(GEOMImpl_VectorDriver)((Handle(GEOMImpl_VectorDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
