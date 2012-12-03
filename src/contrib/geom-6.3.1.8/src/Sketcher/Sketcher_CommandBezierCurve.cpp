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
// Original work from OpenCascade Sketcher 
// (http://sourceforge.net/projects/occsketcher/)
//
// Modifications for GEOM and OCAF
// Authored by : Sioutis Fotios (sfotis@gmail.com)

//------------------------------------------------------------------------------
#include "Sketcher_CommandBezierCurve.hxx"
//------------------------------------------------------------------------------
#include <TColgp_Array1OfPnt2d.hxx>
#include <TColgp_Array1OfPnt.hxx>
#include <Geom2d_BezierCurve.hxx>
#include <Geom_CartesianPoint.hxx>
#include <Geom_BezierCurve.hxx>
#include <ElCLib.hxx>
#include <BRepBuilderAPI_MakeEdge.hxx>
#include <AIS_Shape.hxx>
#include <AIS_InteractiveContext.hxx>
//------------------------------------------------------------------------------
Sketcher_CommandBezierCurve::Sketcher_CommandBezierCurve()
    :   tempPnt2d(gp::Origin2d()),
    myFirstgp_Pnt(gp::Origin()),
    tempPnt(gp::Origin()),
    curEdge()
{
  myBezierCurveAction = Nothing;
  TColgp_Array1OfPnt2d curgp_Array1CurvePoles2d(1,2);
  curgp_Array1CurvePoles2d.SetValue(1, myFirstgp_Pnt2d);
  curgp_Array1CurvePoles2d.SetValue(2, tempPnt2d);
  myGeom2d_BezierCurve = new Geom2d_BezierCurve(curgp_Array1CurvePoles2d);
  TColgp_Array1OfPnt curgp_Array1CurvePoles(1,2);
  curgp_Array1CurvePoles.SetValue(1, myFirstgp_Pnt);
  curgp_Array1CurvePoles.SetValue(2, tempPnt);
  myGeom_BezierCurve = new Geom_BezierCurve(curgp_Array1CurvePoles);
  myRubberAIS_Shape = new AIS_Shape(curEdge);
}
//------------------------------------------------------------------------------
Sketcher_CommandBezierCurve::~Sketcher_CommandBezierCurve()
{
}
//------------------------------------------------------------------------------
void Sketcher_CommandBezierCurve::Action()
{
  myBezierCurveAction = Input_1Point;
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher_CommandBezierCurve::MouseInputEvent(const gp_Pnt2d& thePnt2d)
{
  curPnt2d = myAnalyserSnap->MouseInput(thePnt2d);

  switch (myBezierCurveAction) {
    case Nothing:
      break;
    case Input_1Point: {
        myFirstgp_Pnt2d = curPnt2d;
        myFirstgp_Pnt = ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d);
        myRubberLineFirstPoint->SetPnt(myFirstgp_Pnt);
        myBezierCurveAction = Input_2Point;
        IndexCounter = 2;
      }
      break;
    case Input_2Point: {
        myGeom2d_BezierCurve->SetPole(1,myFirstgp_Pnt2d);
        myGeom2d_BezierCurve->SetPole(IndexCounter,curPnt2d);
        tempPnt = ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d);
        myGeom_BezierCurve->SetPole(1,myFirstgp_Pnt);
        myGeom_BezierCurve->SetPole(IndexCounter,tempPnt);
        BRepBuilderAPI_MakeEdge ME(myGeom_BezierCurve,myFirstgp_Pnt,tempPnt);

        if (ME.IsDone()) {
          curEdge = ME.Edge();
          RemoveRubberLine();
          myGeom2d_BezierCurve->InsertPoleAfter(IndexCounter,curPnt2d);
          myGeom_BezierCurve->InsertPoleAfter(IndexCounter,tempPnt);
          IndexCounter++;
          myBezierCurveAction = Input_OtherPoints;
        }
      }
      break;
    case Input_OtherPoints: {
        myGeom2d_BezierCurve->SetPole(IndexCounter,curPnt2d);
        tempPnt = ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d);
        myGeom_BezierCurve->SetPole(IndexCounter,tempPnt);
        BRepBuilderAPI_MakeEdge ME(myGeom_BezierCurve,myFirstgp_Pnt,tempPnt);

        if (ME.IsDone()) {
          curEdge = ME.Edge();

          if (IndexCounter > MAXIMUMPOLES)
            closeBezierCurve();
          else {
            myGeom2d_BezierCurve->InsertPoleAfter(IndexCounter,curPnt2d);
            myGeom_BezierCurve->InsertPoleAfter(IndexCounter,tempPnt);
            tempPnt2d = curPnt2d;
            IndexCounter++;
          }
        }
      }
      break;
    default:
      break;
  }

  return Standard_False;
}
//------------------------------------------------------------------------------
void Sketcher_CommandBezierCurve::MouseMoveEvent(const gp_Pnt2d& thePnt2d)
{
  curPnt2d = myAnalyserSnap->MouseMove(thePnt2d);

  switch (myBezierCurveAction) {
    case Nothing:
      break;
    case Input_1Point:
      break;
    case Input_2Point:
      myRubberLineSecondPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d));
      DisplayRubberLine();
      break;
    case Input_OtherPoints:
      myGeom2d_BezierCurve->SetPole(IndexCounter,curPnt2d);
      myRubberLineSecondPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d));

      if (myGeom_BezierCurve->Pole(1).Distance(myRubberLineSecondPoint->Pnt()) > Precision::Confusion()) {
        myGeom_BezierCurve->SetPole(IndexCounter,myRubberLineSecondPoint->Pnt());
        BRepBuilderAPI_MakeEdge ME(myGeom_BezierCurve,myFirstgp_Pnt,myRubberLineSecondPoint->Pnt());

        if (ME.IsDone()) {
          curEdge = ME.Edge();
          myRubberAIS_Shape->Set(curEdge);

          if (myContext->IsDisplayed(myRubberAIS_Shape))
            myContext->Redisplay(myRubberAIS_Shape);
          else
            myContext->Display(myRubberAIS_Shape);
        }
      }

      break;
    default:
      break;
  }
}
//------------------------------------------------------------------------------
void Sketcher_CommandBezierCurve::CancelEvent()
{
  switch (myBezierCurveAction) {
    case Nothing:
      break;
    case Input_1Point:
      myBezierCurveAction = Nothing;
      break;
    case Input_2Point:
      RemoveRubberLine();
      myBezierCurveAction = Nothing;
      break;
    case Input_OtherPoints: {
        myGeom2d_BezierCurve->RemovePole(IndexCounter);
        myGeom_BezierCurve->RemovePole(IndexCounter);
        BRepBuilderAPI_MakeEdge ME(myGeom_BezierCurve,myFirstgp_Pnt,tempPnt);

        if (ME.IsDone()) {
          curEdge = ME.Edge();
          IndexCounter--;
          closeBezierCurve();
          myBezierCurveAction = Nothing;
        }
      }
      break;
    default:
      myBezierCurveAction = Nothing;
      break;
  }
}
//------------------------------------------------------------------------------
Sketcher_ObjectTypeOfMethod Sketcher_CommandBezierCurve::GetTypeOfMethod()
{
  return BezierCurve_Method;
}
//------------------------------------------------------------------------------
void Sketcher_CommandBezierCurve::closeBezierCurve()
{
  myContext->Remove(myRubberAIS_Shape);
  TColgp_Array1OfPnt thePointArray(1, myGeom_BezierCurve->NbPoles());
  myGeom_BezierCurve->Poles(thePointArray);
  AddObject(myGeom2d_BezierCurve, CurveSketcherObject);

  for (Standard_Integer i = IndexCounter; i>2; i--) {
    myGeom2d_BezierCurve->RemovePole(i);
    myGeom_BezierCurve->RemovePole(i);
  }

  myBezierCurveAction = Input_1Point;
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_CommandBezierCurve,Sketcher_Command)
IMPLEMENT_STANDARD_RTTI(Sketcher_CommandBezierCurve)
IMPLEMENT_STANDARD_TYPE(Sketcher_CommandBezierCurve)
IMPLEMENT_STANDARD_SUPERTYPE(Sketcher_Command)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Sketcher_Command)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_CommandBezierCurve)
//------------------------------------------------------------------------------

