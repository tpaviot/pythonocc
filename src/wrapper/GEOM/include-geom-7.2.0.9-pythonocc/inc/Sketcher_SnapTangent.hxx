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
#ifndef Sketcher_SnapTangent_H
#define Sketcher_SnapTangent_H
//------------------------------------------------------------------------------
#include "Sketcher_Snap.hxx"
#include "Sketcher_Arc.hxx"
//------------------------------------------------------------------------------
#include <gp_Lin2d.hxx>
#include <Geom2dAPI_InterCurveCurve.hxx>
#include <Handle_Geom2d_Line.hxx>
#include <Handle_AIS_TangentRelation.hxx>
//------------------------------------------------------------------------------
DEFINE_STANDARD_HANDLE(Sketcher_SnapTangent,Sketcher_Snap)
//------------------------------------------------------------------------------
class Sketcher_SnapTangent : public Sketcher_Snap
{
  public:
    DEFINE_STANDARD_RTTI(Sketcher_SnapTangent)

    Standard_EXPORT Sketcher_SnapTangent();
    Standard_EXPORT ~Sketcher_SnapTangent();

    Standard_EXPORT gp_Pnt2d MouseInputEvent(const gp_Pnt2d& tempPnt2d);
    Standard_EXPORT void EraseSnap();
    Standard_EXPORT void SelectEvent();
    Standard_EXPORT Sketcher_SnapType GetSnapType();
    Standard_EXPORT void DrawRelation();
    Standard_EXPORT void EraseRelation();
    Standard_EXPORT void setFirstPnt(const gp_Pnt2d& p,TangentType ttype);

  private:
    Standard_EXPORT void SelectLine_FirstPntEvent();
    Standard_EXPORT void SelectLine_CheckFirstPntEvent();
    Standard_EXPORT void SelectLine_FixEvent();
    Standard_EXPORT void SelectLine_SecondPntEvent();
    Standard_EXPORT void SelectCurveCenterEvent();

    TangentType                 myTangentType;
    Standard_Real               radiusDistance;

    gp_Pnt2d                    myFirstPnt2d;

    //for tangent line first pnt
    Standard_Boolean            FixFirstPnt;
    Standard_Real               minAngle;
    Standard_Real               curAngle;
    gp_Lin2d                    mylin2d;
    gp_Dir2d                    tempDir2d;

    Handle(Sketcher_Arc)          curSketcher_Arc;
    Handle(Geom2d_Circle)       curGeom2d_Circle;

    Handle(Geom2d_Line)         tempGeom2d_Line;
    Handle(Geom2d_Circle)       tempGeom2d_Circle;
    Handle(Geom2d_Curve)        tempGeom2d_Curve;

    Geom2dAPI_InterCurveCurve   my2dAPI_InterCurveCurve;
    Handle(AIS_TangentRelation) myTanRelation;
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------
