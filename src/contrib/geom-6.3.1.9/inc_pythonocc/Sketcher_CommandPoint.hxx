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
#ifndef Sketcher_CommandPOINT_H
#define Sketcher_CommandPOINT_H
//------------------------------------------------------------------------------
#include "Sketcher_Command.hxx"
//------------------------------------------------------------------------------
DEFINE_STANDARD_HANDLE(Sketcher_CommandPoint,Sketcher_Command)
//------------------------------------------------------------------------------
class Sketcher_CommandPoint : public Sketcher_Command
{
  public:
    DEFINE_STANDARD_RTTI(Sketcher_CommandPoint)

    enum  PointAction { Nothing,Input_Point};

    Standard_EXPORT Sketcher_CommandPoint();
    Standard_EXPORT ~Sketcher_CommandPoint();
    
    Standard_EXPORT void Action();
    Standard_EXPORT Standard_Boolean MouseInputEvent(const gp_Pnt2d& thePnt2d);
    Standard_EXPORT void MouseMoveEvent(const gp_Pnt2d& thePnt2d);
    Standard_EXPORT void CancelEvent();
    Standard_EXPORT Sketcher_ObjectTypeOfMethod GetTypeOfMethod();

  private:
    PointAction myPointAction;
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------
