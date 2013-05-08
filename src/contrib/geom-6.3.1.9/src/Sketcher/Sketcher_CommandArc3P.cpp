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
#include "Sketcher_CommandArc3P.hxx"
//------------------------------------------------------------------------------
#include <Geom2d_CartesianPoint.hxx>
#include <Geom2d_Circle.hxx>
#include <Sketcher_Arc.hxx>
#include <Geom2dGcc_Circ2d3Tan.hxx>
#include <Geom2dGcc_QualifiedCurve.hxx>
#include <gce_MakeCirc.hxx>
#include <Geom_CartesianPoint.hxx>
#include <Geom_Circle.hxx>
#include <ElCLib.hxx>
//------------------------------------------------------------------------------
Sketcher_CommandArc3P::Sketcher_CommandArc3P()
    : temp2dAdaptor_Curve(),
    temp2d_Circ()
{
  myArc3PAction         = Nothing;
  mySecondgp_Pnt2d      = gp::Origin2d();
  third_Pnt             = gp::Origin();
  midpoint2d            = gp::Origin2d();
  tempu1_pnt2d          = gp::Origin2d();
  tempu2_pnt2d          = gp::Origin2d();
  tempGeom2d_Circle     = new Geom2d_Circle(temp2d_Circ);
  FirstGeom2d_Point     = new Geom2d_CartesianPoint(tempu1_pnt2d);
  TempGeom2d_Point      = new Geom2d_CartesianPoint(tempu2_pnt2d);
  u1=u2=0;
  temp_u1=temp_u2=0;
  dist1 = dist2 = 0;
}
//------------------------------------------------------------------------------
Sketcher_CommandArc3P::~Sketcher_CommandArc3P()
{
}
//------------------------------------------------------------------------------
void Sketcher_CommandArc3P::Action()
{
  myArc3PAction = Input_1ArcPoint;
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher_CommandArc3P::MouseInputEvent(const gp_Pnt2d& thePnt2d)
{
  curPnt2d = myAnalyserSnap->MouseInput(thePnt2d);

  switch (myArc3PAction) {
    case Nothing:
      break;
    case Input_1ArcPoint:
      myFirstgp_Pnt2d = curPnt2d;
      myRubberLineFirstPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d));
      myArc3PAction = Input_2ArcPoint;
      break;
    case Input_2ArcPoint:
      mySecondgp_Pnt2d = curPnt2d;
      myRubberLineSecondPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d));
      RemoveRubberLine();
      myArc3PAction = Input_3ArcPoint;
      break;
    case Input_3ArcPoint: {
        Handle(Geom2d_CartesianPoint) Geom2d_Point1 = new Geom2d_CartesianPoint(myFirstgp_Pnt2d);
        Handle(Geom2d_CartesianPoint) Geom2d_Point2 = new Geom2d_CartesianPoint(mySecondgp_Pnt2d);
        Handle(Geom2d_CartesianPoint) Geom2d_Point3 = new Geom2d_CartesianPoint(curPnt2d);
        Geom2dGcc_Circ2d3Tan tempGcc_Circ2d3Tan(Geom2d_Point1,Geom2d_Point2,Geom2d_Point3,1.0e-10);

        if (tempGcc_Circ2d3Tan.IsDone() && tempGcc_Circ2d3Tan.NbSolutions()>0) {
          Handle(Sketcher_Arc) mySketcher_Arc = new Sketcher_Arc(tempGcc_Circ2d3Tan.ThisSolution(1));
          mySketcher_Arc->SetParam(myFirstgp_Pnt2d,mySecondgp_Pnt2d,curPnt2d);
          AddObject(mySketcher_Arc, ArcSketcherObject);
          RemoveRubberCircle();

          if (!myPolylineMode)
            myArc3PAction = Input_1ArcPoint;
          else {
            midpoint2d = mySketcher_Arc->MiddlePnt();
            tempGeom2d_Circle->SetCirc2d(mySketcher_Arc->Circ2d());
            temp2dAdaptor_Curve.Load(tempGeom2d_Circle);
            myFirstgp_Pnt2d = curPnt2d;
            FirstGeom2d_Point->SetPnt2d(myFirstgp_Pnt2d);
            myRubberLineFirstPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d));
            myArc3PAction = Input_PolylineArc;
          }
        }
      }
      break;
    case Input_PolylineArc: {
        TempGeom2d_Point->SetPnt2d(curPnt2d);
        Geom2dGcc_QualifiedCurve temp2d_QualifiedCurve(temp2dAdaptor_Curve, GccEnt_unqualified);
        Geom2dGcc_Circ2d3Tan tempGcc_Circ2d3Tan(temp2d_QualifiedCurve,FirstGeom2d_Point,TempGeom2d_Point,1.0e-6,0);

        if (tempGcc_Circ2d3Tan.IsDone() && tempGcc_Circ2d3Tan.NbSolutions()>0) {
          temp2d_Circ = tempGcc_Circ2d3Tan.ThisSolution(1);
          u1 = ElCLib::Parameter(temp2d_Circ,myFirstgp_Pnt2d);
          u2 = ElCLib::Parameter(temp2d_Circ,curPnt2d);
          temp_u1 = u1 + (u2 - u1) / 100;
          temp_u2 = u1 - (u2 - u1) / 100;
          tempu1_pnt2d = ElCLib::Value(temp_u1, temp2d_Circ);
          tempu2_pnt2d = ElCLib::Value(temp_u2, temp2d_Circ);
          dist1 = tempu1_pnt2d.Distance(midpoint2d);
          dist2 = tempu2_pnt2d.Distance(midpoint2d);

          if (dist1 < dist2) tempu1_pnt2d = tempu2_pnt2d;

          Handle(Sketcher_Arc) mySketcher_Arc = new Sketcher_Arc(temp2d_Circ);
          mySketcher_Arc->SetParam(myFirstgp_Pnt2d,tempu1_pnt2d,curPnt2d);
          AddObject(mySketcher_Arc, ArcSketcherObject);
          RemoveRubberCircle();
          midpoint2d = mySketcher_Arc->MiddlePnt();
          tempGeom2d_Circle->SetCirc2d(mySketcher_Arc->Circ2d());
          temp2dAdaptor_Curve.Load(tempGeom2d_Circle);
          myFirstgp_Pnt2d = curPnt2d;
          FirstGeom2d_Point->SetPnt2d(myFirstgp_Pnt2d);
          myRubberLineFirstPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d));
        }
      }
    default:
      break;
  }

  return Standard_False;
}
//------------------------------------------------------------------------------
void Sketcher_CommandArc3P::MouseMoveEvent(const gp_Pnt2d& thePnt2d)
{
  curPnt2d = myAnalyserSnap->MouseMove(thePnt2d);

  switch (myArc3PAction) {
    case Nothing:
      break;
    case Input_1ArcPoint:
      curPnt2d = myAnalyserSnap->MouseMove(thePnt2d);
      break;
    case Input_2ArcPoint:
      myRubberLineSecondPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d));
      DisplayRubberLine();
      break;
    case Input_3ArcPoint: {
        third_Pnt =  ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d);

        if (third_Pnt.Distance(myRubberLineSecondPoint->Pnt()) > Precision::Confusion()) {
          gce_MakeCirc tempMakeCirc = gce_MakeCirc(myRubberLineFirstPoint->Pnt(),myRubberLineSecondPoint->Pnt(),third_Pnt);

          if (tempMakeCirc.Status() == gce_Done) {
            myRubberCircleGeometry->SetCirc(tempMakeCirc.Value());
            myRubberCircleParamU = ElCLib::Parameter(myRubberCircleGeometry->Circ(),myRubberLineFirstPoint->Pnt());
            myRubberCircleParamV = ElCLib::Parameter(myRubberCircleGeometry->Circ(),third_Pnt);
            DisplayRubberCircle();
          }
        }
      }
      break;
    case Input_PolylineArc: {
        third_Pnt =  ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d);
        TempGeom2d_Point->SetPnt2d(curPnt2d);

        if (FirstGeom2d_Point->Distance(TempGeom2d_Point) > Precision::Confusion()) {
          Geom2dGcc_QualifiedCurve   temp2d_QualifiedCurve(temp2dAdaptor_Curve, GccEnt_unqualified);
          Geom2dGcc_Circ2d3Tan     tempGcc_Circ2d3Tan(temp2d_QualifiedCurve,FirstGeom2d_Point,TempGeom2d_Point, 1.0e-6,0);

          if (tempGcc_Circ2d3Tan.IsDone() && tempGcc_Circ2d3Tan.NbSolutions()>0) {
            temp2d_Circ = tempGcc_Circ2d3Tan.ThisSolution(1);
            u1 = ElCLib::Parameter(temp2d_Circ,myFirstgp_Pnt2d);
            u2 = ElCLib::Parameter(temp2d_Circ,curPnt2d);
            temp_u1 = u1 + (u2 - u1) / 100;
            temp_u2 = u1 - (u2 - u1) / 100;
            tempu1_pnt2d = ElCLib::Value(temp_u1, temp2d_Circ);
            tempu2_pnt2d = ElCLib::Value(temp_u2, temp2d_Circ);
            dist1 = tempu1_pnt2d.Distance(midpoint2d);
            dist2 = tempu2_pnt2d.Distance(midpoint2d);

            if (dist1 < dist2) tempu1_pnt2d = tempu2_pnt2d;

            if (third_Pnt.Distance(ElCLib::To3d(curCoordinateSystem.Ax2(),tempu1_pnt2d)) > Precision::Confusion()) {
              gce_MakeCirc tempMakeCirc(myRubberLineFirstPoint->Pnt(),ElCLib::To3d(curCoordinateSystem.Ax2(),tempu1_pnt2d),third_Pnt);

              if (tempMakeCirc.Status() == gce_Done) {
                myRubberCircleGeometry->SetCirc(tempMakeCirc.Value());
                myRubberCircleParamU = ElCLib::Parameter(myRubberCircleGeometry->Circ(),myRubberLineFirstPoint->Pnt());
                myRubberCircleParamV = ElCLib::Parameter(myRubberCircleGeometry->Circ(),third_Pnt);
                DisplayRubberCircle();
              }
            }
          }
        }

        break;
      }
    default:
      break;
  }
}
//------------------------------------------------------------------------------
void Sketcher_CommandArc3P::CancelEvent()
{
  switch (myArc3PAction) {
    case Nothing:
      break;
    case Input_1ArcPoint:
      break;
    case Input_2ArcPoint:
      RemoveRubberLine();
      break;
    case Input_3ArcPoint:
      RemoveRubberCircle();
      break;
    case Input_PolylineArc:
      RemoveRubberCircle();
      break;
    default:
      break;
  }

  myArc3PAction = Nothing;
}
//------------------------------------------------------------------------------
Sketcher_ObjectTypeOfMethod Sketcher_CommandArc3P::GetTypeOfMethod()
{
  return Arc3P_Method;
}
//------------------------------------------------------------------------------
void Sketcher_CommandArc3P::SetPolylineMode(Standard_Boolean mode)
{
  myPolylineMode = mode;
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_CommandArc3P,Sketcher_Command)
IMPLEMENT_STANDARD_RTTI(Sketcher_CommandArc3P)
IMPLEMENT_STANDARD_TYPE(Sketcher_CommandArc3P)
IMPLEMENT_STANDARD_SUPERTYPE(Sketcher_Command)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Sketcher_Command)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_CommandArc3P)
//------------------------------------------------------------------------------
