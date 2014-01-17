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
#ifndef Sketcher_CommandBezierCurve_H
#define Sketcher_CommandBezierCurve_H
//------------------------------------------------------------------------------
#include "Sketcher_Command.hxx"
//------------------------------------------------------------------------------
#include <Handle_Geom_BezierCurve.hxx>
#include <Handle_AIS_Shape.hxx>
//------------------------------------------------------------------------------
#define MAXIMUMPOLES 16
//------------------------------------------------------------------------------
class AIS_Line;
//------------------------------------------------------------------------------
DEFINE_STANDARD_HANDLE(Sketcher_CommandBezierCurve,Sketcher_Command)
//------------------------------------------------------------------------------

class Sketcher_CommandBezierCurve : public Sketcher_Command
{
  public:
    DEFINE_STANDARD_RTTI(Sketcher_CommandBezierCurve)
    enum BezierCurveAction { Nothing,Input_1Point,Input_2Point,Input_OtherPoints };
    Standard_EXPORT Sketcher_CommandBezierCurve();
    Standard_EXPORT ~Sketcher_CommandBezierCurve();
    Standard_EXPORT void Action();
    Standard_EXPORT Standard_Boolean MouseInputEvent(const gp_Pnt2d& thePnt2d);
    Standard_EXPORT void MouseMoveEvent(const gp_Pnt2d& thePnt2d);
    Standard_EXPORT void CancelEvent();
    Standard_EXPORT Sketcher_ObjectTypeOfMethod GetTypeOfMethod();

  private:
    Standard_EXPORT void closeBezierCurve();

    BezierCurveAction           myBezierCurveAction;
    Handle(Geom2d_BezierCurve)  myGeom2d_BezierCurve;
    Handle(Geom_BezierCurve)    myGeom_BezierCurve;
    TopoDS_Edge                 curEdge;
    Handle(AIS_Shape)           myRubberAIS_Shape;
    gp_Pnt2d                    tempPnt2d;
    gp_Pnt                      myFirstgp_Pnt;
    gp_Pnt                      tempPnt;
    Standard_Integer            IndexCounter;
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------
