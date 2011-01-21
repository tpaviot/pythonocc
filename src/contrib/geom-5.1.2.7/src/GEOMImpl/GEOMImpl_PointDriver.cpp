//  Copyright (C) 2007-2008  CEA/DEN, EDF R&D, OPEN CASCADE
//
//  Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
//  CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
//  This library is free software; you can redistribute it and/or
//  modify it under the terms of the GNU Lesser General Public
//  License as published by the Free Software Foundation; either
//  version 2.1 of the License.
//
//  This library is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//  Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public
//  License along with this library; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
//  See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
#include <Standard_Stream.hxx>

#include <GEOMImpl_PointDriver.hxx>
#include <GEOMImpl_IPoint.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <BRep_Tool.hxx>
#include <BRepBuilderAPI_MakeVertex.hxx>
#include <BRepExtrema_DistShapeShape.hxx>
#include <Precision.hxx>
#include <TopAbs.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>

#include <Geom_Curve.hxx>
#include <Geom_Surface.hxx>
#include <gp_Pnt.hxx>
#include <TopoDS_Face.hxx>
#include <ShapeAnalysis.hxx>


//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_PointDriver::GetID()
{
  static Standard_GUID aPointDriver("FF1BBB02-5D14-4df2-980B-3A668264EA16");
  return aPointDriver;
}


//=======================================================================
//function : GEOMImpl_PointDriver
//purpose  :
//=======================================================================
GEOMImpl_PointDriver::GEOMImpl_PointDriver()
{
}


//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_PointDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull())  return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IPoint aPI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  gp_Pnt aPnt;

  if (aType == POINT_XYZ) {
    aPnt = gp_Pnt(aPI.GetX(), aPI.GetY(), aPI.GetZ());

  }
  else if (aType == POINT_XYZ_REF) {

    Handle(GEOM_Function) aRefPoint = aPI.GetRef();
    TopoDS_Shape aRefShape = aRefPoint->GetValue();
    if (aRefShape.ShapeType() != TopAbs_VERTEX) {
      Standard_TypeMismatch::Raise
        ("Point creation aborted : referenced shape is not a vertex");
    }
    gp_Pnt P = BRep_Tool::Pnt(TopoDS::Vertex(aRefShape));
    aPnt = gp_Pnt(P.X() + aPI.GetX(), P.Y() + aPI.GetY(), P.Z() + aPI.GetZ());

  }
  else if (aType == POINT_CURVE_PAR) {
    Handle(GEOM_Function) aRefCurve = aPI.GetCurve();
    TopoDS_Shape aRefShape = aRefCurve->GetValue();
    if (aRefShape.ShapeType() != TopAbs_EDGE) {
      Standard_TypeMismatch::Raise
        ("Point On Curve creation aborted : curve shape is not an edge");
    }
    Standard_Real aFP, aLP, aP;
    Handle(Geom_Curve) aCurve = BRep_Tool::Curve(TopoDS::Edge(aRefShape), aFP, aLP);
    aP = aFP + (aLP - aFP) * aPI.GetParameter();
    aPnt = aCurve->Value(aP);
  }
  else if (aType == POINT_SURFACE_PAR) {
    Handle(GEOM_Function) aRefCurve = aPI.GetSurface();
    TopoDS_Shape aRefShape = aRefCurve->GetValue();
    if (aRefShape.ShapeType() != TopAbs_FACE) {
      Standard_TypeMismatch::Raise
        ("Point On Surface creation aborted : surface shape is not a face");
    }
    TopoDS_Face F = TopoDS::Face(aRefShape);
    Handle(Geom_Surface) aSurf = BRep_Tool::Surface(F);
    Standard_Real U1,U2,V1,V2;
    //aSurf->Bounds(U1,U2,V1,V2);
    ShapeAnalysis::GetFaceUVBounds(F,U1,U2,V1,V2);
    Standard_Real U = U1 + (U2-U1) * aPI.GetParameter();
    Standard_Real V = V1 + (V2-V1) * aPI.GetParameter2();
    aPnt = aSurf->Value(U,V);
  }
  else if (aType == POINT_LINES_INTERSECTION) {
    Handle(GEOM_Function) aRef1 = aPI.GetLine1();
    Handle(GEOM_Function) aRef2 = aPI.GetLine2();

    TopoDS_Shape aRefShape1 = aRef1->GetValue();
    TopoDS_Shape aRefShape2 = aRef2->GetValue();

    if (aRefShape1.ShapeType() != TopAbs_EDGE || aRefShape2.ShapeType() != TopAbs_EDGE ) {
      Standard_TypeMismatch::Raise
        ("Creation Point On Lines Intersection Aborted : Line shape is not an edge");
    }
    //Calculate Lines Intersection Point
    BRepExtrema_DistShapeShape dst (aRefShape1, aRefShape2);
    if (dst.IsDone())
      {
	gp_Pnt P1, P2;
	for (int i = 1; i <= dst.NbSolution(); i++) {
	  P1 = dst.PointOnShape1(i);
	  P2 = dst.PointOnShape2(i);
	  Standard_Real Dist = P1.Distance(P2);
	  if ( Dist <= Precision::Confusion() )
	    aPnt = P1;
	  else 
	    Standard_TypeMismatch::Raise ("Lines not have an Intersection Point");
	}
      }
  }
  else {
    return 0;
  }

  BRepBuilderAPI_MakeVertex mkVertex (aPnt);
  TopoDS_Shape aShape = mkVertex.Shape();
  aShape.Infinite(Standard_True);
  aFunction->SetValue(aShape);

  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_PointDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_PointDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_PointDriver",
			                                 sizeof(GEOMImpl_PointDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================

const Handle(GEOMImpl_PointDriver) Handle(GEOMImpl_PointDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_PointDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_PointDriver))) {
       _anOtherObject = Handle(GEOMImpl_PointDriver)((Handle(GEOMImpl_PointDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}


