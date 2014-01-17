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
#ifndef SKETCHER_H
#define SKETCHER_H
//------------------------------------------------------------------------------
#include "Sketcher_Command.hxx"
//------------------------------------------------------------------------------
#include <V3d_Coordinate.hxx>
#include <GeomAPI_IntCS.hxx>
#include <Handle_Geom_Line.hxx>
//------------------------------------------------------------------------------
class TDF_Label;
class Sketcher_GUI;
class gp_Ax3;
//------------------------------------------------------------------------------
class Sketcher
{
  public:
    Standard_EXPORT Sketcher(const TDF_Label& theRootLabel, Sketcher_GUI* sg = NULL);
    Standard_EXPORT ~Sketcher();

    Standard_EXPORT Handle(TColStd_HSequenceOfTransient) GetData();

    Standard_EXPORT void SetCoordinateSystem(const gp_Ax3& theCS);
    Standard_EXPORT gp_Ax3 GetCoordinateSystem();

    Standard_EXPORT void SetSnap(Sketcher_SnapType theSnap);
    Standard_EXPORT Sketcher_SnapType GetSnap();

    Standard_EXPORT void SetSnapPrecision(const Standard_Real& aPrecise);

    Standard_EXPORT void SetType(const Sketcher_ObjectType theType);

    Standard_EXPORT Sketcher_ObjectTypeOfMethod GetStatus();

    Standard_EXPORT void ObjectAction(const Sketcher_ObjectTypeOfMethod theMethod);

    Standard_EXPORT void OnCartesianCoordsEnter(Standard_Real aX, Standard_Real aY);
    Standard_EXPORT void OnPolarCoordsEnter(Standard_Real aLength, Standard_Real anAngle);

    Standard_EXPORT void OnLocalCartesianCoordsEnter(Standard_Real aX, Standard_Real aY);
    Standard_EXPORT void OnLocalPolarCoordsEnter(Standard_Real aLength, Standard_Real anAngle);

    Standard_EXPORT void OnMouseInputEvent(const V3d_Coordinate &v3dX,const V3d_Coordinate &v3dY,const V3d_Coordinate &v3dZ,const Quantity_Parameter& projVx,const Quantity_Parameter& projVy,const Quantity_Parameter& projVz);
    Standard_EXPORT void OnMouseMoveEvent(const V3d_Coordinate &v3dX,const V3d_Coordinate &v3dY,const V3d_Coordinate &v3dZ,const Quantity_Parameter& projVx,const Quantity_Parameter& projVy,const Quantity_Parameter& projVz);

    Standard_EXPORT void OnCancel();
    Standard_EXPORT void ViewProperties();

    Standard_EXPORT void SetPolylineMode(Standard_Boolean amode);
    Standard_EXPORT void ClosePolyline();
    Standard_EXPORT void DeleteSelectedObjects();

    Standard_EXPORT void DrawAll();
    Standard_EXPORT void EraseAll(Standard_Boolean isRemove);

    Standard_EXPORT const gp_Pnt2d& GetCurrent2DPnt();

    Standard_EXPORT TDF_Label GetLabel();

    Standard_EXPORT Standard_Boolean Undo();
    Standard_EXPORT Standard_Boolean Redo();

  private:
    Standard_Boolean ProjectPointOnPlane(const V3d_Coordinate &v3dX,const V3d_Coordinate &v3dY,const V3d_Coordinate &v3dZ,const Quantity_Parameter& projVx,const Quantity_Parameter& projVy,const Quantity_Parameter& projVz);
    void addCommand(Handle(Sketcher_Command) theCommand);
    void SelectCurCommand();
    void ReadData();

    TDF_Label                               myRootLab;
    
    Handle(TColStd_HSequenceOfTransient)    myData;
    Sketcher_GUI*                           myGUI;

    Handle(TColStd_HSequenceOfTransient)    myCommands;
    Handle(Sketcher_Command)                CurCommand;
    Sketcher_ObjectTypeOfMethod             myCurrentMethod;

    Handle(Sketcher_AnalyserSnap)           myAnalyserSnap;
    Handle(Sketcher_Object)                 myCurObject;

    Handle(Geom_Line)                       myCurrentLine;
    Handle(Geom_Plane)                      myCurrentPlane;
    gp_Ax3                                  myCoordinateSystem;
    gp_Dir                                  myCurrentDir;
    gp_Pnt                                  myTempPnt;

    gp_Pnt2d                                myCurrentPnt2d;
    gp_Pnt2d                                myLastValidInputPnt2D;

    GeomAPI_IntCS                           myIntCS;

    Handle(AIS_InteractiveContext)          myContext;
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------
