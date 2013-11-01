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
#include "Sketcher_CommandTrim.hxx"
//------------------------------------------------------------------------------
#include <TColStd_HSequenceOfTransient.hxx>
#include <Geom_CartesianPoint.hxx>
#include <ElCLib.hxx>
#include <AIS_InteractiveContext.hxx>
#include <AIS_Circle.hxx>
#include <AIS_Line.hxx>
#include <Geom_Circle.hxx>
//------------------------------------------------------------------------------
Sketcher_CommandTrim::Sketcher_CommandTrim()
    : TrimName(".Trim."),
    nearestgp_Circ2d(gp::OX2d(),SKETCHER_RADIUS)
{
  myTrimAction = NothingAction;
  minDistance = 0;
  curDistance = 0;
  NearestPntU = 0;
  NearestCurveIndex = 0;
  tempU = FirstU = SecondU = 0;
  isInputMouse = Standard_True;
  RedrawFlag = Standard_False;
  temp1Geom2d_Line = new Geom2d_Line(gp::Origin2d(),gp::DX2d());
  temp2Geom2d_Line = new Geom2d_Line(gp::Origin2d(),gp::DX2d());
  tempPnt2d = gp::Origin2d();
  mySecondgp_Pnt2d = gp::Origin2d();
  myRedrawState = NothingRedraw;
}
//------------------------------------------------------------------------------
Sketcher_CommandTrim::~Sketcher_CommandTrim()
{
}
//------------------------------------------------------------------------------
void Sketcher_CommandTrim::Action()
{
  myTrimAction = TrimObject;
  NearestCurveIndex = 0;
  myRedrawState = NothingRedraw;
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher_CommandTrim::MouseInputEvent(const gp_Pnt2d& thePnt2d)
{
  curPnt2d = thePnt2d;
  isInputMouse = Standard_True;
  StandardEvent();
  NearestCurveIndex = 0;
  return Standard_False;
}
//------------------------------------------------------------------------------
void Sketcher_CommandTrim::MouseMoveEvent(const gp_Pnt2d& thePnt2d)
{
  curPnt2d = thePnt2d;
  isInputMouse = Standard_False;
  StandardEvent();
}
//------------------------------------------------------------------------------
void Sketcher_CommandTrim::CancelEvent()
{
  RedrawOld();
  myTrimAction = NothingAction;
}
//------------------------------------------------------------------------------
Sketcher_ObjectTypeOfMethod Sketcher_CommandTrim::GetTypeOfMethod()
{
  return Trim_Method;
}
//------------------------------------------------------------------------------
void Sketcher_CommandTrim::StandardEvent()
{
  RedrawFlag = Standard_False;

  switch (myTrimAction) {
    case NothingAction:
      break;
    case TrimObject:
      SelectNearestCurve();

      if (minDistance != TRIMDISTANCETOCURVE) {
        if (NearestCurveIndex != curCurveIndex)
          FixObjectPoints();

        TrimCurve();
      }
      else RedrawOld();

      break;
    default:
      break;
  }
}
//------------------------------------------------------------------------------
void Sketcher_CommandTrim::SelectNearestCurve()
{
  minDistance = TRIMDISTANCETOCURVE;

  for (Standard_Integer i=1; i<=data->Length(); i++) {
    mySObject = Handle(Sketcher_Object)::DownCast(data->Value(i));

    switch (mySObject->GetGeometryType()) {
      case PointSketcherObject:
        break;
      case LineSketcherObject:
        curSketcher_Edge = Handle(Sketcher_Edge)::DownCast(mySObject->GetGeometry());
        myProjectOnCurve.Init(curPnt2d,curSketcher_Edge,curSketcher_Edge->StartParameter(),curSketcher_Edge->EndParameter());

        if (PointProjected(i))
          NearestPntU = ElCLib::Parameter(curSketcher_Edge->Lin2d(),myProjectOnCurve.NearestPoint());

        break;
      case CircleSketcherObject:
        curGeom2d_Circle = Handle(Geom2d_Circle)::DownCast(mySObject->GetGeometry());
        myProjectOnCurve.Init(curPnt2d,curGeom2d_Circle);

        if (PointProjected(i))
          NearestPntU = ElCLib::Parameter(curGeom2d_Circle->Circ2d(),myProjectOnCurve.NearestPoint());

        break;
      case ArcSketcherObject:
        curSketcher_Arc = Handle(Sketcher_Arc)::DownCast(mySObject->GetGeometry());
        myProjectOnCurve.Init(curPnt2d,curSketcher_Arc,curSketcher_Arc->FirstParameter(),curSketcher_Arc->LastParameter());

        if (PointProjected(i))
          NearestPntU = ElCLib::Parameter(curSketcher_Arc->Circ2d(),myProjectOnCurve.NearestPoint());

        break;
      default:
        break;
    }
  }
}
//------------------------------------------------------------------------------
void Sketcher_CommandTrim::FixObjectPoints()
{
  NearestCurveIndex = curCurveIndex;
  FirstU = 0;
  mySeqOfPntU.Clear();
  mySObject = Handle(Sketcher_Object)::DownCast(data->Value(NearestCurveIndex));
  SetType(mySObject->GetType());
  //ObjectName = TrimName;
  TypeofObject = mySObject->GetGeometryType();

  switch (TypeofObject) {
    case PointSketcherObject:
      break;
    case LineSketcherObject:
      curSketcher_Edge = Handle(Sketcher_Edge)::DownCast(mySObject->GetGeometry());
      mySeqOfPntU.Append(curSketcher_Edge->StartParameter());
      mySeqOfPntU.Append(curSketcher_Edge->EndParameter());
      temp1Geom2d_Line->SetLin2d(curSketcher_Edge->Lin2d());
      nearestGeom2d_Curve = temp1Geom2d_Line;
      break;
    case CircleSketcherObject:
      curGeom2d_Circle = Handle(Geom2d_Circle)::DownCast(mySObject->GetGeometry());
      nearestgp_Circ2d = curGeom2d_Circle->Circ2d();
      nearestGeom2d_Curve = curGeom2d_Circle;
      break;
    case ArcSketcherObject:
      curSketcher_Arc = Handle(Sketcher_Arc)::DownCast(mySObject->GetGeometry());
      FirstU = curSketcher_Arc->FirstParameter();
      mySeqOfPntU.Append(FirstU);
      mySeqOfPntU.Append(curSketcher_Arc->LastParameter());
      nearestgp_Circ2d = curSketcher_Arc->Circ2d();
      nearestGeom2d_Curve = curSketcher_Arc;
      break;
    default:
      break;
  }

  Standard_Integer k = 0;

  for (Standard_Integer i=1; i<=data->Length() ; i++) {
    if (NearestCurveIndex != i) {
      mySObject = Handle(Sketcher_Object)::DownCast(data->Value(i));

      switch (mySObject->GetGeometryType()) {
        case PointSketcherObject:
          break;
        case LineSketcherObject:
          curSketcher_Edge = Handle(Sketcher_Edge)::DownCast(mySObject->GetGeometry());
          temp2Geom2d_Line->SetLin2d(curSketcher_Edge->Lin2d());
          my2dAPI_InterCurveCurve.Init(nearestGeom2d_Curve,temp2Geom2d_Line,1.0e-12);

          for (k=1; k<=my2dAPI_InterCurveCurve.NbPoints(); k++) {
            tempPnt2d = my2dAPI_InterCurveCurve.Point(k);
            tempU = ElCLib::Parameter(curSketcher_Edge->Lin2d(),tempPnt2d);

            if (tempU > curSketcher_Edge->StartParameter() &&  tempU < curSketcher_Edge->EndParameter())
              SetParam();
          }

          break;
        case CircleSketcherObject:
        case ArcSketcherObject:
          curGeom2d_Circle = Handle(Geom2d_Circle)::DownCast(mySObject->GetGeometry());
          my2dAPI_InterCurveCurve.Init(nearestGeom2d_Curve,curGeom2d_Circle,1.0e-12);

          for (k=1; k<=my2dAPI_InterCurveCurve.NbPoints(); k++) {
            tempPnt2d = my2dAPI_InterCurveCurve.Point(k);
            SetParam();
          }

          break;
        default:
          break;
      }
    }
  }
}
//------------------------------------------------------------------------------
void Sketcher_CommandTrim::TrimCurve()
{
  mySObject = Handle(Sketcher_Object)::DownCast(data->Value(NearestCurveIndex));
  newTrimmedObj = mySObject->GetAIS_Object();

  switch (TypeofObject) {
    case PointSketcherObject:
      break;
    case LineSketcherObject:

      if (mySeqOfPntU.Length() <= 2) DelTrimmedObject();
      else {
        FindSegment();

        if (FirstU == mySeqOfPntU.First())
          EditLine(SecondU,mySeqOfPntU.Last());
        else if (SecondU == mySeqOfPntU.Last())
          EditLine(mySeqOfPntU.First(),FirstU);
        else
          AddNewLine(SecondU,mySeqOfPntU.Last());
      }

      break;
    case CircleSketcherObject:

      if (mySeqOfPntU.Length() <= 1) DelTrimmedObject();
      else {
        if ((mySeqOfPntU.First() + 2*M_PI) != mySeqOfPntU.Last())
          mySeqOfPntU.Append(mySeqOfPntU.First() + 2*M_PI);

        if (mySeqOfPntU(1) > NearestPntU) {
          FirstU = mySeqOfPntU(mySeqOfPntU.Length()-1);
          SecondU = mySeqOfPntU.Last();
        }
        else FindSegment();

        EditCircle();
      }

      break;
    case ArcSketcherObject:

      if (mySeqOfPntU.Length() <= 2) DelTrimmedObject();
      else {
        if (NearestPntU < FirstU) NearestPntU += 2*M_PI;

        FindSegment();

        if (FirstU == mySeqOfPntU.First())
          EditArc(SecondU,mySeqOfPntU.Last());
        else if (SecondU == mySeqOfPntU.Last())
          EditArc(mySeqOfPntU.First(),FirstU);
        else
          AddNewArc(SecondU,mySeqOfPntU.Last());
      }

      break;
    default:
      break;
  }
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher_CommandTrim::PointProjected(Standard_Integer index)
{
  if (myProjectOnCurve.NbPoints() > 0) {
    curDistance = curPnt2d.Distance(myProjectOnCurve.NearestPoint());

    if (minDistance > curDistance) {
      minDistance = curDistance;
      curCurveIndex = index;
      return Standard_True;
    }
  }

  return  Standard_False;
}
//------------------------------------------------------------------------------
void Sketcher_CommandTrim::SetParam()
{
  if (TypeofObject == LineSketcherObject) {
    tempU = ElCLib::Parameter(temp1Geom2d_Line->Lin2d(),tempPnt2d);

    if (tempU > mySeqOfPntU.First() &&  tempU < mySeqOfPntU.Last())
      AddParam();
  }
  else {
    tempU = ElCLib::Parameter(nearestgp_Circ2d,tempPnt2d);

    if (tempU < FirstU) tempU += 2*M_PI;

    AddParam();
  }
}
//------------------------------------------------------------------------------
void Sketcher_CommandTrim::AddParam()
{
  if (!mySeqOfPntU.IsEmpty())
    for (Standard_Integer j=1; j<=mySeqOfPntU.Length(); j++) {
      if (fabs(tempU - mySeqOfPntU(j)) < RealEpsilon()*10)
        break;
      else if (tempU < mySeqOfPntU(j)) {
        mySeqOfPntU.InsertBefore(j,tempU);
        break;
      }
      else if (j == mySeqOfPntU.Length()) {
        mySeqOfPntU.Append(tempU);
        break;
      }
    }
  else
    mySeqOfPntU.Append(tempU);
}
//------------------------------------------------------------------------------
void Sketcher_CommandTrim::FindSegment()
{
  for (Standard_Integer j=2; j<=mySeqOfPntU.Length(); j++) {
    if (mySeqOfPntU(j) > NearestPntU) {
      FirstU = mySeqOfPntU(j-1);
      SecondU = mySeqOfPntU(j);
      break;
    }
  }
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher_CommandTrim::Redraw()
{
  switch (myRedrawState) {
    case NothingRedraw:
      curTrimmedObj = newTrimmedObj;
      curFirstObjParam_Start = newFirstObjParam_Start;
      curFirstObjParam_End = newFirstObjParam_End;
      curSecondObjParam_Start = newSecondObjParam_Start;
      curSecondObjParam_End = newSecondObjParam_End;
      return Standard_True;
    case RedrawTrimmedObject:

      if (curTrimmedObj != newTrimmedObj) {
        myContext->Display(curTrimmedObj);
        curTrimmedObj = newTrimmedObj;
        return Standard_True;
      }

      break;
    case OneObjectRemove:

      if (curTrimmedObj != newTrimmedObj ||
          curFirstObjParam_Start != newFirstObjParam_Start ||
          curFirstObjParam_End != newFirstObjParam_End) {
        myContext->Display(curTrimmedObj);
        myContext->Remove(FirstObj);
        curTrimmedObj = newTrimmedObj;
        curFirstObjParam_Start = newFirstObjParam_Start;
        curFirstObjParam_End = newFirstObjParam_End;
        return Standard_True;
      }

      break;
    case TwoObjectRemove:

      if (curTrimmedObj != newTrimmedObj ||
          curFirstObjParam_Start != newFirstObjParam_Start ||
          curFirstObjParam_End != newFirstObjParam_End  ||
          curSecondObjParam_Start != newSecondObjParam_Start ||
          curSecondObjParam_End != newSecondObjParam_End) {
        myContext->Display(curTrimmedObj);
        myContext->Remove(FirstObj);
        myContext->Remove(SecondObj);
        curTrimmedObj = newTrimmedObj;
        curFirstObjParam_Start = newFirstObjParam_Start;
        curFirstObjParam_End = newFirstObjParam_End;
        curSecondObjParam_Start = newSecondObjParam_Start;
        curSecondObjParam_End = newSecondObjParam_End;
        return Standard_True;
      }

      break;
    default:
      break;
  }

  return Standard_False;
}
//------------------------------------------------------------------------------
void Sketcher_CommandTrim::RedrawOld()
{
  switch (myRedrawState) {
    case NothingRedraw:
      break;
    case RedrawTrimmedObject:
      myContext->Display(curTrimmedObj);
      break;
    case OneObjectRemove:
      myContext->Display(curTrimmedObj);
      myContext->Remove(FirstObj);
      break;
    case TwoObjectRemove:
      myContext->Display(curTrimmedObj);
      myContext->Remove(FirstObj);
      myContext->Remove(SecondObj);
      break;
    default:
      break;
  }

  myRedrawState = NothingRedraw;
}
//------------------------------------------------------------------------------
void Sketcher_CommandTrim::DelTrimmedObject()
{
  if (Redraw())
    myContext->Erase(curTrimmedObj,Standard_True,Standard_False);

  if (isInputMouse) {
    data->Remove(NearestCurveIndex);
    myRedrawState = NothingRedraw;
  }
  else myRedrawState = RedrawTrimmedObject;
}
//------------------------------------------------------------------------------
void Sketcher_CommandTrim::EditLine(Standard_Real u1,Standard_Real u2)
{
  newFirstObjParam_Start = u1;
  newFirstObjParam_End = u2;
  myFirstgp_Pnt2d  = ElCLib::Value(u1,temp1Geom2d_Line->Lin2d());
  mySecondgp_Pnt2d = ElCLib::Value(u2,temp1Geom2d_Line->Lin2d());

  if (Redraw()) {
    Handle(Geom_CartesianPoint) Geom_Point1 = new Geom_CartesianPoint(ElCLib::To3d(curCoordinateSystem.Ax2(),myFirstgp_Pnt2d));
    Handle(Geom_CartesianPoint) Geom_Point2 = new Geom_CartesianPoint(ElCLib::To3d(curCoordinateSystem.Ax2(),mySecondgp_Pnt2d));
    Handle(AIS_Line) myAIS_Line = new AIS_Line(Geom_Point1,Geom_Point2);
    myContext->Erase(curTrimmedObj,Standard_True,Standard_False);
    myContext->Display(myAIS_Line);
    FirstObj = myAIS_Line;
    RedrawFlag = Standard_True;
  }

  if (isInputMouse) {
    curSketcher_Edge = Handle(Sketcher_Edge)::DownCast(mySObject->GetGeometry());

    if (curSketcher_Edge->SetPoints(myFirstgp_Pnt2d,mySecondgp_Pnt2d)) {

      mySObject->SetGeometry(curSketcher_Edge); //fox fix
      //mySObject->SetAIS_Object(FirstObj); fox

      myRedrawState = NothingRedraw;
    }
  }
  else myRedrawState = OneObjectRemove;
}
//------------------------------------------------------------------------------
void Sketcher_CommandTrim::AddNewLine(Standard_Real u1,Standard_Real u2)
{
  gp_Pnt2d StartPnt2d(ElCLib::Value(u1,temp1Geom2d_Line->Lin2d()));
  gp_Pnt2d EndPnt2d(ElCLib::Value(u2,temp1Geom2d_Line->Lin2d()));
  newSecondObjParam_Start = u1;
  newSecondObjParam_End = u2;
  EditLine(mySeqOfPntU.First(),FirstU);

  if (RedrawFlag) {
    Handle(Geom_CartesianPoint) Geom_Point1 = new Geom_CartesianPoint(ElCLib::To3d(curCoordinateSystem.Ax2(),StartPnt2d));
    Handle(Geom_CartesianPoint) Geom_Point2 = new Geom_CartesianPoint(ElCLib::To3d(curCoordinateSystem.Ax2(),EndPnt2d));
    Handle(AIS_Line) myAIS_Line = new AIS_Line(Geom_Point1,Geom_Point2);
    //myAIS_Line->SetAttributes(myDrawer);
    myContext->Display(myAIS_Line);
    SecondObj = myAIS_Line;
  }

  if (isInputMouse) {
    Handle(Sketcher_Edge) mySketcher_Edge = new Sketcher_Edge();

    if (mySketcher_Edge->SetPoints(StartPnt2d,EndPnt2d))
      AddObject(mySketcher_Edge,LineSketcherObject);
  }
  else myRedrawState = TwoObjectRemove;
}
//------------------------------------------------------------------------------
void Sketcher_CommandTrim::EditCircle()
{
  myFirstgp_Pnt2d  = ElCLib::Value(FirstU,nearestgp_Circ2d);
  tempPnt2d = ElCLib::Value((FirstU + 2*M_PI + SecondU) / 2 ,nearestgp_Circ2d);
  mySecondgp_Pnt2d = ElCLib::Value(SecondU,nearestgp_Circ2d);
  newFirstObjParam_Start = FirstU;
  newFirstObjParam_End = SecondU;

  if (Redraw()) {
    Handle(Sketcher_Arc) tempSketcher_Arc = new Sketcher_Arc(nearestgp_Circ2d);
    tempSketcher_Arc->SetParam(myFirstgp_Pnt2d,tempPnt2d,mySecondgp_Pnt2d);
    Handle(Geom_Circle) Geom_Circle1 = new Geom_Circle(ElCLib::To3d(curCoordinateSystem.Ax2(),nearestgp_Circ2d));
    Handle(AIS_Circle) myAIS_Circle = new AIS_Circle(Geom_Circle1);
    myAIS_Circle->SetFirstParam(tempSketcher_Arc->FirstParameter());//(trimmedgp_Circ2d,myFirstgp_Pnt2d));
    myAIS_Circle->SetLastParam(tempSketcher_Arc->LastParameter()); //ElCLib::Parameter(trimmedgp_Circ2d,mySecondgp_Pnt2d));
    //myAIS_Circle->SetAttributes(myDrawer);
    myContext->Erase(curTrimmedObj,Standard_True,Standard_False);
    myContext->Display(myAIS_Circle);
    FirstObj = myAIS_Circle;
  }

  if (isInputMouse) {
    Handle(Sketcher_Arc) mySketcher_Arc = new Sketcher_Arc(nearestgp_Circ2d);
    mySketcher_Arc->SetParam(myFirstgp_Pnt2d,tempPnt2d,mySecondgp_Pnt2d);
    data->Remove(NearestCurveIndex);
    AddObject(mySketcher_Arc,ArcSketcherObject);
    myRedrawState = NothingRedraw;
  }
  else myRedrawState = OneObjectRemove;
}
//------------------------------------------------------------------------------
void Sketcher_CommandTrim::EditArc(Standard_Real u1,Standard_Real u2)
{
  myFirstgp_Pnt2d  = ElCLib::Value(u1,nearestgp_Circ2d);
  tempPnt2d = ElCLib::Value((u1 + u2) / 2,nearestgp_Circ2d);
  mySecondgp_Pnt2d = ElCLib::Value(u2,nearestgp_Circ2d);
  newFirstObjParam_Start = u1;
  newFirstObjParam_End = u2;

  if (Redraw()) {
    Handle(Sketcher_Arc) tempSketcher_Arc = new Sketcher_Arc(nearestgp_Circ2d);
    tempSketcher_Arc->SetParam(myFirstgp_Pnt2d,tempPnt2d,mySecondgp_Pnt2d);
    Handle(Geom_Circle) Geom_Circle1 = new Geom_Circle(ElCLib::To3d(curCoordinateSystem.Ax2(),nearestgp_Circ2d));
    Handle(AIS_Circle) myAIS_Circle = new AIS_Circle(Geom_Circle1);
    myAIS_Circle->SetFirstParam(tempSketcher_Arc->FirstParameter());
    myAIS_Circle->SetLastParam(tempSketcher_Arc->LastParameter());
    //myAIS_Circle->SetAttributes(myDrawer);
    myContext->Erase(curTrimmedObj,Standard_True,Standard_False);
    myContext->Display(myAIS_Circle);
    FirstObj = myAIS_Circle;
    RedrawFlag = Standard_True;
  }

  if (isInputMouse) {
    curSketcher_Arc = Handle(Sketcher_Arc)::DownCast(mySObject->GetGeometry());
    curSketcher_Arc->SetFirstParam(u1);
    curSketcher_Arc->SetLastParam(u2);

    mySObject->SetGeometry(curSketcher_Arc); //fox fix
    //mySObject->SetAIS_Object(FirstObj); fox

    myRedrawState = NothingRedraw;
  }
  else myRedrawState = OneObjectRemove;
}
//------------------------------------------------------------------------------
void Sketcher_CommandTrim::AddNewArc(Standard_Real u1,Standard_Real u2)
{
  gp_Pnt2d StartPnt2d(ElCLib::Value(u1,nearestgp_Circ2d));
  gp_Pnt2d midPnt2d(ElCLib::Value((u1+u2)/2,nearestgp_Circ2d));
  gp_Pnt2d EndPnt2d(ElCLib::Value(u2,nearestgp_Circ2d));
  newSecondObjParam_Start = u1;
  newSecondObjParam_End = u2;
  EditArc(mySeqOfPntU.First(),FirstU);

  if (RedrawFlag) {
    Handle(Sketcher_Arc) tempSketcher_Arc = new Sketcher_Arc(nearestgp_Circ2d);
    tempSketcher_Arc->SetParam(StartPnt2d,midPnt2d,EndPnt2d);
    Handle(Geom_Circle) Geom_Circle1 = new Geom_Circle(ElCLib::To3d(curCoordinateSystem.Ax2(),nearestgp_Circ2d));
    Handle(AIS_Circle) myAIS_Circle = new AIS_Circle(Geom_Circle1);
    myAIS_Circle->SetFirstParam(tempSketcher_Arc->FirstParameter());
    myAIS_Circle->SetLastParam(tempSketcher_Arc->LastParameter());
    //myAIS_Circle->SetAttributes(myDrawer);
    myContext->Display(myAIS_Circle);
    SecondObj = myAIS_Circle;
  }

  if (isInputMouse) {
    Handle(Sketcher_Arc) mySketcher_Arc = new Sketcher_Arc(nearestgp_Circ2d);
    mySketcher_Arc->SetParam(StartPnt2d,midPnt2d,EndPnt2d);
    AddObject(mySketcher_Arc,ArcSketcherObject);
  }
  else myRedrawState = TwoObjectRemove;
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_CommandTrim,Sketcher_Command)
IMPLEMENT_STANDARD_RTTI(Sketcher_CommandTrim)
IMPLEMENT_STANDARD_TYPE(Sketcher_CommandTrim)
IMPLEMENT_STANDARD_SUPERTYPE(Sketcher_Command)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Sketcher_Command)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_CommandTrim)
//------------------------------------------------------------------------------
