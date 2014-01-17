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
#ifndef Sketcher_SNAPIntersection_H
#define Sketcher_SNAPIntersection_H
//------------------------------------------------------------------------------
#include "Sketcher_Snap.hxx"
#include "Sketcher_Edge.hxx"
//------------------------------------------------------------------------------
#include <Geom2dAPI_InterCurveCurve.hxx>
//------------------------------------------------------------------------------
DEFINE_STANDARD_HANDLE(Sketcher_SnapIntersection,Sketcher_Snap)
//------------------------------------------------------------------------------
class Sketcher_SnapIntersection : public Sketcher_Snap
{
  public:
    DEFINE_STANDARD_RTTI(Sketcher_SnapIntersection)

    Standard_EXPORT Sketcher_SnapIntersection();
    Standard_EXPORT ~Sketcher_SnapIntersection();

    Standard_EXPORT void SelectEvent();
    Standard_EXPORT Sketcher_SnapType GetSnapType();
    Standard_EXPORT virtual void DrawRelation();

  private:
    Standard_EXPORT void findSecondObject(Standard_Integer start);

    Handle(Sketcher_Object)   secondSObject;
    Handle(Geom2d_Curve)    cur1Geom2d_Curve;
    Handle(Geom2d_Curve)    cur2Geom2d_Curve;
    Handle(Sketcher_Edge)     cur1Sketcher_Edge;
    Handle(Sketcher_Edge)     cur2Sketcher_Edge;
    Handle(Geom2d_Line)     cur1Geom2d_Line;
    Handle(Geom2d_Line)     cur2Geom2d_Line;

    Standard_Real       bpu;
    Geom2dAPI_InterCurveCurve my2dAPI_InterCurveCurve;

    Handle(AIS_InteractiveObject) curHilightedObj2;
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------
