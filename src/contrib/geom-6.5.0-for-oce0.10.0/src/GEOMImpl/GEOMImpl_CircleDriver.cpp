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

#include <GEOMImpl_CircleDriver.hxx>
#include <GEOMImpl_ICircle.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <BRepBuilderAPI_MakeEdge.hxx>
#include <BRep_Tool.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopAbs.hxx>
#include <TopExp.hxx>

#include <GC_MakeCircle.hxx>
#include <Geom_Circle.hxx>

#include <Standard_ConstructionError.hxx>
#include <Precision.hxx>
#include <gp_Pnt.hxx>
#include <gp_Vec.hxx>
#include <gp_Circ.hxx>

//=======================================================================
//function : GetID
//purpose  :
//======================================================================= 
const Standard_GUID& GEOMImpl_CircleDriver::GetID()
{
  static Standard_GUID aCircleDriver("FF1BBB32-5D14-4df2-980B-3A668264EA16");
  return aCircleDriver; 
}


//=======================================================================
//function : GEOMImpl_CircleDriver
//purpose  : 
//=======================================================================
GEOMImpl_CircleDriver::GEOMImpl_CircleDriver() 
{
}

//=======================================================================
//function : Execute
//purpose  :
//======================================================================= 
Standard_Integer GEOMImpl_CircleDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;    
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_ICircle aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  if (aType == CIRCLE_PNT_VEC_R) {
    // Center
    gp_Pnt aP = gp::Origin();
    Handle(GEOM_Function) aRefPoint = aCI.GetCenter();
    if (!aRefPoint.IsNull()) {
      TopoDS_Shape aShapePnt = aRefPoint->GetValue();
      if (aShapePnt.ShapeType() != TopAbs_VERTEX) {
        Standard_ConstructionError::Raise
          ("Circle creation aborted: invalid center argument, must be a point");
      }
      aP = BRep_Tool::Pnt(TopoDS::Vertex(aShapePnt));
    }
    // Normal
    gp_Vec aV = gp::DZ();
    Handle(GEOM_Function) aRefVector = aCI.GetVector();
    if (!aRefVector.IsNull()) {
      TopoDS_Shape aShapeVec = aRefVector->GetValue();
      if (aShapeVec.ShapeType() != TopAbs_EDGE) {
        Standard_ConstructionError::Raise
          ("Circle creation aborted: invalid vector argument, must be a vector or an edge");
      }
      TopoDS_Edge anE = TopoDS::Edge(aShapeVec);
      TopoDS_Vertex V1, V2;
      TopExp::Vertices(anE, V1, V2, Standard_True);
      if (!V1.IsNull() && !V2.IsNull()) {
        aV = gp_Vec(BRep_Tool::Pnt(V1), BRep_Tool::Pnt(V2));
        if (aV.Magnitude() < gp::Resolution()) {
          Standard_ConstructionError::Raise
            ("Circle creation aborted: vector of zero length is given");
        }
      }
    }
    // Axes
    gp_Ax2 anAxes (aP, aV);
    // Radius
    double anR = aCI.GetRadius();
    char aMsg[] = "Circle creation aborted: radius value less than 1e-07 is not acceptable";
    if (anR < Precision::Confusion())
      Standard_ConstructionError::Raise(aMsg);
    // Circle
    gp_Circ aCirc (anAxes, anR);
    aShape = BRepBuilderAPI_MakeEdge(aCirc).Edge();
  }
  else if (aType == CIRCLE_CENTER_TWO_PNT) {
    Handle(GEOM_Function) aRefPoint1 = aCI.GetPoint1();
    Handle(GEOM_Function) aRefPoint2 = aCI.GetPoint2();
    Handle(GEOM_Function) aRefPoint3 = aCI.GetPoint3();
    TopoDS_Shape aShapePnt1 = aRefPoint1->GetValue();
    TopoDS_Shape aShapePnt2 = aRefPoint2->GetValue();
    TopoDS_Shape aShapePnt3 = aRefPoint3->GetValue();
    if (aShapePnt1.ShapeType() == TopAbs_VERTEX &&
        aShapePnt2.ShapeType() == TopAbs_VERTEX &&
        aShapePnt3.ShapeType() == TopAbs_VERTEX)
    {
      gp_Pnt aP1 = BRep_Tool::Pnt(TopoDS::Vertex(aShapePnt1));
      gp_Pnt aP2 = BRep_Tool::Pnt(TopoDS::Vertex(aShapePnt2));
      gp_Pnt aP3 = BRep_Tool::Pnt(TopoDS::Vertex(aShapePnt3));

      if (aP1.Distance(aP2) < gp::Resolution() ||
          aP1.Distance(aP3) < gp::Resolution() ||
          aP2.Distance(aP3) < gp::Resolution())
        Standard_ConstructionError::Raise("Circle creation aborted: coincident points given");

      if (gp_Vec(aP1, aP2).IsParallel(gp_Vec(aP1, aP3), Precision::Angular()))
        Standard_ConstructionError::Raise("Circle creation aborted: points lay on one line");

      double x, y, z, x1, y1, z1, x2, y2, z2, dx, dy, dz, dx2, dy2, dz2, dx3, dy3, dz3, aRadius;
      //Calculations for Radius
      x = aP1.X(); y = aP1.Y(); z = aP1.Z();
      x1 = aP2.X(); y1 = aP2.Y(); z1 = aP2.Z();
      dx = x1 - x;
      dy = y1 - y;
      dz = z1 - z;
      aRadius = sqrt(dx*dx + dy*dy + dz*dz);
      //Calculations for Plane Vector
      x2 = aP3.X(); y2 = aP3.Y(); z2 = aP3.Z();
      dx2 = x2 - x; dy2 = y2 - y; dz2 = z2 - z;
      dx3 = ((dy*dz2) - (dy2*dz))/100;
      dy3 = ((dx2*dz) - (dx*dz2))/100;
      dz3 = ((dx*dy2) - (dx2*dy))/100;
      //Make Plane Vector
      gp_Dir aDir ( dx3, dy3, dz3 );
      //Make Circle
      gp_Ax2 anAxes (aP1, aDir);
      gp_Circ aCirc (anAxes, aRadius);
      aShape = BRepBuilderAPI_MakeEdge(aCirc).Edge();  
    }
  }
  else if (aType == CIRCLE_THREE_PNT) {
    Handle(GEOM_Function) aRefPoint1 = aCI.GetPoint1();
    Handle(GEOM_Function) aRefPoint2 = aCI.GetPoint2();
    Handle(GEOM_Function) aRefPoint3 = aCI.GetPoint3();
    TopoDS_Shape aShapePnt1 = aRefPoint1->GetValue();
    TopoDS_Shape aShapePnt2 = aRefPoint2->GetValue();
    TopoDS_Shape aShapePnt3 = aRefPoint3->GetValue();
    if (aShapePnt1.ShapeType() == TopAbs_VERTEX &&
        aShapePnt2.ShapeType() == TopAbs_VERTEX &&
        aShapePnt3.ShapeType() == TopAbs_VERTEX) {
      gp_Pnt aP1 = BRep_Tool::Pnt(TopoDS::Vertex(aShapePnt1));
      gp_Pnt aP2 = BRep_Tool::Pnt(TopoDS::Vertex(aShapePnt2));
      gp_Pnt aP3 = BRep_Tool::Pnt(TopoDS::Vertex(aShapePnt3));
      if (aP1.Distance(aP2) < gp::Resolution() ||
          aP1.Distance(aP3) < gp::Resolution() ||
          aP2.Distance(aP3) < gp::Resolution())
        Standard_ConstructionError::Raise("Circle creation aborted: coincident points given");
      if (gp_Vec(aP1, aP2).IsParallel(gp_Vec(aP1, aP3), Precision::Angular()))
        Standard_ConstructionError::Raise("Circle creation aborted: points lay on one line");
      Handle(Geom_Circle) aCirc = GC_MakeCircle(aP1, aP2, aP3).Value();
      aShape = BRepBuilderAPI_MakeEdge(aCirc).Edge();
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
//function :  GEOMImpl_CircleDriver_Type_
//purpose  :
//======================================================================= 
Standard_EXPORT Handle_Standard_Type& GEOMImpl_CircleDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared); 
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_CircleDriver",
                                                         sizeof(GEOMImpl_CircleDriver),
                                                         1,
                                                         (Standard_Address)_Ancestors,
                                                         (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//======================================================================= 
const Handle(GEOMImpl_CircleDriver) Handle(GEOMImpl_CircleDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_CircleDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_CircleDriver))) {
       _anOtherObject = Handle(GEOMImpl_CircleDriver)((Handle(GEOMImpl_CircleDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
