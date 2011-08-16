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

#include <GEOMImpl_LineDriver.hxx>
#include <GEOMImpl_ILine.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <BRep_Tool.hxx>
#include <BRepBuilderAPI_MakeEdge.hxx>
#include <BRepAlgoAPI_Section.hxx>

#include <TopAbs.hxx>
#include <TopExp.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>

#include <TopExp_Explorer.hxx>
#include <TopTools_MapOfShape.hxx>

#include <gp_Pnt.hxx>
#include <Precision.hxx>
#include <Standard_ConstructionError.hxx>
#include <Standard_NullObject.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_LineDriver::GetID()
{
  static Standard_GUID aLineDriver("FF1BBB06-5D14-4df2-980B-3A668264EA16");
  return aLineDriver;
}


//=======================================================================
//function : GEOMImpl_LineDriver
//purpose  :
//=======================================================================
GEOMImpl_LineDriver::GEOMImpl_LineDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_LineDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull())  return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_ILine aPI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  if (aType == LINE_TWO_PNT) {
    Handle(GEOM_Function) aRefPnt1 = aPI.GetPoint1();
    Handle(GEOM_Function) aRefPnt2 = aPI.GetPoint2();
    TopoDS_Shape aShape1 = aRefPnt1->GetValue();
    TopoDS_Shape aShape2 = aRefPnt2->GetValue();
    if (aShape1.ShapeType() != TopAbs_VERTEX ||
        aShape2.ShapeType() != TopAbs_VERTEX) {
      Standard_ConstructionError::Raise("Wrong arguments: two points must be given");
    }
    if (aShape1.IsSame(aShape2)) {
      Standard_ConstructionError::Raise("The end points must be different");
    }
    gp_Pnt P1 = BRep_Tool::Pnt(TopoDS::Vertex(aShape1));
    gp_Pnt P2 = BRep_Tool::Pnt(TopoDS::Vertex(aShape2));
    if (P1.Distance(P2) < Precision::Confusion()) {
      Standard_ConstructionError::Raise("The end points are too close");
    }
    aShape = BRepBuilderAPI_MakeEdge(P1, P2).Shape();

  } else if (aType == LINE_PNT_DIR) {
    Handle(GEOM_Function) aRefPnt = aPI.GetPoint1();
    Handle(GEOM_Function) aRefDir = aPI.GetPoint2();
    TopoDS_Shape aShape1 = aRefPnt->GetValue();
    TopoDS_Shape aShape2 = aRefDir->GetValue();
    if (aShape1.ShapeType() != TopAbs_VERTEX) {
      Standard_ConstructionError::Raise("Wrong first argument: must be point");
    }
    if (aShape2.ShapeType() != TopAbs_EDGE) {
      Standard_ConstructionError::Raise("Wrong second argument: must be vector");
    }
    if (aShape1.IsSame(aShape2)) {
      Standard_ConstructionError::Raise("The end points must be different");
    }
    gp_Pnt P1 = BRep_Tool::Pnt(TopoDS::Vertex(aShape1));

    TopoDS_Edge anE = TopoDS::Edge(aShape2);
    TopoDS_Vertex V1, V2;
    TopExp::Vertices(anE, V1, V2, Standard_True);
    if (V1.IsNull() || V2.IsNull()) {
      Standard_NullObject::Raise("Line creation aborted: vector is not defined");
    }
    gp_Pnt PV1 = BRep_Tool::Pnt(V1);
    gp_Pnt PV2 = BRep_Tool::Pnt(V2);
    if (PV1.Distance(PV2) < Precision::Confusion()) {
      Standard_ConstructionError::Raise("Vector with null magnitude");
    }

    gp_Pnt P2 (P1.XYZ() + PV2.XYZ() - PV1.XYZ());
    aShape = BRepBuilderAPI_MakeEdge(P1, P2).Shape();
  }
  else if (aType == LINE_TWO_FACES) {
    Handle(GEOM_Function) aRefFace1 = aPI.GetFace1();
    Handle(GEOM_Function) aRefFace2 = aPI.GetFace2();
    TopoDS_Shape aShape1 = aRefFace1->GetValue();
    TopoDS_Shape aShape2 = aRefFace2->GetValue();
    if (aShape1.ShapeType() != TopAbs_FACE ||
        aShape2.ShapeType() != TopAbs_FACE) {
      Standard_ConstructionError::Raise("Wrong arguments: two faces must be given");
    }
    if (aShape1.IsSame(aShape2)) {
      Standard_ConstructionError::Raise("The end faces must be different");
    }
    BRepAlgoAPI_Section E (aShape1, aShape2, Standard_False);
    E.Approximation(Standard_True);
    E.Build();
    if (!E.IsDone()) {
      Standard_ConstructionError::Raise("Line can not be performed on the given faces");
    }
    else
    {
	TopExp_Explorer Exp (E, TopAbs_EDGE);
	if ( Exp.More() ){
	    aShape = Exp.Current();
	    Exp.Next();
	}
	else
	  {
	    Standard_ConstructionError::Raise("Faces not have intersection line");
	    aShape = E.Shape();
	  }
	if ( Exp.More() )
	  aShape = E.Shape();
	}
  }
  else {
  }

  if (aShape.IsNull()) return 0;
  //aShape.Infinite(true); // VSR: 05/04/2010: Fix 20668 (Fit All for points & lines)

  aFunction->SetValue(aShape);

  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_LineDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_LineDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_LineDriver",
			                                 sizeof(GEOMImpl_LineDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_LineDriver) Handle(GEOMImpl_LineDriver)::DownCast
       (const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_LineDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_LineDriver))) {
       _anOtherObject = Handle(GEOMImpl_LineDriver)((Handle(GEOMImpl_LineDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
