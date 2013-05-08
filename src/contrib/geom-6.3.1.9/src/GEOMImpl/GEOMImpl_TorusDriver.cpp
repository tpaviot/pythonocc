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

#include <GEOMImpl_TorusDriver.hxx>
#include <GEOMImpl_ITorus.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <BRepPrimAPI_MakeTorus.hxx>
#include <BRep_Tool.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopAbs.hxx>
#include <TopExp.hxx>

#include <gp_Pnt.hxx>
#include <Precision.hxx>
#include <StdFail_NotDone.hxx>
#include <Standard_TypeMismatch.hxx>
#include <Standard_ConstructionError.hxx>

//=======================================================================
//function : GetID
//purpose  :
//======================================================================= 
const Standard_GUID& GEOMImpl_TorusDriver::GetID()
{
  static Standard_GUID aTorusDriver("FF1BBB12-5D14-4df2-980B-3A668264EA16");
  return aTorusDriver; 
}


//=======================================================================
//function : GEOMImpl_TorusDriver
//purpose  : 
//=======================================================================
GEOMImpl_TorusDriver::GEOMImpl_TorusDriver() 
{
}

//=======================================================================
//function : Execute
//purpose  :
//======================================================================= 
Standard_Integer GEOMImpl_TorusDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;    
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_ITorus aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  double theAngle = aCI.GetAngle();
  if (theAngle == 0.)
	theAngle = M_PI / 2.;

  double theVCoordStart = aCI.GetVCoordStart();
  double theVCoordEnd = aCI.GetVCoordEnd();

  //There seems to be an issue with the  BRepPrimAPI_MakeTorus command concerning
  //the limitations on V coodinates of its parametric space ... (Will not be used for the moment)

  if (aType == TORUS_RR) {
	BRepPrimAPI_MakeTorus MT(aCI.GetRMajor(), aCI.GetRMinor()/*, theVCoordStart, theVCoordEnd*/, theAngle);
	if (!MT.IsDone())
	  MT.Build();
	if (!MT.IsDone())
	  StdFail_NotDone::Raise("Torus construction algorithm has failed");
	aShape = MT.Shape();

  } else if (aType == TORUS_PNT_VEC_RR) {
    Handle(GEOM_Function) aRefPoint  = aCI.GetCenter();
    Handle(GEOM_Function) aRefVector = aCI.GetVector();
    TopoDS_Shape aShapePnt = aRefPoint->GetValue();
    TopoDS_Shape aShapeVec = aRefVector->GetValue();
    if (aShapePnt.ShapeType() != TopAbs_VERTEX) {
      Standard_TypeMismatch::Raise("Torus Center must be a vertex");
    }
    if (aShapeVec.ShapeType() != TopAbs_EDGE) {
      Standard_TypeMismatch::Raise("Torus Axis must be an edge");
    }

    gp_Pnt aP = BRep_Tool::Pnt(TopoDS::Vertex(aShapePnt));
    TopoDS_Edge anE = TopoDS::Edge(aShapeVec);
    TopoDS_Vertex V1, V2;
    TopExp::Vertices(anE, V1, V2, Standard_True);
    if (V1.IsNull() || V2.IsNull()) {
      Standard_ConstructionError::Raise("Bad edge for the Torus Axis given");
    }

    gp_Vec aV (BRep_Tool::Pnt(V1), BRep_Tool::Pnt(V2));
    if (aV.Magnitude() < Precision::Confusion()) {
      Standard_ConstructionError::Raise
        ("End vertices of edge, defining the Torus Axis, are too close");
    }

    gp_Ax2 anAxes (aP, aV);
	BRepPrimAPI_MakeTorus MT (anAxes, aCI.GetRMajor(), aCI.GetRMinor()/*, theVCoordStart, theVCoordEnd*/, theAngle);
	if (!MT.IsDone()) MT.Build();
	if (!MT.IsDone()) StdFail_NotDone::Raise("Torus construction algorithm has failed");
	aShape = MT.Shape();
  } else {
  }

  if (aShape.IsNull()) return 0;
  aFunction->SetValue(aShape);

  log.SetTouched(Label()); 

  return 1;    
}


//=======================================================================
//function :  GEOMImpl_TorusDriver_Type_
//purpose  :
//======================================================================= 
Standard_EXPORT Handle_Standard_Type& GEOMImpl_TorusDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared); 
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_TorusDriver",
			                                 sizeof(GEOMImpl_TorusDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//======================================================================= 
const Handle(GEOMImpl_TorusDriver) Handle(GEOMImpl_TorusDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_TorusDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_TorusDriver))) {
       _anOtherObject = Handle(GEOMImpl_TorusDriver)((Handle(GEOMImpl_TorusDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
