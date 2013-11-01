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
#include "Sketcher_AnalyserSnap.hxx"
//------------------------------------------------------------------------------
#include "Sketcher_SnapEnd.hxx"
#include "Sketcher_SnapMiddle.hxx"
#include "Sketcher_SnapCenter.hxx"
#include "Sketcher_SnapNearest.hxx"
#include "Sketcher_SnapIntersection.hxx"
#include "Sketcher_SnapLineParallel.hxx"
#include "Sketcher_SnapLinePerpendicular.hxx"
#include "Sketcher_SnapTangent.hxx"
//------------------------------------------------------------------------------
#include <TColStd_HSequenceOfTransient.hxx>
//------------------------------------------------------------------------------
Sketcher_AnalyserSnap::Sketcher_AnalyserSnap(Handle(AIS_InteractiveContext)& theContext,
    Handle(TColStd_HSequenceOfTransient)& thedata,
    gp_Ax3 &theAx3)
    :  curCoordinateSystem(gp::XOY())
{
  myContext             = theContext;
  data                  = thedata;
  curCoordinateSystem   = theAx3;
  myCurrentSnap         = SnapNothing;
  mySnapAnType          = SnapNothing;
  myPnt2d               = gp::Origin2d();
  minimumSnapDistance   = MINIMUMSNAP;
  bestDist              = 0;
  curDist               = 0;

  storedPnt2d           = gp::Origin2d();
  storedTangentType     = NothingTangent;
  isTangent             = Standard_False;
  isLine                = Standard_False;

  mySnaps = new TColStd_HSequenceOfTransient();

  addSnap(new Sketcher_SnapEnd());
  addSnap(new Sketcher_SnapMiddle());
  addSnap(new Sketcher_SnapCenter());
  addSnap(new Sketcher_SnapNearest());
  addSnap(new Sketcher_SnapIntersection());
  addSnap(new Sketcher_SnapLineParallel());
  addSnap(new Sketcher_SnapLinePerpendicular());
  addSnap(new Sketcher_SnapTangent());
}
//------------------------------------------------------------------------------
Sketcher_AnalyserSnap::~Sketcher_AnalyserSnap()
{
}
//------------------------------------------------------------------------------
void Sketcher_AnalyserSnap::SetContext(Handle(AIS_InteractiveContext)& theContext)
{
  myContext = theContext;

  for (Standard_Integer i=1; i<=mySnaps->Length(); i++) {
    CurSnap = Handle(Sketcher_Snap)::DownCast(mySnaps->Value(i));
    CurSnap->SetContext(myContext);
  }
}
//------------------------------------------------------------------------------
void Sketcher_AnalyserSnap::SetData(Handle(TColStd_HSequenceOfTransient)& thedata)
{
  data = thedata;

  for (Standard_Integer i=1; i<=mySnaps->Length(); i++) {
    CurSnap = Handle(Sketcher_Snap)::DownCast(mySnaps->Value(i));
    CurSnap->SetData(data);
  }
}
//------------------------------------------------------------------------------
void Sketcher_AnalyserSnap::SetAx3(const gp_Ax3& theAx3)
{
  curCoordinateSystem = theAx3;

  for (Standard_Integer i=1; i<=mySnaps->Length(); i++) {
    CurSnap = Handle(Sketcher_Snap)::DownCast(mySnaps->Value(i));
    CurSnap->SetAx3(curCoordinateSystem);
  }
}
//------------------------------------------------------------------------------
void Sketcher_AnalyserSnap::SetMinDistance(const Standard_Real& aPrecise)
{
  minimumSnapDistance = aPrecise;

  for (Standard_Integer i=1; i<=mySnaps->Length(); i++) {
    CurSnap = Handle(Sketcher_Snap)::DownCast(mySnaps->Value(i));
    CurSnap->SetMinDistance(aPrecise);
  }
}
//------------------------------------------------------------------------------
void Sketcher_AnalyserSnap::SetSnapType(Sketcher_SnapType theSnap)
{
  Cancel();
  myCurrentSnap = theSnap;
}
//------------------------------------------------------------------------------
Sketcher_SnapType Sketcher_AnalyserSnap::GetSnapType()
{
  return myCurrentSnap;
}
//------------------------------------------------------------------------------
gp_Pnt2d Sketcher_AnalyserSnap::MouseInput(const gp_Pnt2d& thePnt2d)
{
  myPnt2d = thePnt2d;

  switch (myCurrentSnap) {
    case SnapEnd:
    case SnapMiddle:
    case SnapCenter:
    case SnapIntersection:
    case SnapNearest:
      SelectCurSnap();
      myPnt2d = CurSnap->MouseInputEvent(thePnt2d);
      break;
    case SnapTangent:

      if (isTangent) {
        SelectCurSnap();
        CurSnap->setFirstPnt(storedPnt2d,storedTangentType);
        myPnt2d = CurSnap->MouseInputEvent(thePnt2d);
      }

      break;
    case SnapParallel:
    case SnapPerpendicular:

      if (isLine) {
        SelectCurSnap();
        CurSnap->setFirstPnt(storedPnt2d);
        myPnt2d = CurSnap->MouseInputEvent(thePnt2d);
      }

      break;
    case SnapAnalyse:
      SnapAnalyserEvent();
      CurSnap->EraseSnap();
      mySnapAnType = SnapNothing;
      break;
    default:
      break;
  }

  return myPnt2d;
}
//------------------------------------------------------------------------------
gp_Pnt2d Sketcher_AnalyserSnap::MouseMove(const gp_Pnt2d& thePnt2d)
{
  myPnt2d = thePnt2d;

  switch (myCurrentSnap) {
    case SnapEnd:
    case SnapMiddle:
    case SnapCenter:
    case SnapIntersection:
    case SnapNearest:
      SelectCurSnap();
      myPnt2d = CurSnap->MouseMoveEvent(thePnt2d);
      break;
    case SnapTangent:

      if (isTangent) {
        SelectCurSnap();
        CurSnap->setFirstPnt(storedPnt2d,storedTangentType);
        myPnt2d = CurSnap->MouseMoveEvent(thePnt2d);
      }

      break;
    case SnapParallel:
    case SnapPerpendicular:

      if (isLine) {
        SelectCurSnap();
        CurSnap->setFirstPnt(storedPnt2d);
        myPnt2d = CurSnap->MouseMoveEvent(thePnt2d);
      }

      break;
    case SnapAnalyse: {
        SnapAnalyserEvent();

        if (mySnapAnType != curSnapAnType) {
          mySnapAnType = curSnapAnType;
          CurSnap->EraseSnap();
        }

        for (Standard_Integer k=1; k<=mySnaps->Length(); k++) {
          CurSnap = Handle(Sketcher_Snap)::DownCast(mySnaps->Value(k));

          if (CurSnap->GetSnapType() == mySnapAnType) {
            myPnt2d = CurSnap->MouseMoveEvent(thePnt2d);
            break;
          }
        }
      }
      break;
    default:
      break;
  }

  return myPnt2d;
}
//------------------------------------------------------------------------------
void Sketcher_AnalyserSnap::Cancel()
{
  SelectCurSnap();
  CurSnap->EraseSnap();
  mySnapAnType      = SnapNothing;
  storedTangentType = NothingTangent;
  isTangent         = Standard_False;
  isLine            = Standard_False;
}
//------------------------------------------------------------------------------
gp_Pnt2d Sketcher_AnalyserSnap::MouseInputException(const gp_Pnt2d& p1, const gp_Pnt2d& thePnt2d, Sketcher_TangentType CType, Standard_Boolean TangentOnly)
{
  if (myCurrentSnap == SnapAnalyse || myCurrentSnap ==  SnapParallel || myCurrentSnap ==  SnapPerpendicular || myCurrentSnap == SnapTangent) {
    storedPnt2d = p1;
    storedTangentType = CType;
    isTangent = Standard_True;

    if (!TangentOnly) isLine = Standard_True;

    MouseInput(thePnt2d);
    isTangent = Standard_False;
    isLine = Standard_False;
    return myPnt2d;
  }
  else return MouseInput(thePnt2d);
}
//------------------------------------------------------------------------------
gp_Pnt2d Sketcher_AnalyserSnap::MouseMoveException(const gp_Pnt2d& p1, const gp_Pnt2d& thePnt2d, Sketcher_TangentType CType, Standard_Boolean TangentOnly)
{
  if (myCurrentSnap == SnapAnalyse || myCurrentSnap ==  SnapParallel || myCurrentSnap ==  SnapPerpendicular || myCurrentSnap == SnapTangent) {
    storedPnt2d = p1;
    storedTangentType = CType;
    isTangent = Standard_True;

    if (!TangentOnly) isLine = Standard_True;

    MouseMove(thePnt2d);
    isTangent = Standard_False;
    isLine = Standard_False;
    return myPnt2d;
  }
  else return MouseMove(thePnt2d);
}
//------------------------------------------------------------------------------
void Sketcher_AnalyserSnap::SnapAnalyserEvent()
{
  bestDist = minimumSnapDistance*10;
  curDist = 0;
  mySeqOfPnt2d.Clear();
  mySeqOfDistance.Clear();
  mySeqOfFactor.Clear();
  mySnapType.Clear();

  for (Standard_Integer i=1; i<=mySnaps->Length(); i++) {
    CurSnap = Handle(Sketcher_Snap)::DownCast(mySnaps->Value(i));

    switch (CurSnap->GetSnapType()) {
      case SnapEnd:
        AddPoints(1);
        break;
      case SnapMiddle:
        AddPoints(3.5);
        break;
      case SnapCenter:
        AddPoints(4);
        break;
      case SnapIntersection:
        AddPoints(1);
        break;
      case SnapNearest:
        AddPoints(8);
        break;
      case SnapTangent:

        if (isTangent) {
          CurSnap->setFirstPnt(storedPnt2d,storedTangentType);
          AddPoints(1);
        }

        break;
      case SnapParallel:
      case SnapPerpendicular:

        if (isLine) {
          CurSnap->setFirstPnt(storedPnt2d);
          AddPoints(8);
        }

        break;
      default:
        break;
    }
  }

  curSnapAnType = SnapNothing;

  for (Standard_Integer j=1; j<=mySeqOfPnt2d.Length(); j++) {
    curDist = mySeqOfDistance(j) * mySeqOfFactor(j);

    if (bestDist > curDist) {
      bestDist = curDist;
      myPnt2d = mySeqOfPnt2d(j);
      curSnapAnType = (Sketcher_SnapType)mySnapType(j);
    }
  }

  for (Standard_Integer k=1; k<=mySnaps->Length(); k++) {
    CurSnap = Handle(Sketcher_Snap)::DownCast(mySnaps->Value(k));

    if (CurSnap->GetSnapType() == mySnapAnType)
      break;
  }
}
//------------------------------------------------------------------------------
void Sketcher_AnalyserSnap::AddPoints(const Standard_Real& factor)
{
  gp_Pnt2d pt;
  Standard_Real distance = 0;
  Standard_Integer snaptype = 0;

  if (CurSnap->AnalyserEvent(myPnt2d, pt, distance, snaptype)) {
    mySeqOfPnt2d.Append(pt);
    mySeqOfDistance.Append(distance);
    mySeqOfFactor.Append(factor);
    mySnapType.Append(snaptype);
  }
}
//------------------------------------------------------------------------------
void Sketcher_AnalyserSnap::addSnap(Handle(Sketcher_Snap) theSnap)
{
  theSnap->SetData(data);
  theSnap->SetContext(myContext);
  theSnap->SetAx3(curCoordinateSystem);
  mySnaps->Append(theSnap);
}
//------------------------------------------------------------------------------
void Sketcher_AnalyserSnap::SelectCurSnap()
{
  for (Standard_Integer i=1; i<=mySnaps->Length(); i++) {
    CurSnap = Handle(Sketcher_Snap)::DownCast(mySnaps->Value(i));

    if (CurSnap->GetSnapType() == myCurrentSnap)
      break;
  }
}
//------------------------------------------------------------------------------
const gp_Pnt2d& Sketcher_AnalyserSnap::GetCurrentBestPnt2D()
{
  return myPnt2d;
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_AnalyserSnap,MMgt_TShared)
IMPLEMENT_STANDARD_RTTI(Sketcher_AnalyserSnap)
IMPLEMENT_STANDARD_TYPE(Sketcher_AnalyserSnap)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_AnalyserSnap)
//------------------------------------------------------------------------------
