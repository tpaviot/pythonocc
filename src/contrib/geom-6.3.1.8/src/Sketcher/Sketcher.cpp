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
#include "Sketcher.hxx"
//------------------------------------------------------------------------------
#include "Sketcher_GUI.hxx"

#include "Sketcher_CommandPoint.hxx"
#include "Sketcher_CommandLine2P.hxx"
#include "Sketcher_CommandCircleCenterRadius.hxx"
#include "Sketcher_CommandCircle3P.hxx"
#include "Sketcher_CommandCircle2PTan.hxx"
#include "Sketcher_CommandCircleP2Tan.hxx"
#include "Sketcher_CommandCircle3Tan.hxx"
#include "Sketcher_CommandArc3P.hxx"
#include "Sketcher_CommandArcCenter2P.hxx"
#include "Sketcher_CommandBezierCurve.hxx"
#include "Sketcher_CommandTrim.hxx"
//------------------------------------------------------------------------------
#include <Geom_Line.hxx>
#include <Geom_Plane.hxx>

#include <TDocStd_Document.hxx>
#include <TDocStd_Owner.hxx>

#include <TPrsStd_AISViewer.hxx>
#include <AIS_InteractiveContext.hxx>

#include <TDF_ChildIterator.hxx>
#include <TDocStd_Owner.hxx>

