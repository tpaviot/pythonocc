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
#include "Sketcher_CommandLine2P.hxx"
//------------------------------------------------------------------------------
#include <Geom_CartesianPoint.hxx>
#include <ElCLib.hxx>
#include <Sketcher_Edge.hxx>
//------------------------------------------------------------------------------
Sketcher_CommandLine2P::Sketcher_CommandLine2P()
{
  myLine2PAction = Nothing;
  initialPoint = gp::Origin2d();
}
//------------------------------------------------------------------------------
Sketcher_CommandLine2P::~Sketcher_CommandLine2P()
{
}
//------------------------------------------------------------------------------
void Sketcher_CommandLine2P::Action()
{
  myLine2PAction = Input_FirstPointLine;
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher_CommandLine2P::MouseInputEvent(const gp_Pnt2d& thePnt2d)
{
  switch (myLine2PAction) {
    case Nothing:
      break;
    case Input_FirstPointLine:
      myFirstgp_Pnt2d = myAnalyserSnap->MouseInputException(thePnt2d, thePnt2d, Line_FirstPnt, Standard_True);
      myRubberLineFirstPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(), myFirstgp_Pnt2d));
      initialPoint = myFirstgp_Pnt2d;
      myLine2PAction = Input_SecondPointLine;
      break;
    case Input_SecondPointLine: {
        curPnt2d = myAnalyserSnap->MouseInputException(myFirstgp_Pnt2d, thePnt2d, Line_SecondPnt, Standard_False);
        Handle(Sketcher_Edge) newSketcher_Edge = new Sketcher_Edge();

        if (newSketcher_Edge->SetPoints(myFirstgp_Pnt2d, curPnt2d)) {
          AddObject(newSketcher_Edge, LineSketcherObject);
          RemoveRubberLine();

          if (myPolylineMode) {
            myFirstgp_Pnt2d = curPnt2d;
            myRubberLineFirstPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(), curPnt2d));
          }
          else
            myLine2PAction = Input_FirstPointLine;
        }
      }
      break;
    default:
      break;
  }

  return Standard_False;
}
//------------------------------------------------------------------------------
void Sketcher_CommandLine2P::MouseMoveEvent(const gp_Pnt2d& thePnt2d)
{
  switch (myLine2PAction) {
    case Nothing:
      break;
    case Input_FirstPointLine:
      curPnt2d = myAnalyserSnap->MouseMoveException(thePnt2d, thePnt2d, Line_FirstPnt, Standard_True);
      break;
    case Input_SecondPointLine:
      curPnt2d = myAnalyserSnap->MouseMoveException(myFirstgp_Pnt2d, thePnt2d, Line_SecondPnt, Standard_False);
      myRubberLineSecondPoint->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(), curPnt2d));
      DisplayRubberLine();
      break;
    default:
      break;
  }
}
//------------------------------------------------------------------------------
void Sketcher_CommandLine2P::CancelEvent()
{
  RemoveRubberLine();
  myLine2PAction = Nothing;
}
//------------------------------------------------------------------------------
Sketcher_ObjectTypeOfMethod Sketcher_CommandLine2P::GetTypeOfMethod()
{
  return Line2P_Method;
}
//------------------------------------------------------------------------------
void Sketcher_CommandLine2P::SetPolylineMode(Standard_Boolean mode)
{
  myPolylineMode = mode;
}
//------------------------------------------------------------------------------
void Sketcher_CommandLine2P::ClosePolyline()
{
  if (myPolylineMode) {
    Handle(Sketcher_Edge) newSketcher_Edge = new Sketcher_Edge();
    if (newSketcher_Edge->SetPoints(myFirstgp_Pnt2d, initialPoint)) {
      AddObject(newSketcher_Edge, LineSketcherObject);
      RemoveRubberLine();
      myLine2PAction = Input_FirstPointLine;
    }
  }
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_CommandLine2P,Sketcher_Command)
IMPLEMENT_STANDARD_RTTI(Sketcher_CommandLine2P)
IMPLEMENT_STANDARD_TYPE(Sketcher_CommandLine2P)
IMPLEMENT_STANDARD_SUPERTYPE(Sketcher_Command)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Sketcher_Command)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_CommandLine2P)
//------------------------------------------------------------------------------

