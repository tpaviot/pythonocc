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
#ifndef Sketcher_CommandCircle3Tan_H
#define Sketcher_CommandCircle3Tan_H
//------------------------------------------------------------------------------
#include "Sketcher_Command.hxx"
//------------------------------------------------------------------------------
#include <gp_Circ2d.hxx>
#include <gp_Circ.hxx>
#include <gp_Lin2d.hxx>
#include <Handle_Geom2d_Circle.hxx>
//------------------------------------------------------------------------------
#define  MINIMUMDISTANCETOCURVE 100
//------------------------------------------------------------------------------
DEFINE_STANDARD_HANDLE(Sketcher_CommandCircle3Tan,Sketcher_Command)
//------------------------------------------------------------------------------
class Sketcher_CommandCircle3Tan : public Sketcher_Command
{
  public:
    DEFINE_STANDARD_RTTI(Sketcher_CommandCircle3Tan)

    enum  Circle3TanAction { Nothing,Input_1CircleTan,Input_2CircleTan,Input_3CircleTan };

    Standard_EXPORT Sketcher_CommandCircle3Tan();
    Standard_EXPORT ~Sketcher_CommandCircle3Tan();
    Standard_EXPORT void Action();
    Standard_EXPORT Standard_Boolean MouseInputEvent(const gp_Pnt2d& thePnt2d);
    Standard_EXPORT void MouseMoveEvent(const gp_Pnt2d& thePnt2d);
    Standard_EXPORT void CancelEvent();
    Standard_EXPORT Sketcher_ObjectTypeOfMethod GetTypeOfMethod();

  private:
    Standard_EXPORT void SelectCurve();
    Standard_EXPORT Standard_Boolean SumDistanceToCircle();
    Standard_EXPORT Standard_Boolean CheckgpObject();
    Standard_EXPORT Standard_Boolean StoregpObject();

    Circle3TanAction                myCircle3TanAction;
    Handle(Sketcher_Object)         mySObject;
    Standard_Real                   minDistance;
    Standard_Real                   curDistance;
    Standard_Real                   u1,u2,u_temp;
    gp_Pnt2d                        tempPnt2d;
    gp_Pnt2d                        mySecondgp_Pnt2d;
    gp_Circ2d                       temp_Circ2d;
    gp_Circ                         best_Circ;
    Handle(Geom2d_Circle)           tempGeom2d_Circle;
    Handle(Geom2d_Curve)            tempGeom2d_Curve;
    Handle(Geom2d_Curve)            myFirst2d_Curve;
    Handle(Geom2d_Curve)            mySecond2d_Curve;
    Standard_Boolean                gp_lin1Exist,gp_lin2Exist;
    Standard_Boolean                gp_circ1Exist,gp_circ2Exist;
    gp_Lin2d                        gp_lin1,gp_lin2;
    gp_Circ2d                       gp_circ1,gp_circ2;
    Geom2dAPI_ProjectPointOnCurve   myProjectOnCurve;
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------
