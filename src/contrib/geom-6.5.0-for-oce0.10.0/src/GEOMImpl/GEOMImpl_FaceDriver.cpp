// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
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

#include <GEOMImpl_FaceDriver.hxx>
#include <GEOMImpl_IFace.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <GEOMImpl_IMeasureOperations.hxx>

#include <BRepBuilderAPI_MakeFace.hxx>
#include <BRep_Tool.hxx>
#include <gp_Pnt.hxx>
#include <gp_Pln.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopAbs.hxx>
#include <TopExp.hxx>

#include <StdFail_NotDone.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_FaceDriver::GetID()
{
  static Standard_GUID aFaceDriver("F7953CC1-FF8B-4628-BF5E-9D3510DE4629");
  return aFaceDriver;
}


//=======================================================================
//function : GEOMImpl_FaceDriver
//purpose  :
//=======================================================================
GEOMImpl_FaceDriver::GEOMImpl_FaceDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_FaceDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IFace aFI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  if (aType == FACE_OBJ_H_W) {
    Handle(GEOM_Function) aRefFunct = aFI.GetRef1();
    TopoDS_Shape aRefShape = aRefFunct->GetValue();
    if (aRefShape.ShapeType() == TopAbs_EDGE) {
      TopoDS_Edge anEdge = TopoDS::Edge(aRefShape);
      double aH = aFI.GetH() / 2.0;
      double aW = aFI.GetW() / 2.0;
      TopoDS_Vertex V1, V2;
      TopExp::Vertices(anEdge, V1, V2, Standard_True);
      gp_Pnt aP (BRep_Tool::Pnt(V1));
      gp_Vec aV (BRep_Tool::Pnt(V1), BRep_Tool::Pnt(V2));
      gp_Pln aPlane (aP, aV);
      aShape = BRepBuilderAPI_MakeFace(aPlane, -aH, +aH, -aW, +aW).Shape();
    } else if (aRefShape.ShapeType() == TopAbs_FACE) {
      double aH = aFI.GetH() / 2.0;
      double aW = aFI.GetW() / 2.0;
      gp_Ax3 anAx = GEOMImpl_IMeasureOperations::GetPosition(aRefShape);
      gp_Pln aPln (anAx);
      aShape = BRepBuilderAPI_MakeFace(aPln, -aH, +aH, -aW, +aW).Shape();
    }
  }
  else if (aType == FACE_H_W) {
    double aH = aFI.GetH() / 2.0;
    double aW = aFI.GetW() / 2.0;
    TopoDS_Vertex V1, V2;
    int anOrient = aFI.GetOrientation();
    gp_Pnt aP = gp::Origin();
    gp_Vec aV;
    if (anOrient == 1)
      aV = gp::DZ();
    else if (anOrient == 2)
      aV = gp::DX();
    else if (anOrient == 3)
      aV = gp::DY();

    gp_Pln aPlane (aP, aV);
    aShape = BRepBuilderAPI_MakeFace(aPlane, -aH, +aH, -aW, +aW).Shape();
  }
  else {
  }

  if (aShape.IsNull()) return 0;

  aFunction->SetValue(aShape);

  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_FaceDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_FaceDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_FaceDriver",
                                                         sizeof(GEOMImpl_FaceDriver),
                                                         1,
                                                         (Standard_Address)_Ancestors,
                                                         (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_FaceDriver) Handle(GEOMImpl_FaceDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_FaceDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_FaceDriver))) {
       _anOtherObject = Handle(GEOMImpl_FaceDriver)((Handle(GEOMImpl_FaceDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
