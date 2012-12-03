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
#include "Sketcher_SnapEnd.hxx"
//------------------------------------------------------------------------------
#include <TColStd_HSequenceOfTransient.hxx>
#include <Geom2d_CartesianPoint.hxx>
//------------------------------------------------------------------------------
Sketcher_SnapEnd::Sketcher_SnapEnd()
{
}
//------------------------------------------------------------------------------
Sketcher_SnapEnd::~Sketcher_SnapEnd()
{
}
//------------------------------------------------------------------------------
void Sketcher_SnapEnd::SelectEvent()
{
  findbestPnt2d = Standard_False;
  minDistance = minimumSnapDistance;

  for (Standard_Integer i=1; i<=data->Length(); i++) {
    mySObject = Handle(Sketcher_Object)::DownCast(data->Value(i));
    myGeometryType = mySObject->GetGeometryType();

    switch (myGeometryType) {
      case PointSketcherObject:
        curGeom2d_Point = Handle(Geom2d_CartesianPoint)::DownCast(mySObject->GetGeometry());
        objectPnt2d = curGeom2d_Point->Pnt2d();

        if (count()) {
          bestPnt2d = objectPnt2d;
          curHilightedObj = mySObject->GetAIS_Object();
        }

        break;
      case LineSketcherObject:
        curSketcher_Edge = Handle(Sketcher_Edge)::DownCast(mySObject->GetGeometry());
        objectPnt2d = curSketcher_Edge->GetStart_Pnt();

        if (count()) {
          bestPnt2d = objectPnt2d;
          curHilightedObj = mySObject->GetAIS_Object();
        }

        objectPnt2d = curSketcher_Edge->GetEnd_Pnt();

        if (count()) {
          bestPnt2d = objectPnt2d;
          curHilightedObj = mySObject->GetAIS_Object();
        }

        break;
      case CircleSketcherObject:
        break;
      case ArcSketcherObject:
        curSketcher_Arc = Handle(Sketcher_Arc)::DownCast(mySObject->GetGeometry());
        objectPnt2d = curSketcher_Arc->FirstPnt();

        if (count()) {
          bestPnt2d = objectPnt2d;
          curHilightedObj = mySObject->GetAIS_Object();
        }

        objectPnt2d = curSketcher_Arc->LastPnt();

        if (count()) {
          bestPnt2d = objectPnt2d;
          curHilightedObj = mySObject->GetAIS_Object();
        }

        break;
      default:
        break;
    }
  }

  if (minDistance == minimumSnapDistance)
    bestPnt2d = curPnt2d;
  else findbestPnt2d = Standard_True;
}
//------------------------------------------------------------------------------
Sketcher_SnapType Sketcher_SnapEnd::GetSnapType()
{
  return SnapEnd;
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_SnapEnd,Sketcher_Snap)
IMPLEMENT_STANDARD_RTTI(Sketcher_SnapEnd)
IMPLEMENT_STANDARD_TYPE(Sketcher_SnapEnd)
IMPLEMENT_STANDARD_SUPERTYPE(Sketcher_Snap)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Sketcher_Snap)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_SnapEnd)
//------------------------------------------------------------------------------
