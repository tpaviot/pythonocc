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

#include <GEOMImpl_RevolutionDriver.hxx>

#include <GEOMImpl_IShapesOperations.hxx>
#include <GEOMImpl_IRevolution.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <BRepPrimAPI_MakeRevol.hxx>
#include <BRepBuilderAPI_Transform.hxx>
#include <BRep_Tool.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopAbs.hxx>
#include <TopExp.hxx>
#include <gp_Trsf.hxx>
#include <gp_Pnt.hxx>
#include <gp_Lin.hxx>
#include <gp_Dir.hxx>
#include <Precision.hxx>
#include <StdFail_NotDone.hxx>
#include <Standard_TypeMismatch.hxx>
#include <Standard_ConstructionError.hxx>

//=======================================================================
//function : GetID
//purpose  :
//======================================================================= 
const Standard_GUID& GEOMImpl_RevolutionDriver::GetID()
{
  static Standard_GUID aRevolutionDriver("FF1BBB18-5D14-4df2-980B-3A668264EA16");
  return aRevolutionDriver; 
}


//=======================================================================
//function : GEOMImpl_RevolutionDriver
//purpose  : 
//=======================================================================
GEOMImpl_RevolutionDriver::GEOMImpl_RevolutionDriver() 
{
}

//=======================================================================
//function : Execute
//purpose  :
//======================================================================= 
Standard_Integer GEOMImpl_RevolutionDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;    
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IRevolution aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  if (aType == REVOLUTION_BASE_AXIS_ANGLE || aType == REVOLUTION_BASE_AXIS_ANGLE_2WAYS) {
    Handle(GEOM_Function) aRefBase = aCI.GetBase();
    Handle(GEOM_Function) aRefAxis = aCI.GetAxis();
    TopoDS_Shape aShapeBase = aRefBase->GetValue();
    TopoDS_Shape aShapeAxis = aRefAxis->GetValue();
    if (aShapeAxis.ShapeType() != TopAbs_EDGE) {
      Standard_TypeMismatch::Raise("Revolution Axis must be an edge");
    }

    TopoDS_Edge anE = TopoDS::Edge(aShapeAxis);
    TopoDS_Vertex V1, V2;
    TopExp::Vertices(anE, V1, V2, Standard_True);
    if (V1.IsNull() || V2.IsNull()) {
      Standard_ConstructionError::Raise("Bad edge for the Revolution Axis given");
    }

    gp_Vec aV (BRep_Tool::Pnt(V1), BRep_Tool::Pnt(V2));
    if (aV.Magnitude() < Precision::Confusion()) {
      Standard_ConstructionError::Raise
        ("End vertices of edge, defining the Revolution Axis, are too close");
    }

    if (aShapeBase.ShapeType() == TopAbs_VERTEX) {
      gp_Lin aL(BRep_Tool::Pnt(V1), gp_Dir(aV));
      Standard_Real d = aL.Distance(BRep_Tool::Pnt(TopoDS::Vertex(aShapeBase)));
      if (d < Precision::Confusion()) {
        Standard_ConstructionError::Raise("Vertex to be rotated is too close to Revolution Axis");
      }
    }
    double anAngle = aCI.GetAngle();
    gp_Ax1 anAxis (BRep_Tool::Pnt(V1), aV);
    if (aType == REVOLUTION_BASE_AXIS_ANGLE_2WAYS)
      {
        gp_Trsf aTrsf;
        aTrsf.SetRotation(anAxis, ( -anAngle ));
        BRepBuilderAPI_Transform aTransformation(aShapeBase, aTrsf, Standard_False);
        aShapeBase = aTransformation.Shape();
        anAngle = anAngle * 2;
      }
    BRepPrimAPI_MakeRevol MR (aShapeBase, anAxis, anAngle, Standard_False);
    if (!MR.IsDone()) MR.Build();
    if (!MR.IsDone()) StdFail_NotDone::Raise("Revolution algorithm has failed");
    aShape = MR.Shape();
  } else {
  }

  if (aShape.IsNull()) return 0;

  TopoDS_Shape aRes = GEOMImpl_IShapesOperations::CompsolidToCompound(aShape);
  aFunction->SetValue(aRes);

  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_RevolutionDriver_Type_
//purpose  :
//======================================================================= 
Standard_EXPORT Handle_Standard_Type& GEOMImpl_RevolutionDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared); 
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_RevolutionDriver",
                                                         sizeof(GEOMImpl_RevolutionDriver),
                                                         1,
                                                         (Standard_Address)_Ancestors,
                                                         (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//======================================================================= 
const Handle(GEOMImpl_RevolutionDriver) Handle(GEOMImpl_RevolutionDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_RevolutionDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_RevolutionDriver))) {
       _anOtherObject = Handle(GEOMImpl_RevolutionDriver)((Handle(GEOMImpl_RevolutionDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
