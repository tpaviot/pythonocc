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
#include "Sketcher_SnapLine.hxx"
//------------------------------------------------------------------------------
#include <Geom2d_Line.hxx>
#include <TColStd_HSequenceOfTransient.hxx>
#include <gp_Lin2d.hxx>
#include <ElCLib.hxx>
#include <Geom2d_CartesianPoint.hxx>
#include <BRepBuilderAPI_MakeEdge.hxx>
//------------------------------------------------------------------------------
Sketcher_SnapLine::Sketcher_SnapLine()
{
  minAngle = 0;
  curAngle = 0;
  curDir2d = gp::DX2d();
  tempDir2d= gp::DX2d();
  tempGeom2d_Line = new Geom2d_Line(gp::Origin2d(),gp::DX2d());
}
//------------------------------------------------------------------------------
Sketcher_SnapLine::~Sketcher_SnapLine()
{
}
//------------------------------------------------------------------------------
void Sketcher_SnapLine::SelectNearest()
{
  findbestPnt2d = Standard_False;
  minDistance = minimumSnapDistance/2;

  for (Standard_Integer i=1; i<=data->Length(); i++) {
    mySObject = Handle(Sketcher_Object)::DownCast(data->Value(i));
    myGeometryType = mySObject->GetGeometryType();

    switch (myGeometryType) {
      case PointSketcherObject:
        break;
      case LineSketcherObject:
        curGeom2d_Line = Handle(Geom2d_Line)::DownCast(mySObject->GetGeometry());
        ProjectOnCurve.Init(curPnt2d,curGeom2d_Line);

        if (countProject()) {
          nearestPnt2d = objectPnt2d;
          tempDir2d = curGeom2d_Line->Lin2d().Direction();
          curHilightedObj = mySObject->GetAIS_Object();
          mygp_Lin2 = ElCLib::To3d(curCoordinateSystem.Ax2(),curGeom2d_Line->Lin2d());
        }

        break;
      case CircleSketcherObject:
      case ArcSketcherObject:
        break;
      default:
        break;
    }
  }
}
//------------------------------------------------------------------------------
void Sketcher_SnapLine::checkparallel()
{
  if (curDir2d.IsParallel(tempDir2d,minAngle))
    if (ProjectPoint()) {
      mygp_Lin2 = ElCLib::To3d(curCoordinateSystem.Ax2(),curGeom2d_Line->Lin2d());
      curAngle = curDir2d.Angle(tempDir2d);

      if (minAngle > curAngle)
        minAngle = curAngle;
      else minAngle = M_PI - curAngle;
    }
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher_SnapLine::ProjectPoint()
{
  tempGeom2d_Line->SetLocation(curGeom2d_Point->Pnt2d());
  tempGeom2d_Line->SetDirection(tempDir2d);
  ProjectOnCurve.Init(nearestPnt2d,tempGeom2d_Line);

  if (ProjectOnCurve.NbPoints() > 0) {
    mygp_Lin1 = ElCLib::To3d(curCoordinateSystem.Ax2(),tempGeom2d_Line->Lin2d());
    bestPnt2d = ProjectOnCurve.NearestPoint();
    return Standard_True;
  }

  return Standard_False;
}
//------------------------------------------------------------------------------
void Sketcher_SnapLine::setEdges()
{
  findbestPnt2d = Standard_True;
  BRepBuilderAPI_MakeEdge me1(mygp_Lin1);
  BRepBuilderAPI_MakeEdge me2(mygp_Lin2);

  if (me1.IsDone() && me2.IsDone()) {
    FirstEdge = me1.Edge();
    SecondEdge = me2.Edge();
  }

  minDistance = bestPnt2d.Distance(curPnt2d);
}
//------------------------------------------------------------------------------
void Sketcher_SnapLine::setFirstPnt(const gp_Pnt2d& p)
{
  curGeom2d_Point->SetPnt2d(p);
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_SnapLine,Sketcher_Snap)
IMPLEMENT_STANDARD_RTTI(Sketcher_SnapLine)
IMPLEMENT_STANDARD_TYPE(Sketcher_SnapLine)
IMPLEMENT_STANDARD_SUPERTYPE(Sketcher_Snap)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Sketcher_Snap)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_SnapLine)
//------------------------------------------------------------------------------
