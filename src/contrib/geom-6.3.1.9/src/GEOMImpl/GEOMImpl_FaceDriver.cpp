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

#include <GEOMImpl_FaceDriver.hxx>
#include <GEOMImpl_IFace.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <GEOMImpl_IMeasureOperations.hxx>

// OCCT Includes
#include <BRepBuilderAPI_MakeFace.hxx>
#include <BRepBuilderAPI_MakeWire.hxx>
#include <BRepBuilderAPI_MakeEdge.hxx>
#include <BRep_Tool.hxx>

#include <TopAbs.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>

#include <TopExp.hxx>

#include <Precision.hxx>
#include <gp_Pnt.hxx>
#include <gp_Pln.hxx>

#include <Standard_ConstructionError.hxx>
#include <Standard_TypeMismatch.hxx>

#include <TColgp_Array2OfPnt.hxx>
#include <Geom_BezierSurface.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_FaceDriver::GetID()
{
  static Standard_GUID aFaceDriver("FF1BBB74-5D14-4df2-980B-3A668264EA16");
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
  if (Label().IsNull())  return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IFace aPI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  if (aType == FACE_THREE_PNT) {
    Handle(GEOM_Function) aRefPnt1 = aPI.GetPoint1();
    Handle(GEOM_Function) aRefPnt2 = aPI.GetPoint2();
    Handle(GEOM_Function) aRefPnt3 = aPI.GetPoint3();
    TopoDS_Shape aShape1 = aRefPnt1->GetValue();
    TopoDS_Shape aShape2 = aRefPnt2->GetValue();
    TopoDS_Shape aShape3 = aRefPnt3->GetValue();
    if (aShape1.ShapeType() != TopAbs_VERTEX ||
        aShape2.ShapeType() != TopAbs_VERTEX ||
        aShape3.ShapeType() != TopAbs_VERTEX) return 0;
    gp_Pnt aP1 = BRep_Tool::Pnt(TopoDS::Vertex(aShape1));
    gp_Pnt aP2 = BRep_Tool::Pnt(TopoDS::Vertex(aShape2));
    gp_Pnt aP3 = BRep_Tool::Pnt(TopoDS::Vertex(aShape3));
    if (aP1.Distance(aP2) < gp::Resolution() ||
        aP1.Distance(aP3) < gp::Resolution() ||
        aP2.Distance(aP3) < gp::Resolution())
      Standard_ConstructionError::Raise("Face creation aborted: coincident points given");
    if (gp_Vec(aP1, aP2).IsParallel(gp_Vec(aP1, aP3), Precision::Angular()))
      Standard_ConstructionError::Raise("Face creation aborted: points lay on one line");
	TopoDS_Edge e1 = BRepBuilderAPI_MakeEdge( aP1, aP2 );
	TopoDS_Edge e2 = BRepBuilderAPI_MakeEdge( aP2, aP3 );
	TopoDS_Edge e3 = BRepBuilderAPI_MakeEdge( aP3, aP1 );

	TopoDS_Wire w = BRepBuilderAPI_MakeWire( e1, e2, e3 );

    aShape = BRepBuilderAPI_MakeFace(w).Shape();
  }
  else if (aType == FACE_FOUR_PNT) {
	Handle(GEOM_Function) aRefPnt1 = aPI.GetPoint1();
	Handle(GEOM_Function) aRefPnt2 = aPI.GetPoint2();
	Handle(GEOM_Function) aRefPnt3 = aPI.GetPoint3();
	Handle(GEOM_Function) aRefPnt4 = aPI.GetPoint4();
	TopoDS_Shape aShape1 = aRefPnt1->GetValue();
	TopoDS_Shape aShape2 = aRefPnt2->GetValue();
	TopoDS_Shape aShape3 = aRefPnt3->GetValue();
	TopoDS_Shape aShape4 = aRefPnt4->GetValue();
	if (aShape1.ShapeType() != TopAbs_VERTEX ||
			aShape2.ShapeType() != TopAbs_VERTEX ||
			aShape3.ShapeType() != TopAbs_VERTEX ||
			aShape4.ShapeType() != TopAbs_VERTEX) return 0;
	gp_Pnt aP1 = BRep_Tool::Pnt(TopoDS::Vertex(aShape1));
	gp_Pnt aP2 = BRep_Tool::Pnt(TopoDS::Vertex(aShape2));
	gp_Pnt aP3 = BRep_Tool::Pnt(TopoDS::Vertex(aShape3));
	gp_Pnt aP4 = BRep_Tool::Pnt(TopoDS::Vertex(aShape4));
	if (aP1.Distance(aP2) < gp::Resolution() ||
			aP1.Distance(aP3) < gp::Resolution() ||
			aP1.Distance(aP4) < gp::Resolution() ||
			aP2.Distance(aP3) < gp::Resolution() ||
			aP2.Distance(aP4) < gp::Resolution() ||
			aP3.Distance(aP4) < gp::Resolution())
		Standard_ConstructionError::Raise("Face creation aborted: coincident points given");
    //still todo: order the points, check for intersecting edges
	gp_Vec v12( aP1, aP2 );
	gp_Vec v13( aP1, aP3 );
	gp_Pln plane( aP1, gp_Dir( v12.Crossed( v13 ) ) );
	if( plane.Contains( aP4, Precision::Confusion() ) )
	{
	  //the four points descibe a plane
		TopoDS_Edge e12 = BRepBuilderAPI_MakeEdge( aP1, aP2 ).Edge();
		TopoDS_Edge e23 = BRepBuilderAPI_MakeEdge( aP2, aP3 ).Edge();
		TopoDS_Edge e34 = BRepBuilderAPI_MakeEdge( aP3, aP4 ).Edge();
		TopoDS_Edge e41 = BRepBuilderAPI_MakeEdge( aP4, aP1 ).Edge();
		
		TopoDS_Wire w = BRepBuilderAPI_MakeWire( e12, e23, e34, e41 );
		aShape = BRepBuilderAPI_MakeFace( w );
	}
	else
	{
	  TColgp_Array2OfPnt   points(1, 2, 1, 2);
	  points.SetValue( 1, 1, aP1 );
	  points.SetValue( 1, 2, aP2 );
	  points.SetValue( 2, 1, aP4 );
	  points.SetValue( 2, 2, aP3 );
	
	  Handle_Geom_BezierSurface bez = new Geom_BezierSurface(points);
	  aShape = BRepBuilderAPI_MakeFace(bez, Precision::Confusion()).Shape();
	}
  }
  else if (aType == FACE_OBJ_H_W) {
    Handle(GEOM_Function) aRefFunct = aPI.GetRef1();
    TopoDS_Shape aRefShape = aRefFunct->GetValue();
    if (aRefShape.ShapeType() == TopAbs_EDGE) {
      TopoDS_Edge anEdge = TopoDS::Edge(aRefShape);
      double aH = aPI.GetH() / 2.0;
      double aW = aPI.GetW() / 2.0;
      TopoDS_Vertex V1, V2;
      TopExp::Vertices(anEdge, V1, V2, Standard_True);
      gp_Pnt aP (BRep_Tool::Pnt(V1));
      gp_Vec aV (BRep_Tool::Pnt(V1), BRep_Tool::Pnt(V2));
      gp_Pln aPlane (aP, aV);
      aShape = BRepBuilderAPI_MakeFace(aPlane, -aH, +aH, -aW, +aW).Shape();
    } else if (aRefShape.ShapeType() == TopAbs_FACE) {
      double aH = aPI.GetH() / 2.0;
      double aW = aPI.GetW() / 2.0;
      gp_Ax3 anAx = GEOMImpl_IMeasureOperations::GetPosition(aRefShape);
      gp_Pln aPln (anAx);
      aShape = BRepBuilderAPI_MakeFace(aPln, -aH, +aH, -aW, +aW).Shape();
    }
  }
  else if (aType == FACE_H_W) {
    double aH = aPI.GetH() / 2.0;
    double aW = aPI.GetW() / 2.0;
    TopoDS_Vertex V1, V2;
    int anOrient = aPI.GetOrientation();
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
const Handle(GEOMImpl_FaceDriver) Handle(GEOMImpl_FaceDriver)::DownCast
       (const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_FaceDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_FaceDriver))) {
       _anOtherObject = Handle(GEOMImpl_FaceDriver)((Handle(GEOMImpl_FaceDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
