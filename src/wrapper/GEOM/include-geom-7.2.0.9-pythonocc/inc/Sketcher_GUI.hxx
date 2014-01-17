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
#ifndef SKETCHER_GUI_H
#define SKETCHER_GUI_H
//------------------------------------------------------------------------------
#include "Sketcher_Object.hxx"
//------------------------------------------------------------------------------
#include <Handle_AIS_InteractiveContext.hxx>
//------------------------------------------------------------------------------
class gp_Ax3;
//------------------------------------------------------------------------------
class Sketcher_GUI
{
  public:
    Sketcher_GUI();
    ~Sketcher_GUI();

    virtual void SetContext(Handle(AIS_InteractiveContext)& theContext) = 0;
    virtual void SetAx3(const gp_Ax3& theAx3) = 0;
    virtual void SetSketcher_Object(Handle(Sketcher_Object)& CurObject) = 0;
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------
