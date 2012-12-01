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
#ifndef Sketcher_Snap_H
#define Sketcher_Snap_H
//------------------------------------------------------------------------------
#include "Sketcher_Object.hxx"
#include "Sketcher_SnapType.hxx"
//------------------------------------------------------------------------------
#include <Handle_AIS_InteractiveContext.hxx>
#include <Handle_AIS_Point.hxx>
#include <Handle_Geom2d_CartesianPoint.hxx>
#include <Handle_Geom_CartesianPoint.hxx>
#include <Handle_Geom_Plane.hxx>
#include <Handle_TColStd_HSequenceOfTransient.hxx>
#include <gp_Ax3.hxx>
#include <Geom2dAPI_ProjectPointOnCurve.hxx>
#include <TopoDS_Edge.hxx>
//------------------------------------------------------------------------------
#define MINIMUMSNAP 25
#define MINANGLE M_PI / 64
//------------------------------------------------------------------------------
DEFINE_STANDARD_HANDLE(Sketcher_Snap,MMgt_TShared)
//------------------------------------------------------------------------------
class Sketcher_Snap : public MMgt_TShared
{
  public:
    DEFINE_STANDARD_RTTI(Sketcher_Snap)

    Standard_EXPORT Sketcher_Snap();
    Standard_EXPORT ~Sketcher_Snap();

    Standard_EXPORT void SetContext(Handle(AIS_InteractiveContext)& theContext);
    Standard_EXPORT void SetData(Handle(TColStd_HSequenceOfTransient)& thedata);
    Standard_EXPORT void SetAx3(const gp_Ax3 &theAx3);
    Standard_EXPORT void SetMinDistance(const Standard_Real& aPrecise);
    Standard_EXPORT virtual gp_Pnt2d MouseInputEvent(const gp_Pnt2d& tempPnt2d);
    Standard_EXPORT gp_Pnt2d MouseMoveEvent(const gp_Pnt2d& tempPnt2d);
    Standard_EXPORT virtual void EraseSnap();
    Standard_EXPORT Standard_Boolean AnalyserEvent(const gp_Pnt2d& tempPnt2d, gp_Pnt2d& newPnt2d,Standard_Real& dist,Standard_Integer& type);
    Standard_EXPORT virtual void SelectEvent() = 0;
    Standard_EXPORT virtual Sketcher_SnapType GetSnapType() = 0;
    Standard_EXPORT virtual void DrawRelation();
    Standard_EXPORT virtual void EraseRelation();
    Standard_EXPORT virtual void setFirstPnt(const gp_Pnt2d& p);
    Standard_EXPORT virtual void setFirstPnt(const gp_Pnt2d& p, Sketcher_TangentType ttype);

  protected:
    Standard_EXPORT Standard_Boolean countProject();
    Standard_EXPORT Standard_Boolean count();

    Handle(TColStd_HSequenceOfTransient)    data;
    Handle(AIS_InteractiveContext)          myContext;
    gp_Ax3                                  curCoordinateSystem;
    Handle(Sketcher_Object)                 mySObject;
    Sketcher_ObjectGeometryType             myGeometryType;

    Standard_Boolean                        firstDisplay;
    Handle(Geom_CartesianPoint)             myGeom_Point;
    Handle(AIS_Point)                       myAIS_Point;
    Handle(AIS_InteractiveObject)           curHilightedObj;

    gp_Pnt2d                                curPnt2d;
    gp_Pnt2d                                objectPnt2d;
    gp_Pnt2d                                bestPnt2d;
    Standard_Boolean                        findbestPnt2d;

    Handle(Geom2d_CartesianPoint)           curGeom2d_Point;
    Standard_Real                           minimumSnapDistance;
    Standard_Real                           minDistance;
    Standard_Real                           curDistance;
    Geom2dAPI_ProjectPointOnCurve           ProjectOnCurve;

    Handle(Geom_Plane)                      myPlane;
    TopoDS_Edge                             FirstEdge;
    TopoDS_Edge                             SecondEdge;
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------
