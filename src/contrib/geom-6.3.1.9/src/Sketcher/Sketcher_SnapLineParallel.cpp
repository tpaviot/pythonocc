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
#include "Sketcher_SnapLineParallel.hxx"
//------------------------------------------------------------------------------
#include <AIS_ParallelRelation.hxx>
#include <Geom2d_CartesianPoint.hxx>
#include <TColStd_HSequenceOfTransient.hxx>
#include <Geom2d_Line.hxx>
#include <gp_Lin2d.hxx>
#include <AIS_InteractiveContext.hxx>
//------------------------------------------------------------------------------
Sketcher_SnapLineParallel::Sketcher_SnapLineParallel()
{
  myParRelation = new AIS_ParallelRelation(FirstEdge,SecondEdge,myPlane);
}
//------------------------------------------------------------------------------
Sketcher_SnapLineParallel::~Sketcher_SnapLineParallel()
{
}
//------------------------------------------------------------------------------
void Sketcher_SnapLineParallel::SelectEvent()
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
          tempDir2d = curGeom2d_Line->Lin2d().Direction();
          checkparallel();
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
    else setEdges();
  }
  else {
    ProjectPoint();
    setEdges();
  }
}
//------------------------------------------------------------------------------
Sketcher_SnapType Sketcher_SnapLineParallel::GetSnapType()
{
  return SnapParallel;
}
//------------------------------------------------------------------------------
void Sketcher_SnapLineParallel::DrawRelation()
{
  myParRelation->SetFirstShape(FirstEdge);
  myParRelation->SetSecondShape(SecondEdge);

  if (firstDisplay) myContext->Display(myParRelation,0,-1);
  else myContext->Redisplay(myParRelation);
}
//------------------------------------------------------------------------------
void Sketcher_SnapLineParallel::EraseRelation()
{
  myContext->Remove(myParRelation);
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_SnapLineParallel,Sketcher_SnapLine)
IMPLEMENT_STANDARD_RTTI(Sketcher_SnapLineParallel)
IMPLEMENT_STANDARD_TYPE(Sketcher_SnapLineParallel)
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
IMPLEMENT_STANDARD_TYPE_END(Sketcher_SnapLineParallel)
//------------------------------------------------------------------------------
