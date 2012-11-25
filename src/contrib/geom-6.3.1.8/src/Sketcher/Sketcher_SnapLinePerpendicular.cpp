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
#include "Sketcher_SnapLinePerpendicular.hxx"
//------------------------------------------------------------------------------
#include <AIS_PerpendicularRelation.hxx>
#include <Geom2d_CartesianPoint.hxx>
#include <TColStd_HSequenceOfTransient.hxx>
#include <gce_MakeDir2d.hxx>
#include <AIS_InteractiveContext.hxx>
//------------------------------------------------------------------------------
Sketcher_SnapLinePerpendicular::Sketcher_SnapLinePerpendicular()
{
  myPerRelation = new AIS_PerpendicularRelation(FirstEdge,SecondEdge,myPlane);
}
//------------------------------------------------------------------------------
Sketcher_SnapLinePerpendicular::~Sketcher_SnapLinePerpendicular()
{
}
//------------------------------------------------------------------------------
void Sketcher_SnapLinePerpendicular::SelectEvent()
{
  SelectNearest();

  if (minDistance == minimumSnapDistance/2) {
    nearestPnt2d = curPnt2d;
    curDir2d = gp_Dir2d(gp_Vec2d(curGeom2d_Point->Pnt2d(),curPnt2d));
    minAngle = MINANGLE;

    for (Standard_Integer i=1; i<=data->Length(); i++) {
      mySObject = Handle(Sketcher_Object)::DownCast(data->Value(i));
      myGeometryType = mySObject->GetGeometryType();

      switch (myGeometryType) {
        case PointSketcherObject:
          break;
        case LineSketcherObject:
          curGeom2d_Line = Handle(Geom2d_Line)::DownCast(mySObject->GetGeometry());
          ProjectOnCurve.Init(curPnt2d,curGeom2d_Line);

          if (ProjectOnCurve.NbPoints() > 0) {
            objectPnt2d = ProjectOnCurve.NearestPoint();
            gce_MakeDir2d MD2d(curPnt2d,objectPnt2d);
            tempDir2d = MD2d.Value();
            checkparallel();
          }

          break;
        case CircleSketcherObject:
          break;
        case ArcSketcherObject:
          break;
        default:
          break;
      }
    }

    if (minAngle == MINANGLE)
      bestPnt2d = curPnt2d;
    else  setEdges();
  }
  else {
    gce_MakeDir2d MD2d(curPnt2d,nearestPnt2d);
    tempDir2d = MD2d.Value();
    ProjectPoint();
    setEdges();
  }

  minDistance = bestPnt2d.Distance(curPnt2d);
}
//------------------------------------------------------------------------------
Sketcher_SnapType Sketcher_SnapLinePerpendicular::GetSnapType()
{
  return SnapPerpendicular;
}
//------------------------------------------------------------------------------
void Sketcher_SnapLinePerpendicular::DrawRelation()
{
  myPerRelation->SetFirstShape(FirstEdge);
  myPerRelation->SetSecondShape(SecondEdge);

  if (firstDisplay) myContext->Display(myPerRelation,0,-1);
  else myContext->Redisplay(myPerRelation);
}
//------------------------------------------------------------------------------
void Sketcher_SnapLinePerpendicular::EraseRelation()
{
  myContext->Remove(myPerRelation);
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_SnapLinePerpendicular,Sketcher_SnapLine)
IMPLEMENT_STANDARD_RTTI(Sketcher_SnapLinePerpendicular)
IMPLEMENT_STANDARD_TYPE(Sketcher_SnapLinePerpendicular)
IMPLEMENT_STANDARD_SUPERTYPE(Sketcher_SnapLine)
IMPLEMENT_STANDARD_SUPERTYPE(Sketcher_Snap)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Sketcher_SnapLine)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Sketcher_Snap)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_SnapLinePerpendicular)
//------------------------------------------------------------------------------
