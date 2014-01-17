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
#ifndef SKETCHER_COMMAND_H
#define SKETCHER_COMMAND_H
//------------------------------------------------------------------------------
#include "Sketcher_AnalyserSnap.hxx"
//------------------------------------------------------------------------------
#include <Handle_Geom_Circle.hxx>
#include <Handle_AIS_Line.hxx>
#include <Handle_AIS_Circle.hxx>
//------------------------------------------------------------------------------
#define SKETCHER_RADIUS 0
//------------------------------------------------------------------------------
DEFINE_STANDARD_HANDLE(Sketcher_Command,MMgt_TShared)
//------------------------------------------------------------------------------
class Sketcher_Command : public MMgt_TShared
{
  public:
    DEFINE_STANDARD_RTTI(Sketcher_Command)

    Standard_EXPORT Sketcher_Command();
    Standard_EXPORT ~Sketcher_Command();

    Standard_EXPORT void SetContext(Handle(AIS_InteractiveContext)& theContext);
    Standard_EXPORT void SetData(Handle(TColStd_HSequenceOfTransient)& thedata);
    Standard_EXPORT void SetAx3(const gp_Ax3 & theAx3);
    Standard_EXPORT void SetAnalyserSnap(Handle(Sketcher_AnalyserSnap)& theAnalyserSnap);
    Standard_EXPORT void SetType(const Sketcher_ObjectType theType);
    Standard_EXPORT void AddObject(const Handle(Geom2d_Geometry)& theGeom2d_Geometry, const Sketcher_ObjectGeometryType theGeometryType);
    Standard_EXPORT void SetLabel(const TDF_Label& theLabel);

    Standard_EXPORT void DisplayRubberLine();
    Standard_EXPORT void RemoveRubberLine();
    Standard_EXPORT void DisplayRubberCircle();
    Standard_EXPORT void RemoveRubberCircle();

    Standard_EXPORT virtual void Action() = 0;
    Standard_EXPORT virtual Standard_Boolean MouseInputEvent(const gp_Pnt2d& thePnt2d) = 0;
    Standard_EXPORT virtual void MouseMoveEvent(const gp_Pnt2d& thePnt2d) = 0;
    Standard_EXPORT virtual void CancelEvent() = 0;
    Standard_EXPORT virtual Sketcher_ObjectTypeOfMethod GetTypeOfMethod() = 0;
    Standard_EXPORT virtual void SetPolylineMode(Standard_Boolean mode);
    Standard_EXPORT virtual void ClosePolyline();

  protected:
    TDF_Label                             myLabel;
    Handle(AIS_InteractiveContext)        myContext;
    Handle(TColStd_HSequenceOfTransient)  data;
    Handle(Sketcher_AnalyserSnap)         myAnalyserSnap;

    Sketcher_ObjectType                   myType;

    Standard_Boolean                      myPolylineMode;

    gp_Pnt2d                              curPnt2d;
    gp_Ax3                                curCoordinateSystem;
    gp_Pnt2d                              myFirstgp_Pnt2d;

    bool                                  firstPoint;

    Handle(Geom_CartesianPoint)           myRubberLineFirstPoint;
    Handle(Geom_CartesianPoint)           myRubberLineSecondPoint;
    Handle(AIS_Line)                      myRubberLine;

    Handle(Geom_Circle)                   myRubberCircleGeometry;
    Standard_Real                         myRubberCircleParamU;
    Standard_Real                         myRubberCircleParamV;
    Handle(AIS_Circle)                    myRubberCircle;

    Handle(Geom_CartesianPoint)           myRubberCenterPointPosition;
    Handle(AIS_Point)                     myRubberCenterPoint;
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------
