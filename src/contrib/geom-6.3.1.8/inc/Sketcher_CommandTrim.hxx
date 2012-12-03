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
#ifndef Sketcher_CommandTrim_H
#define Sketcher_CommandTrim_H
//------------------------------------------------------------------------------
#include "Sketcher_Command.hxx"
#include "Sketcher_Edge.hxx"
#include "Sketcher_Arc.hxx"
//------------------------------------------------------------------------------
#include <TCollection_ExtendedString.hxx>
#include <Geom2dAPI_InterCurveCurve.hxx>
//------------------------------------------------------------------------------
#define  TRIMDISTANCETOCURVE 40
//------------------------------------------------------------------------------
DEFINE_STANDARD_HANDLE(Sketcher_CommandTrim,Sketcher_Command)
//------------------------------------------------------------------------------
class Sketcher_CommandTrim : public Sketcher_Command
{
  public:
    DEFINE_STANDARD_RTTI(Sketcher_CommandTrim)

    enum  TrimAction  { NothingAction,TrimObject};
    enum  RedrawState { NothingRedraw,RedrawTrimmedObject,OneObjectRemove,TwoObjectRemove };

    Standard_EXPORT Sketcher_CommandTrim();
    Standard_EXPORT ~Sketcher_CommandTrim();
    Standard_EXPORT void Action();
    Standard_EXPORT Standard_Boolean MouseInputEvent(const gp_Pnt2d& thePnt2d);
    Standard_EXPORT void MouseMoveEvent(const gp_Pnt2d& thePnt2d);
    Standard_EXPORT void CancelEvent();
    Standard_EXPORT Sketcher_ObjectTypeOfMethod GetTypeOfMethod();

  private:
    Standard_EXPORT void StandardEvent();
    Standard_EXPORT void SelectNearestCurve();
    Standard_EXPORT void FixObjectPoints();
    Standard_EXPORT void TrimCurve();
    Standard_EXPORT Standard_Boolean PointProjected(Standard_Integer index);
    Standard_EXPORT void SetParam();
    Standard_EXPORT void AddParam();
    Standard_EXPORT void FindSegment();
    Standard_EXPORT Standard_Boolean Redraw();
    Standard_EXPORT void RedrawOld();
    Standard_EXPORT void DelTrimmedObject();
    Standard_EXPORT void EditLine(Standard_Real u1,Standard_Real u2);
    Standard_EXPORT void AddNewLine(Standard_Real u1,Standard_Real u2);
    Standard_EXPORT void EditCircle();
    Standard_EXPORT void EditArc(Standard_Real u1,Standard_Real u2);
    Standard_EXPORT void AddNewArc(Standard_Real u1,Standard_Real u2);

    TrimAction                      myTrimAction;

    Handle(Sketcher_Object)         mySObject;
    Sketcher_ObjectGeometryType     TypeofObject;
    TCollection_ExtendedString      TrimName;
    Standard_Integer                curCurveIndex;
    Standard_Integer                NearestCurveIndex;

    Geom2dAPI_ProjectPointOnCurve   myProjectOnCurve;
    Geom2dAPI_InterCurveCurve       my2dAPI_InterCurveCurve;
    Handle(Sketcher_Edge)             curSketcher_Edge;
    Handle(Sketcher_Arc)              curSketcher_Arc;
    Handle(Geom2d_Circle)           curGeom2d_Circle;
    Handle(Geom2d_Curve)            nearestGeom2d_Curve;
    Handle(Geom2d_Line)             temp1Geom2d_Line;
    Handle(Geom2d_Line)             temp2Geom2d_Line;

    Standard_Real                   minDistance;
    Standard_Real                   curDistance;
    Standard_Real                   NearestPntU;
    Standard_Real                   tempU,FirstU,SecondU;

    gp_Pnt2d                        tempPnt2d;
    gp_Pnt2d                        mySecondgp_Pnt2d;
    gp_Circ2d                       nearestgp_Circ2d;

    Standard_Boolean                isInputMouse;
    Standard_Boolean                RedrawFlag;

    TColStd_SequenceOfReal          mySeqOfPntU;

    RedrawState                     myRedrawState;
    Handle(AIS_InteractiveObject)   curTrimmedObj;
    Handle(AIS_InteractiveObject)   newTrimmedObj;
    Handle(AIS_InteractiveObject)   FirstObj;
    Handle(AIS_InteractiveObject)   SecondObj;
    Standard_Real                   curFirstObjParam_Start;
    Standard_Real                   curFirstObjParam_End;
    Standard_Real                   newFirstObjParam_Start;
    Standard_Real                   newFirstObjParam_End;
    Standard_Real                   curSecondObjParam_Start;
    Standard_Real                   curSecondObjParam_End;
    Standard_Real                   newSecondObjParam_Start;
    Standard_Real                   newSecondObjParam_End;
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------
