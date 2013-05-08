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

#include <GEOMImpl_SplineDriver.hxx>
#include <GEOMImpl_ISpline.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <BRepBuilderAPI_MakeEdge.hxx>
#include <BRepBuilderAPI_MakeVertex.hxx>
#include <BRep_Tool.hxx>

#include <TopAbs.hxx>
#include <TopExp.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>

#include <Geom_BezierCurve.hxx>
//#include <GeomAPI_PointsToBSpline.hxx>
#include <GeomAPI_Interpolate.hxx>

#include <gp.hxx>
#include <gp_Pnt.hxx>
#include <gp_Circ.hxx>
#include <Precision.hxx>
#include <TColgp_Array1OfPnt.hxx>
#include <TColgp_HArray1OfPnt.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_SplineDriver::GetID()
{
  static Standard_GUID aSplineDriver("FF1BBB33-5D14-4df2-980B-3A668264EA16");
  return aSplineDriver;
}


//=======================================================================
//function : GEOMImpl_SplineDriver
//purpose  :
//=======================================================================
GEOMImpl_SplineDriver::GEOMImpl_SplineDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_SplineDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_ISpline aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  if (aType == SPLINE_BEZIER || aType == SPLINE_INTERPOLATION) {

    bool useCoords = aCI.GetConstructorType() == COORD_CONSTRUCTOR;
    TColgp_Array1OfPnt points(1, (useCoords ? aCI.GetLength() : 1) );
    if(useCoords) {
      Handle(TColStd_HArray1OfReal) aCoordsArray = aCI.GetCoordinates();
      int anArrayLength = aCoordsArray->Length();
      for (int i = 0, j = 1; i <= (anArrayLength-3); i += 3) {
	gp_Pnt aPnt = gp_Pnt(aCoordsArray->Value(i+1), aCoordsArray->Value(i+2), aCoordsArray->Value(i+3));
	points.SetValue(j,aPnt);
	j++;
      } 
    }

    
    int ind, aLen = aCI.GetLength();
    if (aLen < 2) return 0;
    Standard_Boolean isSeveral = Standard_False;
    gp_Pnt aPrevP;
    int aRealLen = aLen;
    if (aType == SPLINE_BEZIER && aCI.GetIsClosed()) {
      TopoDS_Vertex aV1;
      if(useCoords) {
	aV1 = BRepBuilderAPI_MakeVertex(points.Value(1));
      } else {
	Handle(GEOM_Function) aFPoint = aCI.GetPoint(1);
	TopoDS_Shape aFirstPnt = aFPoint->GetValue();
	aV1 = TopoDS::Vertex(aFirstPnt);
      }

      TopoDS_Vertex aV2;
      if(useCoords) { 
	aV2 = BRepBuilderAPI_MakeVertex(points.Value(aLen));
      } else {
	Handle(GEOM_Function) aLPoint = aCI.GetPoint(aLen);
	TopoDS_Shape aLastPnt = aLPoint->GetValue();
	aV2 = TopoDS::Vertex(aLastPnt);
      }
      
      if (!aV1.IsNull() && !aV2.IsNull() && !aV1.IsSame(aV2)) {
        aRealLen++;
      }
    }
    
    TColgp_Array1OfPnt CurvePoints (1, aRealLen);
    for (ind = 1; ind <= aLen; ind++) {
      gp_Pnt aP;
      if( useCoords ) { 
	aP = points.Value(ind);
        if (!isSeveral && ind > 1) {
          if (aP.Distance(aPrevP) > Precision::Confusion()) {
            isSeveral = Standard_True;
          }
        }
        CurvePoints.SetValue(ind, aP);
        aPrevP = aP;
      } else {      
      Handle(GEOM_Function) aRefPoint = aCI.GetPoint(ind);
      TopoDS_Shape aShapePnt = aRefPoint->GetValue();
      if (aShapePnt.ShapeType() == TopAbs_VERTEX) {
	  aP = BRep_Tool::Pnt(TopoDS::Vertex(aShapePnt));
        if (!isSeveral && ind > 1) {
          if (aP.Distance(aPrevP) > Precision::Confusion()) {
            isSeveral = Standard_True;
          }
        }
 	CurvePoints.SetValue(ind, aP);
        aPrevP = aP;
      }
    }
    }
    if (aType == SPLINE_BEZIER) {
      if (!isSeveral) {
        Standard_ConstructionError::Raise("Points for Bezier Curve are too close");
      }
      if (aRealLen > aLen) { // set last point equal to first for the closed curve
        CurvePoints.SetValue(aRealLen, CurvePoints.Value(1));
      }
      Handle(Geom_BezierCurve) GBC = new Geom_BezierCurve(CurvePoints);
      aShape = BRepBuilderAPI_MakeEdge(GBC).Edge();
    } else {
//      GeomAPI_PointsToBSpline GBC (CurvePoints);
//      aShape = BRepBuilderAPI_MakeEdge(GBC).Edge();
      
      Handle(TColgp_HArray1OfPnt) aHCurvePoints = new TColgp_HArray1OfPnt(1, aLen);

      if (aCI.GetDoReordering()) {
        for (int curInd = 1; curInd < aLen - 1; curInd++) {
          gp_Pnt curPnt = CurvePoints.Value(curInd);
          int nearInd = 0;
          double nearDist = RealLast();
          for (ind = curInd + 1; ind <= aLen; ind++) {
            double dist = curPnt.SquareDistance(CurvePoints.Value(ind));
            if (dist < nearDist && (nearDist - dist) > Precision::Confusion()) {
              nearInd = ind;
              nearDist = dist;
            }
          }
          if (nearInd > 0 && nearInd != curInd + 1) {
            // Keep given order of points to use it in case of equidistant candidates
            //               .-<---<-.
            //              /         \
            // o  o  o  c  o->o->o->o->n  o  o
            //          |  |           |
            //     curInd  curInd+1    nearInd
            gp_Pnt nearPnt = CurvePoints.Value(nearInd);
            for (ind = nearInd; ind > curInd + 1; ind--) {
              CurvePoints.SetValue(ind, CurvePoints.Value(ind - 1));
            }
            CurvePoints.SetValue(curInd + 1, nearPnt);
          }
        }
        for (ind = 1; ind <= aLen; ind++) {
          aHCurvePoints->SetValue(ind, CurvePoints.Value(ind));
        }
      }
      else {
      for (ind = 1; ind <= aLen; ind++) {
 	aHCurvePoints->SetValue(ind, CurvePoints.Value(ind));
      }
      }
      
      bool isClosed = aCI.GetIsClosed();
      GeomAPI_Interpolate GBC (aHCurvePoints, isClosed, gp::Resolution());
      GBC.Perform();
      if (GBC.IsDone())
        aShape = BRepBuilderAPI_MakeEdge(GBC.Curve()).Edge();
      else
        return 0;
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
//function :  GEOMImpl_SplineDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_SplineDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_SplineDriver",
			                                 sizeof(GEOMImpl_SplineDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_SplineDriver) Handle(GEOMImpl_SplineDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_SplineDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_SplineDriver))) {
       _anOtherObject = Handle(GEOMImpl_SplineDriver)((Handle(GEOMImpl_SplineDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