#include <TColStd_HSequenceOfTransient.hxx>
//------------------------------------------------------------------------------
Sketcher::Sketcher(const TDF_Label& theRootLabel, Sketcher_GUI* sg)
    : myCoordinateSystem(gp::XOY()),
      myRootLab(theRootLabel),
      myCurrentMethod(Nothing_Method),
      myCurrentDir(gp::DZ()),
      myTempPnt(gp::Origin()),
      myCurrentPnt2d(gp::Origin2d()),
      myGUI(sg),
      myLastValidInputPnt2D(gp::Origin2d())
{
  Handle(TDocStd_Document) aDoc = TDocStd_Owner::GetDocument(myRootLab.Data());
  TDF_Label aDocLabel = aDoc->Main();

  if (TPrsStd_AISViewer::Has(aDocLabel))
    TPrsStd_AISViewer::Find(aDocLabel, myContext);
  else
    Standard_Failure::Raise("TDocStd_Document does not contain a valid TPrsStd_AISViewer");

  if (!myGUI)
    std::cout << "WARNING : No GUI class has been set in sketcher ! Functionallity " <<
    "from Sketcher::ViewProperties will not be available !" << std::endl;

  myData = new TColStd_HSequenceOfTransient();
  ReadData();

  myCommands     = new TColStd_HSequenceOfTransient();
  myCurrentPlane = new Geom_Plane(myCoordinateSystem);
  myCurrentLine  = new Geom_Line(myTempPnt, myCurrentDir);
  myAnalyserSnap = new Sketcher_AnalyserSnap(myContext, myData, myCoordinateSystem);

  if (myGUI) {
    myGUI->SetAx3(myCoordinateSystem);
    myGUI->SetContext(myContext);
  }
  
  addCommand(new Sketcher_CommandPoint());
  addCommand(new Sketcher_CommandLine2P());
  addCommand(new Sketcher_CommandCircleCenterRadius());
  addCommand(new Sketcher_CommandCircle3P());
  addCommand(new Sketcher_CommandCircle2PTan());
  addCommand(new Sketcher_CommandCircleP2Tan());
  addCommand(new Sketcher_CommandCircle3Tan());
  addCommand(new Sketcher_CommandArc3P());
  addCommand(new Sketcher_CommandArcCenter2P());
  addCommand(new Sketcher_CommandBezierCurve());
  addCommand(new Sketcher_CommandTrim());
}
//------------------------------------------------------------------------------
Sketcher::~Sketcher()
{
  EraseAll(Standard_True);
}
//------------------------------------------------------------------------------
void Sketcher::ReadData()
{
  myData->Clear();
  if (!myRootLab.IsNull()) {
    for (TDF_ChildIterator it(myRootLab); it.More(); it.Next()) {
      TDF_Label currLab = it.Value();
      if (!currLab.IsNull()) {
        if (currLab.IsAttribute(Sketcher_Object::GetObjectID())) {
          Handle(Sketcher_Object) anObject = Sketcher_Object::GetObject(currLab);
          if (!anObject.IsNull()) {
            anObject->SetPlane(myCoordinateSystem);
            myData->Append(anObject);
          }
        }
      }
    }
  }
}
//------------------------------------------------------------------------------
Handle(TColStd_HSequenceOfTransient) Sketcher::GetData()
{
  return myData;
}
//------------------------------------------------------------------------------
void Sketcher::SetCoordinateSystem(const gp_Ax3& theCS)
{
  myCoordinateSystem = theCS;

  myCurrentPlane->SetPosition(myCoordinateSystem);
  myAnalyserSnap->SetAx3(myCoordinateSystem);

  if (myGUI)
    myGUI->SetAx3(myCoordinateSystem);

  for (Standard_Integer i=1; i<=myCommands->Length(); i++) {
    CurCommand = Handle(Sketcher_Command)::DownCast(myCommands->Value(i));
    CurCommand->SetAx3(myCoordinateSystem);
  }

  for (Standard_Integer i=1; i<=myData->Length(); i++) {
    myCurObject = Handle(Sketcher_Object)::DownCast(myData->Value(i));
    myCurObject->SetPlane(theCS);
  }
}
//------------------------------------------------------------------------------
gp_Ax3 Sketcher::GetCoordinateSystem()
{
  return myCoordinateSystem;
}
//------------------------------------------------------------------------------
void Sketcher::SetSnapPrecision(const Standard_Real& aPrecise)
{
  if (aPrecise > 0)
    myAnalyserSnap->SetMinDistance(aPrecise);
}
//------------------------------------------------------------------------------
void Sketcher::SetType(const Sketcher_ObjectType theType)
{
  for (Standard_Integer i=1; i<=myCommands->Length(); i++) {
    CurCommand = Handle(Sketcher_Command)::DownCast(myCommands->Value(i));
    CurCommand->SetType(theType);
  }
}
//------------------------------------------------------------------------------
void Sketcher::ObjectAction(const Sketcher_ObjectTypeOfMethod theMethod)
{
  myCurrentMethod = theMethod;
  SelectCurCommand();
  CurCommand->Action();

  myLastValidInputPnt2D = gp::Origin2d();
}
//------------------------------------------------------------------------------
Sketcher_ObjectTypeOfMethod Sketcher::GetStatus()
{
  return myCurrentMethod;
}
//------------------------------------------------------------------------------
void Sketcher::OnCartesianCoordsEnter(Standard_Real aX, Standard_Real aY)
{
  SelectCurCommand();

  myCurrentPnt2d.SetCoord(aX, aY);

  Sketcher_SnapType aTempSnapType = myAnalyserSnap->GetSnapType();
  myAnalyserSnap->SetSnapType(SnapNothing);

  if (CurCommand->MouseInputEvent(myCurrentPnt2d))
    myCurrentMethod = Nothing_Method;

  myAnalyserSnap->SetSnapType(aTempSnapType);

  myLastValidInputPnt2D = myCurrentPnt2d;
}
//------------------------------------------------------------------------------
void Sketcher::OnPolarCoordsEnter(Standard_Real aLength, Standard_Real anAngle)
{
  SelectCurCommand();

  myCurrentPnt2d = gp::Origin2d();
  myCurrentPnt2d.SetX(aLength);

  myCurrentPnt2d.Rotate(gp::Origin2d(), anAngle);

  Sketcher_SnapType aTempSnapType = myAnalyserSnap->GetSnapType();
  myAnalyserSnap->SetSnapType(SnapNothing);

  if (CurCommand->MouseInputEvent(myCurrentPnt2d))
    myCurrentMethod = Nothing_Method;

  myAnalyserSnap->SetSnapType(aTempSnapType);

  myLastValidInputPnt2D = myCurrentPnt2d;
}
//------------------------------------------------------------------------------
void Sketcher::OnLocalCartesianCoordsEnter(Standard_Real aX, Standard_Real aY)
{
  SelectCurCommand();
  myCurrentPnt2d.SetCoord(aX + myLastValidInputPnt2D.X(), aY + myLastValidInputPnt2D.Y());

  Sketcher_SnapType aTempSnapType = myAnalyserSnap->GetSnapType();
  myAnalyserSnap->SetSnapType(SnapNothing);

  if (CurCommand->MouseInputEvent(myCurrentPnt2d))
    myCurrentMethod = Nothing_Method;

  myAnalyserSnap->SetSnapType(aTempSnapType);

  myLastValidInputPnt2D = myCurrentPnt2d;
}
//------------------------------------------------------------------------------
void Sketcher::OnLocalPolarCoordsEnter(Standard_Real aLength, Standard_Real anAngle)
{
  SelectCurCommand();

  myCurrentPnt2d.SetX(myLastValidInputPnt2D.X() + aLength);
  myCurrentPnt2d.SetY(myLastValidInputPnt2D.Y());
  
  myCurrentPnt2d.Rotate(myLastValidInputPnt2D, anAngle);

  Sketcher_SnapType aTempSnapType = myAnalyserSnap->GetSnapType();
  myAnalyserSnap->SetSnapType(SnapNothing);

  if (CurCommand->MouseInputEvent(myCurrentPnt2d))
    myCurrentMethod = Nothing_Method;

  myAnalyserSnap->SetSnapType(aTempSnapType);

  myLastValidInputPnt2D = myCurrentPnt2d;
}
//------------------------------------------------------------------------------
void Sketcher::OnMouseInputEvent(const V3d_Coordinate &v3dX,const V3d_Coordinate &v3dY,const V3d_Coordinate &v3dZ,
                                 const Quantity_Parameter& projVx,const Quantity_Parameter& projVy,const Quantity_Parameter& projVz)
{
  if (ProjectPointOnPlane(v3dX,v3dY,v3dZ,projVx,projVy,projVz)) {
    SelectCurCommand();

    if (CurCommand->MouseInputEvent(myCurrentPnt2d))
      myCurrentMethod = Nothing_Method;

    myLastValidInputPnt2D = myAnalyserSnap->GetCurrentBestPnt2D();
  }
}
//------------------------------------------------------------------------------
void Sketcher::OnMouseMoveEvent(const V3d_Coordinate &v3dX,const V3d_Coordinate &v3dY,const V3d_Coordinate &v3dZ,
                                const Quantity_Parameter& projVx,const Quantity_Parameter& projVy,const Quantity_Parameter& projVz)
{
  if (ProjectPointOnPlane(v3dX,v3dY,v3dZ,projVx,projVy,projVz)) {
    SelectCurCommand();
    CurCommand->MouseMoveEvent(myCurrentPnt2d);
  }
}
//------------------------------------------------------------------------------
void Sketcher::OnCancel()
{
  SelectCurCommand();
  myAnalyserSnap->Cancel();
  CurCommand->CancelEvent();
  myCurrentMethod = Nothing_Method;
  myLastValidInputPnt2D = gp::Origin2d();

  myContext->UpdateCurrentViewer();
}
//------------------------------------------------------------------------------
void Sketcher::DeleteSelectedObjects()
{
  TDocStd_Owner::GetDocument(myRootLab.Data())->OpenCommand();

  for (Standard_Integer i=1; i<=myData->Length(); i++) {
    myCurObject = Handle(Sketcher_Object)::DownCast(myData->Value(i));
    if (myContext->IsSelected(myCurObject->GetAIS_Object())) {
      myCurObject->ErasePrs();
      myCurObject->Remove();
      myData->Remove(i);
      i--;
    }
  }

  TDocStd_Owner::GetDocument(myRootLab.Data())->CommitCommand();

  myContext->UpdateCurrentViewer();
}
//------------------------------------------------------------------------------
void Sketcher::ViewProperties()
{
  for (Standard_Integer i=1; i<=myData->Length(); i++) {
    myCurObject = Handle(Sketcher_Object)::DownCast(myData->Value(i));

    if (myContext->IsSelected(myCurObject->GetAIS_Object())) {
      myContext->ClearSelected();

      if (myGUI)
        myGUI->SetSketcher_Object(myCurObject);

      break;
    }
  }
}
//------------------------------------------------------------------------------
void Sketcher::DrawAll()
{
  for (Standard_Integer i=1; i<=myData->Length(); i++) {
    myCurObject = Handle(Sketcher_Object)::DownCast(myData->Value(i));
    myCurObject->DisplayPrs();
  }
  myContext->UpdateCurrentViewer();
}
//------------------------------------------------------------------------------
void Sketcher::EraseAll(Standard_Boolean isRemove)
{
  for (Standard_Integer i=1; i<=myData->Length(); i++) {
    myCurObject = Handle(Sketcher_Object)::DownCast(myData->Value(i));
    myCurObject->ErasePrs(isRemove);
  }
  myContext->UpdateCurrentViewer();
}
//------------------------------------------------------------------------------
void Sketcher::SetPolylineMode(Standard_Boolean amode)
{
  for (Standard_Integer i=1; i<=myCommands->Length(); i++) {
    CurCommand = Handle(Sketcher_Command)::DownCast(myCommands->Value(i));
    CurCommand->SetPolylineMode(amode);
  }
}
//------------------------------------------------------------------------------
void Sketcher::ClosePolyline()
{
  for (Standard_Integer i=1; i<=myCommands->Length(); i++) {
    CurCommand = Handle(Sketcher_Command)::DownCast(myCommands->Value(i));
    CurCommand->ClosePolyline();
  }
  myLastValidInputPnt2D = gp::Origin2d();

  myContext->UpdateCurrentViewer();
}
//------------------------------------------------------------------------------
void Sketcher::SetSnap(Sketcher_SnapType theSnap)
{
  myAnalyserSnap->SetSnapType(theSnap);
}
//------------------------------------------------------------------------------
Sketcher_SnapType Sketcher::GetSnap()
{
  return myAnalyserSnap->GetSnapType();
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher::ProjectPointOnPlane(const V3d_Coordinate &v3dX,const V3d_Coordinate &v3dY,const V3d_Coordinate &v3dZ,
    const Quantity_Parameter& projVx,const Quantity_Parameter& projVy,const Quantity_Parameter& projVz)
{
  myTempPnt.SetCoord(v3dX,v3dY,v3dZ);
  myCurrentDir.SetCoord(projVx,projVy,projVz);
  myCurrentLine->SetDirection(myCurrentDir);
  myCurrentLine->SetLocation(myTempPnt);
  myIntCS.Perform(myCurrentLine,myCurrentPlane);

  if (myIntCS.NbPoints() >= 1) {
    myTempPnt = myIntCS.Point(1);
    Standard_Real myXval =
      (myTempPnt.X() - myCoordinateSystem.Location().X()) * myCoordinateSystem.XDirection().X() +
      (myTempPnt.Y() - myCoordinateSystem.Location().Y()) * myCoordinateSystem.XDirection().Y() +
      (myTempPnt.Z() - myCoordinateSystem.Location().Z()) * myCoordinateSystem.XDirection().Z();
    Standard_Real myYval =
      (myTempPnt.X()-myCoordinateSystem.Location().X()) * myCoordinateSystem.YDirection().X() +
      (myTempPnt.Y()-myCoordinateSystem.Location().Y()) * myCoordinateSystem.YDirection().Y() +
      (myTempPnt.Z()-myCoordinateSystem.Location().Z()) * myCoordinateSystem.YDirection().Z();

    myCurrentPnt2d.SetX(myXval);
    myCurrentPnt2d.SetY(myYval);
    return Standard_True;
  }
  else return Standard_False;
}
//------------------------------------------------------------------------------
const gp_Pnt2d& Sketcher::GetCurrent2DPnt()
{
  return myAnalyserSnap->GetCurrentBestPnt2D();
}
//------------------------------------------------------------------------------
void Sketcher::addCommand(Handle(Sketcher_Command) theCommand)
{
  theCommand->SetData(myData);
  theCommand->SetContext(myContext);
  theCommand->SetAnalyserSnap(myAnalyserSnap);
  theCommand->SetAx3(myCoordinateSystem);
  theCommand->SetLabel(myRootLab);

  myCommands->Append(theCommand);
}
//------------------------------------------------------------------------------
void Sketcher::SelectCurCommand()
{
  for (Standard_Integer i=1; i<=myCommands->Length(); i++) {
    CurCommand = Handle(Sketcher_Command)::DownCast(myCommands->Value(i));

    if (CurCommand->GetTypeOfMethod() == myCurrentMethod)
      break;
  }
}
//------------------------------------------------------------------------------
TDF_Label Sketcher::GetLabel()
{
  return myRootLab;
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher::Undo()
{
  bool Res = TDocStd_Owner::GetDocument(myRootLab.Data())->Undo();
  ReadData();
  myContext->UpdateCurrentViewer();
  return Res;
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher::Redo()
{
  bool Res = TDocStd_Owner::GetDocument(myRootLab.Data())->Redo();
  ReadData();
  myContext->UpdateCurrentViewer();
  return Res;
}
//------------------------------------------------------------------------------
