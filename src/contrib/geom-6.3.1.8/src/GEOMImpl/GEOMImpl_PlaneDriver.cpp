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

#include <GEOMImpl_PlaneDriver.hxx>
#include <GEOMImpl_IPlane.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <GEOMImpl_IMeasureOperations.hxx>

// OCCT Includes
#include <BRepBuilderAPI_MakeFace.hxx>
#include <BRep_Tool.hxx>
#include <BRepTopAdaptor_FClass2d.hxx>
#include <ShapeAnalysis.hxx>

#include <TopAbs.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopExp.hxx>

#include <GC_MakePlane.hxx>
#include <Geom_Surface.hxx>

#include <Precision.hxx>
#include <gp_Pnt.hxx>
#include <gp_Pln.hxx>
#include <gp_Vec.hxx>
#include <gp_Dir.hxx>
#include <gp_Ax3.hxx>

#include <Standard_ConstructionError.hxx>
#include <Standard_TypeMismatch.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_PlaneDriver::GetID()
{
  static Standard_GUID aPlaneDriver("FF1BBB05-5D14-4df2-980B-3A668264EA16");
  return aPlaneDriver;
}


//=======================================================================
//function : GEOMImpl_PlaneDriver
//purpose  :
//=======================================================================
GEOMImpl_PlaneDriver::GEOMImpl_PlaneDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_PlaneDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull())  return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IPlane aPI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  double aSize = aPI.GetSize() / 2.0;
  if (aType == PLANE_PNT_VEC) {
    Handle(GEOM_Function) aRefPnt = aPI.GetPoint();
    Handle(GEOM_Function) aRefVec = aPI.GetVector();
    TopoDS_Shape aShape1 = aRefPnt->GetValue();
    TopoDS_Shape aShape2 = aRefVec->GetValue();
    if (aShape1.ShapeType() != TopAbs_VERTEX ||
        aShape2.ShapeType() != TopAbs_EDGE) return 0;
    gp_Pnt aP = BRep_Tool::Pnt(TopoDS::Vertex(aShape1));
    TopoDS_Edge anE = TopoDS::Edge(aShape2);
    TopoDS_Vertex V1, V2;
    TopExp::Vertices(anE, V1, V2, Standard_True);
    if (!V1.IsNull() && !V2.IsNull()) {
      gp_Vec aV (BRep_Tool::Pnt(V1), BRep_Tool::Pnt(V2));
      gp_Pln aPln (aP, aV);
      aShape = BRepBuilderAPI_MakeFace(aPln, -aSize, +aSize, -aSize, +aSize).Shape();
    }
  } else if (aType == PLANE_THREE_PNT) {
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
      Standard_ConstructionError::Raise("Plane creation aborted: coincident points given");
    if (gp_Vec(aP1, aP2).IsParallel(gp_Vec(aP1, aP3), Precision::Angular()))
      Standard_ConstructionError::Raise("Plane creation aborted: points lay on one line");
    GC_MakePlane aMakePlane (aP1, aP2, aP3);
    aShape = BRepBuilderAPI_MakeFace(aMakePlane, -aSize, +aSize, -aSize, +aSize, Precision::Confusion()).Shape();
  } else if (aType == PLANE_FACE) {
    Handle(GEOM_Function) aRef = aPI.GetFace();
    TopoDS_Shape aRefShape = aRef->GetValue();
    //if (aRefShape.ShapeType() != TopAbs_FACE) return 0;
    //Handle(Geom_Surface) aGS = BRep_Tool::Surface(TopoDS::Face(aRefShape));
    //if (!aGS->IsKind(STANDARD_TYPE(Geom_Plane))) {
    //  Standard_TypeMismatch::Raise("Plane creation aborted: non-planar face given as argument");
    //}
    //aShape = BRepBuilderAPI_MakeFace(aGS, -aSize, +aSize, -aSize, +aSize).Shape();
    gp_Ax3 anAx3 = GEOMImpl_IMeasureOperations::GetPosition(aRefShape);
    gp_Pln aPln (anAx3);
    aShape = BRepBuilderAPI_MakeFace(aPln, -aSize, +aSize, -aSize, +aSize).Shape();
  }
  else if (aType == PLANE_TANGENT_FACE)
  {
    Handle(GEOM_Function) aRefFace = aPI.GetFace();
    TopoDS_Shape aShape1 = aRefFace->GetValue();
    if(aShape1.IsNull())
      Standard_TypeMismatch::Raise("Plane was not created.Basis face was not specified");
    TopoDS_Face aFace = TopoDS::Face(aShape1);

    Standard_Real aKoefU = aPI.GetParameterU();
    Standard_Real aKoefV = aPI.GetParameterV();
    Standard_Real aUmin,aUmax,aVmin,aVmax;
    ShapeAnalysis::GetFaceUVBounds(aFace,aUmin,aUmax,aVmin,aVmax);
    Standard_Real aDeltaU = aUmax - aUmin;
    Standard_Real aDeltaV = aVmax - aVmin;
    Standard_Real aParamU =  aUmin + aDeltaU*aKoefU;
    Standard_Real aParamV =  aVmin + aDeltaV*aKoefV;
    Handle(Geom_Surface) aSurf = BRep_Tool::Surface(aFace);
    if(aSurf.IsNull())
      Standard_TypeMismatch::Raise("Plane was not created.Base surface is absent");
    gp_Vec aVecU,aVecV;
    gp_Pnt aPLoc;
    aSurf->D1(aParamU,aParamV,aPLoc,aVecU,aVecV);
    BRepTopAdaptor_FClass2d clas(aFace,Precision::PConfusion());

    TopAbs_State stOut= clas.PerformInfinitePoint();
    gp_Pnt2d aP2d(aParamU,aParamV);
    TopAbs_State st= clas.Perform(aP2d);
    if(st == stOut)
      Standard_TypeMismatch::Raise("Plane was not created.Point lies outside the face");
    gp_Vec aNorm = aVecU^aVecV;
    gp_Ax3 anAxis(aPLoc,gp_Dir(aNorm),gp_Dir(aVecU));
    gp_Pln aPlane(anAxis);
    BRepBuilderAPI_MakeFace aTool(aPlane, -aSize, +aSize, -aSize, +aSize);
    if(aTool.IsDone())
      aShape = aTool.Shape();
  }
  else if (aType == PLANE_2_VEC) {
    Handle(GEOM_Function) aRefVec1 = aPI.GetVector1();
    Handle(GEOM_Function) aRefVec2 = aPI.GetVector2();
    TopoDS_Shape aShape1 = aRefVec1->GetValue();
    TopoDS_Shape aShape2 = aRefVec2->GetValue();
    if (aShape1.ShapeType() != TopAbs_EDGE ||
        aShape2.ShapeType() != TopAbs_EDGE) return 0;
    TopoDS_Edge aVectX = TopoDS::Edge(aShape1);
    TopoDS_Edge aVectZ = TopoDS::Edge(aShape2);

    TopoDS_Vertex VX1, VX2, VZ1, VZ2;
    TopExp::Vertices( aVectX, VX1, VX2, Standard_True );
    TopExp::Vertices( aVectZ, VZ1, VZ2, Standard_True );

    gp_Vec aVX = gp_Vec( BRep_Tool::Pnt( VX1 ), BRep_Tool::Pnt( VX2 ) );
    gp_Vec aVZ = gp_Vec( BRep_Tool::Pnt( VZ1 ), BRep_Tool::Pnt( VZ2 ) );

    if ( aVX.Magnitude() < Precision::Confusion() || aVZ.Magnitude() < Precision::Confusion())
      Standard_TypeMismatch::Raise("Invalid vector selected");

    gp_Dir aDirX = gp_Dir( aVX.X(), aVX.Y(), aVX.Z() );
    gp_Dir aDirZ = gp_Dir( aVZ.X(), aVZ.Y(), aVZ.Z() );

    if ( aDirX.IsParallel( aDirZ, Precision::Angular() ) )
      Standard_TypeMismatch::Raise("Parallel vectors selected");

    gp_Ax3 aPlane = gp_Ax3( BRep_Tool::Pnt( VX1 ), aDirZ, aDirX );
    BRepBuilderAPI_MakeFace aTool(aPlane, -aSize, +aSize, -aSize, +aSize);
    if(aTool.IsDone())
      aShape = aTool.Shape();
  }
  else if (aType == PLANE_LCS) {
    Handle(GEOM_Function) aRef = aPI.GetLCS();
    double anOrientation = aPI.GetOrientation();    
    gp_Ax3 anAx3;
    if (aRef.IsNull()) {
      gp_Ax2 anAx2 = gp::XOY();
      anAx3 = gp_Ax3( anAx2 );
    } else {
      TopoDS_Shape aRefShape = aRef->GetValue();
      if (aRefShape.ShapeType() != TopAbs_FACE)
	return 0;
      anAx3 = GEOMImpl_IMeasureOperations::GetPosition(aRefShape);
    }

    if ( anOrientation == 2)
      anAx3 = gp_Ax3(anAx3.Location(), anAx3.XDirection(), anAx3.YDirection() );
    else if ( anOrientation == 3 )
      anAx3 = gp_Ax3(anAx3.Location(), anAx3.YDirection(), anAx3.XDirection() );

    gp_Pln aPln(anAx3);
    aShape = BRepBuilderAPI_MakeFace(aPln, -aSize, +aSize, -aSize, +aSize).Shape();
  }
  else {
  }

  if (aShape.IsNull()) return 0;

  aFunction->SetValue(aShape);

  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_PlaneDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_PlaneDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_PlaneDriver",
			                                 sizeof(GEOMImpl_PlaneDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_PlaneDriver) Handle(GEOMImpl_PlaneDriver)::DownCast
       (const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_PlaneDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_PlaneDriver))) {
       _anOtherObject = Handle(GEOMImpl_PlaneDriver)((Handle(GEOMImpl_PlaneDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
