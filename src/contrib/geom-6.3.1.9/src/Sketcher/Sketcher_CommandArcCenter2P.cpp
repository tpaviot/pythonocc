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
#include "Sketcher_CommandArcCenter2P.hxx"
//------------------------------------------------------------------------------
#include <Geom2d_CartesianPoint.hxx>
#include <Geom_CartesianPoint.hxx>
#include <Geom_Circle.hxx>
#include <GeomAPI.hxx>
#include <gp_Pln.hxx>
#include <Geom2dGcc_Circ2d3Tan.hxx>
#include <Sketcher_Arc.hxx>
#include <gce_MakeCirc.hxx>
#include <ElCLib.hxx>
//------------------------------------------------------------------------------
Sketcher_CommandArcCenter2P::Sketcher_CommandArcCenter2P()
    : mySecondgp_Pnt2d(gp::Origin2d())
{
  myArcCenter2PAction = Nothing;
}
//------------------------------------------------------------------------------
Sketcher_CommandArcCenter2P::~Sketcher_CommandArcCenter2P()
{
}
//------------------------------------------------------------------------------
void Sketcher_CommandArcCenter2P::Action()
{
  myArcCenter2PAction = Input_CenterArc;
  myRubberCircleGeometry->SetAxis(curCoordinateSystem.Axis());
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher_CommandArcCenter2P::MouseInputEvent(const gp_Pnt2d& thePnt2d)
{
  switch (myArcCenter2PAction) {
    case Nothing:
      break;
    case Input_CenterArc: {
        myFirstgp_Pnt2d = myAnalyserSnap->MouseInput(thePnt2d);
        myRubberLineFirstPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(),myFirstgp_Pnt2d));
        myRubberCircleGeometry->SetLocation(myRubberLineFirstPoint->Pnt());
        myArcCenter2PAction = Input_1ArcPoint;
        break;
      }
    case Input_1ArcPoint: {
        curPnt2d = myAnalyserSnap->MouseInputException(myFirstgp_Pnt2d,thePnt2d,Circle_CenterPnt,Standard_True);
        mySecondgp_Pnt2d = curPnt2d;
        radius = myFirstgp_Pnt2d.Distance(mySecondgp_Pnt2d);
        myRubberLineSecondPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d));
        myRubberCircleGeometry->SetRadius(radius);
        tempGeom2d_Circle = Handle(Geom2d_Circle)::DownCast(GeomAPI::To2d(myRubberCircleGeometry,gp_Pln(curCoordinateSystem)));
        RemoveRubberLine();
        myArcCenter2PAction = Input_MidPoint;
      }
      break;
    case Input_2ArcPoint:
      curPnt2d = myAnalyserSnap->MouseMove(thePnt2d);

      if (ProjectOnCircle(curPnt2d)) {
        Handle(Geom2d_CartesianPoint) Geom2d_Point1 = new Geom2d_CartesianPoint(mySecondgp_Pnt2d);
        Handle(Geom2d_CartesianPoint) Geom2d_Point2 = new Geom2d_CartesianPoint(myMidgp_Pnt2d);
        Handle(Geom2d_CartesianPoint) Geom2d_Point3 = new Geom2d_CartesianPoint(curPnt2d);
        Geom2dGcc_Circ2d3Tan tempGcc_Circ2d3Tan(Geom2d_Point1,Geom2d_Point2,Geom2d_Point3,1.0e-10);

        if (tempGcc_Circ2d3Tan.IsDone() && tempGcc_Circ2d3Tan.NbSolutions()>0) {
          Handle(Sketcher_Arc) mySketcher_Arc = new Sketcher_Arc(tempGcc_Circ2d3Tan.ThisSolution(1));
          mySketcher_Arc->SetParam(mySecondgp_Pnt2d,myMidgp_Pnt2d,curPnt2d);
          AddObject(mySketcher_Arc,ArcSketcherObject);
          RemoveRubberCircle();
          myArcCenter2PAction = Input_CenterArc;
        }
      }

      break;
    default:
      break;
  }

  return Standard_False;
}
//------------------------------------------------------------------------------
void Sketcher_CommandArcCenter2P::MouseMoveEvent(const gp_Pnt2d& thePnt2d)
{
  curPnt2d = myAnalyserSnap->MouseMove(thePnt2d);

  switch (myArcCenter2PAction) {
    case Nothing:
      break;
    case Input_CenterArc:
      curPnt2d = myAnalyserSnap->MouseMove(thePnt2d);
      break;
    case Input_1ArcPoint:
      curPnt2d = myAnalyserSnap->MouseMoveException(myFirstgp_Pnt2d,thePnt2d,Circle_CenterPnt,Standard_True);
      radius = myFirstgp_Pnt2d.Distance(curPnt2d);
      myRubberLineSecondPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d));
      DisplayRubberLine();
      break;
    case Input_MidPoint:

      if (ProjectOnCircle(thePnt2d)) {
        if (curPnt2d.Distance(myFirstgp_Pnt2d) > Precision::Confusion()) {
          myMidgp_Pnt2d = curPnt2d;
          myRubberLineFirstPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d));

          if (myRubberLineFirstPoint->Distance(myRubberLineSecondPoint) > Precision::Confusion())
            myArcCenter2PAction = Input_2ArcPoint;
        }
      }

      break;
    case Input_2ArcPoint:
      curPnt2d = myAnalyserSnap->MouseMove(thePnt2d);

      if (ProjectOnCircle(curPnt2d)) {
        third_Pnt =  ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d);

        if (third_Pnt.Distance(myRubberLineSecondPoint->Pnt()) > Precision::Confusion()) {
          gce_MakeCirc tempMakeCirc = gce_MakeCirc(myRubberLineSecondPoint->Pnt(),myRubberLineFirstPoint->Pnt(),third_Pnt);

          if (tempMakeCirc.Status() == gce_Done) {
            myRubberCircleGeometry->SetCirc(tempMakeCirc.Value());
            myRubberCircleParamU = ElCLib::Parameter(myRubberCircleGeometry->Circ(),myRubberLineSecondPoint->Pnt());
            myRubberCircleParamV = ElCLib::Parameter(myRubberCircleGeometry->Circ(),third_Pnt);
            DisplayRubberCircle();
          }
        }
      }

      break;
    default:
      break;
  }
}
//------------------------------------------------------------------------------
void Sketcher_CommandArcCenter2P::CancelEvent()
{
  switch (myArcCenter2PAction) {
    case Nothing:
      break;
    case Input_CenterArc:
      break;
    case Input_1ArcPoint:
    case Input_MidPoint:
      RemoveRubberLine();
    case Input_2ArcPoint:
      RemoveRubberCircle();
      break;
    default:
      break;
  }

  myArcCenter2PAction = Nothing;
}
//------------------------------------------------------------------------------
Sketcher_ObjectTypeOfMethod Sketcher_CommandArcCenter2P::GetTypeOfMethod()
{
  return ArcCenter2P_Method;
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher_CommandArcCenter2P::ProjectOnCircle(const gp_Pnt2d& thePnt2d)
{
  ProjectOnCurve.Init(thePnt2d,tempGeom2d_Circle);

  if (ProjectOnCurve.NbPoints() > 0) {
    curPnt2d = ProjectOnCurve.NearestPoint();
    return Standard_True;
  }

  return Standard_False;
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_CommandArcCenter2P,Sketcher_Command)
IMPLEMENT_STANDARD_RTTI(Sketcher_CommandArcCenter2P)
IMPLEMENT_STANDARD_TYPE(Sketcher_CommandArcCenter2P)
IMPLEMENT_STANDARD_SUPERTYPE(Sketcher_Command)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Sketcher_Command)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_CommandArcCenter2P)
//------------------------------------------------------------------------------
