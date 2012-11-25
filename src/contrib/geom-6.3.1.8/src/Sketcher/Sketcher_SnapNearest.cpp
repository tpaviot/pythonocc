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
#include "Sketcher_SnapNearest.hxx"
//------------------------------------------------------------------------------
#include <TColStd_HSequenceOfTransient.hxx>
//------------------------------------------------------------------------------
Sketcher_SnapNearest::Sketcher_SnapNearest()
{
}
//------------------------------------------------------------------------------
Sketcher_SnapNearest::~Sketcher_SnapNearest()
{
}
//------------------------------------------------------------------------------
void Sketcher_SnapNearest::SelectEvent()
{
  findbestPnt2d = Standard_False;
  minDistance = minimumSnapDistance;

  for (Standard_Integer i=1; i<=data->Length(); i++) {
    mySObject = Handle(Sketcher_Object)::DownCast(data->Value(i));
    myGeometryType = mySObject->GetGeometryType();

    switch (myGeometryType) {
      case PointSketcherObject:
        break;
      case LineSketcherObject:
      case CircleSketcherObject:
      case ArcSketcherObject:
        curGeom2d_Curve = Handle(Geom2d_Curve)::DownCast(mySObject->GetGeometry());
        ProjectOnCurve.Init(curPnt2d,curGeom2d_Curve);

        if (countProject()) {
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
  else   findbestPnt2d = Standard_True;
}
//------------------------------------------------------------------------------
Sketcher_SnapType Sketcher_SnapNearest::GetSnapType()
{
  return SnapNearest;
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_SnapNearest,Sketcher_Snap)
IMPLEMENT_STANDARD_RTTI(Sketcher_SnapNearest)
IMPLEMENT_STANDARD_TYPE(Sketcher_SnapNearest)
IMPLEMENT_STANDARD_SUPERTYPE(Sketcher_Snap)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Sketcher_Snap)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_SnapNearest)
//------------------------------------------------------------------------------
