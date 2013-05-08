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
#ifndef Sketcher_SnapLine_H
#define Sketcher_SnapLine_H
//------------------------------------------------------------------------------
#include "Sketcher_Snap.hxx"
//------------------------------------------------------------------------------
#include <gp_Lin.hxx>
#include <Handle_Geom2d_Line.hxx>
//------------------------------------------------------------------------------
DEFINE_STANDARD_HANDLE(Sketcher_SnapLine,Sketcher_Snap)
//------------------------------------------------------------------------------
class Sketcher_SnapLine : public Sketcher_Snap
{
  public:
    DEFINE_STANDARD_RTTI(Sketcher_SnapLine)

    Standard_EXPORT Sketcher_SnapLine();
    Standard_EXPORT ~Sketcher_SnapLine();

    Standard_EXPORT virtual void SelectEvent() = 0;
    Standard_EXPORT virtual Sketcher_SnapType GetSnapType() = 0;
    Standard_EXPORT virtual void DrawRelation() = 0;
    Standard_EXPORT virtual void EraseRelation() = 0;
    Standard_EXPORT void setFirstPnt(const gp_Pnt2d& p);

  protected:
    Standard_EXPORT void SelectNearest();
    Standard_EXPORT void checkparallel();
    Standard_EXPORT Standard_Boolean ProjectPoint();
    Standard_EXPORT void setEdges();

    Standard_Real       minAngle;
    Standard_Real       curAngle;

    gp_Pnt2d            nearestPnt2d;
    gp_Dir2d            curDir2d;
    gp_Dir2d            tempDir2d;
    Handle(Geom2d_Line) curGeom2d_Line;
    Handle(Geom2d_Line) tempGeom2d_Line;
    gp_Lin              mygp_Lin1,mygp_Lin2;
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------
