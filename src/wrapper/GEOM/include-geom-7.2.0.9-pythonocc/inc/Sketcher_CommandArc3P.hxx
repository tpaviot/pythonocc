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
#ifndef Sketcher_CommandARC3P_H
#define Sketcher_CommandARC3P_H
//------------------------------------------------------------------------------
#include "Sketcher_Command.hxx"
//------------------------------------------------------------------------------
#include <gp_Circ2d.hxx>
#include <Handle_Geom2d_Circle.hxx>
//------------------------------------------------------------------------------
DEFINE_STANDARD_HANDLE(Sketcher_CommandArc3P,Sketcher_Command)
//------------------------------------------------------------------------------
class Sketcher_CommandArc3P : public Sketcher_Command
{
  public:
    DEFINE_STANDARD_RTTI(Sketcher_CommandArc3P)

    enum Arc3PAction {Nothing, Input_1ArcPoint, Input_2ArcPoint, Input_3ArcPoint, Input_PolylineArc};

    Standard_EXPORT Sketcher_CommandArc3P();
    Standard_EXPORT ~Sketcher_CommandArc3P();
    Standard_EXPORT void Action();
    Standard_EXPORT Standard_Boolean MouseInputEvent(const gp_Pnt2d& thePnt2d);
    Standard_EXPORT void MouseMoveEvent(const gp_Pnt2d& thePnt2d);
    Standard_EXPORT void CancelEvent();
    Standard_EXPORT Sketcher_ObjectTypeOfMethod GetTypeOfMethod();
    Standard_EXPORT void SetPolylineMode(Standard_Boolean mode);

  private:
    Arc3PAction                     myArc3PAction;
    gp_Pnt2d                        mySecondgp_Pnt2d;
    gp_Pnt                          third_Pnt;
    Geom2dAdaptor_Curve             temp2dAdaptor_Curve;
    gp_Circ2d                       temp2d_Circ;
    Handle(Geom2d_Circle)           tempGeom2d_Circle;
    gp_Pnt2d                        midpoint2d,tempu1_pnt2d,tempu2_pnt2d;
    Standard_Real                   u1,u2,temp_u1, temp_u2;
    Standard_Real                   dist1, dist2;
    Handle(Geom2d_CartesianPoint)   FirstGeom2d_Point;
    Handle(Geom2d_CartesianPoint)   TempGeom2d_Point;
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------
