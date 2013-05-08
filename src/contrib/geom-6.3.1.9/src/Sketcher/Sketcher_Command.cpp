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
#include "Sketcher_Command.hxx"
//------------------------------------------------------------------------------
#include <AIS_Line.hxx>
#include <AIS_Circle.hxx>
#include <Geom_Circle.hxx>
#include <Geom_CartesianPoint.hxx>
#include <AIS_Point.hxx>
#include <TColStd_HSequenceOfTransient.hxx>
#include <AIS_InteractiveContext.hxx>
#include <TDocStd_Owner.hxx>
#include <TDocStd_Document.hxx>
//------------------------------------------------------------------------------
Sketcher_Command::Sketcher_Command()
    : curCoordinateSystem(gp::XOY())
{
  myType = MainSketcherType;
  myPolylineMode= Standard_False;
  curPnt2d = gp::Origin2d();
  myFirstgp_Pnt2d = gp::Origin2d();

  myRubberLineFirstPoint = new Geom_CartesianPoint(gp::Origin());
  myRubberLineSecondPoint = new Geom_CartesianPoint(gp::Origin());
  myRubberLine = new AIS_Line(myRubberLineFirstPoint, myRubberLineSecondPoint);

  myRubberCircleGeometry = new Geom_Circle(curCoordinateSystem.Ax2(),SKETCHER_RADIUS);
  myRubberCircle = new AIS_Circle(myRubberCircleGeometry);

  myRubberCenterPointPosition = new Geom_CartesianPoint(gp::Origin());
  myRubberCenterPoint = new AIS_Point(myRubberCenterPointPosition);
}
//------------------------------------------------------------------------------
Sketcher_Command::~Sketcher_Command()
{
}
//------------------------------------------------------------------------------
void Sketcher_Command::SetContext(Handle(AIS_InteractiveContext)& theContext)
{
  myContext = theContext;
}
//------------------------------------------------------------------------------
void Sketcher_Command::SetData(Handle(TColStd_HSequenceOfTransient)& thedata)
{
  data = thedata;
}
//------------------------------------------------------------------------------
void Sketcher_Command::SetAx3(const gp_Ax3 &theAx3)
{
  curCoordinateSystem = theAx3;
}
//------------------------------------------------------------------------------
void Sketcher_Command::SetAnalyserSnap(Handle(Sketcher_AnalyserSnap)& theAnalyserSnap)
{
  myAnalyserSnap = theAnalyserSnap;
}
//------------------------------------------------------------------------------
void Sketcher_Command::SetType(const Sketcher_ObjectType theType)
{
  myType = theType;
}
//------------------------------------------------------------------------------
void Sketcher_Command::AddObject(const Handle(Geom2d_Geometry)& theGeom2d_Geometry,
                                 const Sketcher_ObjectGeometryType theGeometryType)
{
  //begin undoable action
  TDocStd_Owner::GetDocument(myLabel.Data())->OpenCommand();

  Handle(Sketcher_Object) so = new Sketcher_Object( myLabel.NewChild(),
                                                    theGeom2d_Geometry,
                                                    theGeometryType,
                                                    GetTypeOfMethod());
  so->SetPlane(curCoordinateSystem);
  so->SetType(myType);

  so->DisplayPrs();

  data->Append(so);
  
  //end undoable action
  TDocStd_Owner::GetDocument(myLabel.Data())->CommitCommand();
}
//------------------------------------------------------------------------------
void Sketcher_Command::SetLabel(const TDF_Label& theLabel)
{
  myLabel = theLabel;
}
//------------------------------------------------------------------------------
void Sketcher_Command::SetPolylineMode(Standard_Boolean mode)
{
}
//------------------------------------------------------------------------------
void Sketcher_Command::ClosePolyline()
{
}
//------------------------------------------------------------------------------
void Sketcher_Command::DisplayRubberLine()
{
  if (myRubberLineFirstPoint->Distance(myRubberLineSecondPoint) > Precision::Confusion()) {
    if (myContext->IsDisplayed(myRubberLine)) {
      myContext->Redisplay(myRubberLine);
    }
    else
      myContext->Display(myRubberLine, 0, -1);
  }
}
//------------------------------------------------------------------------------
void Sketcher_Command::RemoveRubberLine()
{
  if (myContext->IsDisplayed(myRubberLine)) {
    myContext->Remove(myRubberLine);
  }
}
//------------------------------------------------------------------------------
void Sketcher_Command::DisplayRubberCircle()
{
  if (myRubberCircleGeometry->Radius() > Precision::Confusion()) {
    if (fabs(myRubberCircleParamU - myRubberCircleParamV) > Precision::Confusion()) {
      myRubberCircle->SetFirstParam(myRubberCircleParamU);
      myRubberCircle->SetLastParam(myRubberCircleParamV);
    }

    myRubberCenterPointPosition->SetPnt(myRubberCircleGeometry->Location());

    if (myContext->IsDisplayed(myRubberCircle)) {
      myContext->Redisplay(myRubberCenterPoint);
      myContext->Redisplay(myRubberCircle);
    }
    else {
      myContext->Display(myRubberCenterPoint, 0, -1);
      myContext->Display(myRubberCircle, 0, -1);
    }
  }
}
//------------------------------------------------------------------------------
void Sketcher_Command::RemoveRubberCircle()
{
  if (myContext->IsDisplayed(myRubberCircle)) {
    myContext->Remove(myRubberCircle);
    myContext->Remove(myRubberCenterPoint);
  }
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_Command,MMgt_TShared)
IMPLEMENT_STANDARD_RTTI(Sketcher_Command)
IMPLEMENT_STANDARD_TYPE(Sketcher_Command)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_Command)
//------------------------------------------------------------------------------
