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
#include "Sketcher_CommandCircleCenterRadius.hxx"
//------------------------------------------------------------------------------
#include <Geom_CartesianPoint.hxx>
#include <Geom_Circle.hxx>
#include <Geom2d_Circle.hxx>
#include <ElCLib.hxx>
//------------------------------------------------------------------------------
Sketcher_CommandCircleCenterRadius::Sketcher_CommandCircleCenterRadius()
    : myCircleAx2d(gp::Origin2d(),gp::DX2d())
{
  myCircleCenterRadiusAction = Nothing;
  radius = 0;
}
//------------------------------------------------------------------------------
Sketcher_CommandCircleCenterRadius::~Sketcher_CommandCircleCenterRadius()
{
}
//------------------------------------------------------------------------------
void Sketcher_CommandCircleCenterRadius::Action()
{
  myCircleCenterRadiusAction = Input_CenterPoint;
  myRubberCircleGeometry->SetAxis(curCoordinateSystem.Axis());
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher_CommandCircleCenterRadius::MouseInputEvent(const gp_Pnt2d& thePnt2d)
{
  switch (myCircleCenterRadiusAction) {
    case Nothing:
      break;
    case Input_CenterPoint:
      curPnt2d = myAnalyserSnap->MouseInput(thePnt2d);
      myFirstgp_Pnt2d = curPnt2d;
      myRubberLineFirstPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d));
      myRubberCircleGeometry->SetLocation(myRubberLineFirstPoint->Pnt());
      myCircleAx2d.SetLocation(myFirstgp_Pnt2d);
      myCircleCenterRadiusAction = Input_RadiusPoint;
      break;
    case Input_RadiusPoint: {
        curPnt2d = myAnalyserSnap->MouseInputException(myFirstgp_Pnt2d,thePnt2d,Circle_CenterPnt,Standard_True);
        radius = myFirstgp_Pnt2d.Distance(curPnt2d);
        Handle(Geom2d_Circle)  myGeom2d_Circle = new Geom2d_Circle(myCircleAx2d,radius);
        AddObject(myGeom2d_Circle, CircleSketcherObject);
        RemoveRubberCircle();
        RemoveRubberLine();
        myCircleCenterRadiusAction = Input_CenterPoint;
      }
      break;
    default:
      break;
  }

  return Standard_False;
}
//------------------------------------------------------------------------------
void Sketcher_CommandCircleCenterRadius::MouseMoveEvent(const gp_Pnt2d& thePnt2d)
{
  switch (myCircleCenterRadiusAction) {
    case Nothing:
      break;
    case Input_CenterPoint:
      curPnt2d = myAnalyserSnap->MouseMove(thePnt2d);
      break;
    case Input_RadiusPoint:
      curPnt2d = myAnalyserSnap->MouseMoveException(myFirstgp_Pnt2d,thePnt2d,Circle_CenterPnt,Standard_True);
      radius = myFirstgp_Pnt2d.Distance(curPnt2d);
      myRubberCircleGeometry->SetRadius(radius);
      myRubberLineSecondPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(),curPnt2d));
      DisplayRubberLine();
      DisplayRubberCircle();
      break;
    default:
      break;
  }
}
//------------------------------------------------------------------------------
void Sketcher_CommandCircleCenterRadius::CancelEvent()
{
  switch (myCircleCenterRadiusAction) {
    case Nothing:
      break;
    case Input_CenterPoint:
      break;
    case Input_RadiusPoint:
      RemoveRubberCircle();
      RemoveRubberLine();
      break;
    default:
      break;
  }

  myCircleCenterRadiusAction = Nothing;
}
//------------------------------------------------------------------------------
Sketcher_ObjectTypeOfMethod Sketcher_CommandCircleCenterRadius::GetTypeOfMethod()
{
  return CircleCenterRadius_Method;
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_CommandCircleCenterRadius,Sketcher_Command)
IMPLEMENT_STANDARD_RTTI(Sketcher_CommandCircleCenterRadius)
IMPLEMENT_STANDARD_TYPE(Sketcher_CommandCircleCenterRadius)
IMPLEMENT_STANDARD_SUPERTYPE(Sketcher_Command)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Sketcher_Command)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_CommandCircleCenterRadius)
//------------------------------------------------------------------------------
