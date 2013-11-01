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
#include "Sketcher_CommandPoint.hxx"
//------------------------------------------------------------------------------
#include <Geom2d_CartesianPoint.hxx>
//------------------------------------------------------------------------------
Sketcher_CommandPoint::Sketcher_CommandPoint()
{
  myPointAction = Nothing;
}
//------------------------------------------------------------------------------
Sketcher_CommandPoint::~Sketcher_CommandPoint()
{
}
//------------------------------------------------------------------------------
void Sketcher_CommandPoint::Action()
{
  myPointAction = Input_Point;
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher_CommandPoint::MouseInputEvent(const gp_Pnt2d& thePnt2d)
{
  curPnt2d = myAnalyserSnap->MouseInput(thePnt2d);

  switch (myPointAction) {
    case Nothing:
      break;
    case Input_Point:
      AddObject(new Geom2d_CartesianPoint(curPnt2d), PointSketcherObject);
      break;
    default:
      break;
  }

  return Standard_False;
}
//------------------------------------------------------------------------------
void Sketcher_CommandPoint::MouseMoveEvent(const gp_Pnt2d& thePnt2d)
{
  curPnt2d = myAnalyserSnap->MouseMove(thePnt2d);
}
//------------------------------------------------------------------------------
void Sketcher_CommandPoint::CancelEvent()
{
  myPointAction = Nothing;
}
//------------------------------------------------------------------------------
Sketcher_ObjectTypeOfMethod Sketcher_CommandPoint::GetTypeOfMethod()
{
  return Point_Method;
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_CommandPoint,Sketcher_Command)
IMPLEMENT_STANDARD_RTTI(Sketcher_CommandPoint)
IMPLEMENT_STANDARD_TYPE(Sketcher_CommandPoint)
IMPLEMENT_STANDARD_SUPERTYPE(Sketcher_Command)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Sketcher_Command)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_CommandPoint)
//------------------------------------------------------------------------------
