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
#include "Sketcher_CommandCircle3P.hxx"
//------------------------------------------------------------------------------
#include <Geom_CartesianPoint.hxx>
#include <ElCLib.hxx>
#include <Geom_Circle.hxx>
#include <gce_MakeCirc2d.hxx>
#include <Geom2d_Circle.hxx>
#include <gce_MakeCirc.hxx>
//------------------------------------------------------------------------------
Sketcher_CommandCircle3P::Sketcher_CommandCircle3P()
    : tempCirc(curCoordinateSystem.Ax2(),SKETCHER_RADIUS)
{
  myCircle3PAction = Nothing;
  mySecondgp_Pnt2d = gp::Origin2d();
  third_Pnt = gp::Origin();
}
//------------------------------------------------------------------------------
Sketcher_CommandCircle3P::~Sketcher_CommandCircle3P()
{
}
//------------------------------------------------------------------------------
void Sketcher_CommandCircle3P::Action()
{
  myCircle3PAction = Input_1CirclePoint;
  tempCirc.SetPosition(curCoordinateSystem.Ax2());
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher_CommandCircle3P::MouseInputEvent(const gp_Pnt2d& thePnt2d)
{
  curPnt2d = myAnalyserSnap->MouseInput(thePnt2d);

  switch (myCircle3PAction) {
    case Nothing:
      break;
    case Input_1CirclePoint:
      myFirstgp_Pnt2d = curPnt2d;
      myRubberLineFirstPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d));
      myCircle3PAction = Input_2CirclePoint;
      break;
    case Input_2CirclePoint:
      mySecondgp_Pnt2d = curPnt2d;
      myRubberLineSecondPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d));
      RemoveRubberLine();
      myCircle3PAction = Input_3CirclePoint;
      break;
    case Input_3CirclePoint: {
        gce_MakeCirc2d tempMakeCirc2d(myFirstgp_Pnt2d,mySecondgp_Pnt2d,curPnt2d);

        if (tempMakeCirc2d.Status() == gce_Done) {
          Handle(Geom2d_Circle) myGeom2d_Circle = new Geom2d_Circle(tempMakeCirc2d.Value());
          AddObject(myGeom2d_Circle,CircleSketcherObject);
          RemoveRubberCircle();
          myCircle3PAction = Input_1CirclePoint;
        }
      }
      break;
    default:
      break;
  }

  return Standard_False;
}
//------------------------------------------------------------------------------
void Sketcher_CommandCircle3P::MouseMoveEvent(const gp_Pnt2d& thePnt2d)
{
  curPnt2d = myAnalyserSnap->MouseMove(thePnt2d);

  switch (myCircle3PAction) {
    case Nothing:
      break;
    case Input_1CirclePoint:
      break;
    case Input_2CirclePoint:
      myRubberLineSecondPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d));
      DisplayRubberLine();
      break;
    case Input_3CirclePoint:
      third_Pnt =  ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d);

      if (third_Pnt.Distance(myRubberLineSecondPoint->Pnt()) > Precision::Confusion()) {
        gce_MakeCirc tempMakeCirc = gce_MakeCirc(myRubberLineFirstPoint->Pnt(),myRubberLineSecondPoint->Pnt(),third_Pnt);

        if (tempMakeCirc.Status() == gce_Done) {
          myRubberCircleGeometry->SetCirc(tempMakeCirc.Value());
          DisplayRubberCircle();
        }
      }

      break;
    default:
      break;
  }
}
//------------------------------------------------------------------------------
void Sketcher_CommandCircle3P::CancelEvent()
{
  switch (myCircle3PAction) {
    case Nothing:
      break;
    case Input_1CirclePoint:
      break;
    case Input_2CirclePoint:
      RemoveRubberLine();
      break;
    case Input_3CirclePoint:
      RemoveRubberCircle();
      break;
    default:
      break;
  }

  myCircle3PAction = Nothing;
}
//------------------------------------------------------------------------------
Sketcher_ObjectTypeOfMethod Sketcher_CommandCircle3P::GetTypeOfMethod()
{
  return Circle3P_Method;
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_CommandCircle3P,Sketcher_Command)
IMPLEMENT_STANDARD_RTTI(Sketcher_CommandCircle3P)
IMPLEMENT_STANDARD_TYPE(Sketcher_CommandCircle3P)
IMPLEMENT_STANDARD_SUPERTYPE(Sketcher_Command)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Sketcher_Command)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_CommandCircle3P)
//------------------------------------------------------------------------------
