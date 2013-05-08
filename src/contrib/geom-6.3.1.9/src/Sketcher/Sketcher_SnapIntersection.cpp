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
#include "Sketcher_SnapIntersection.hxx"
//------------------------------------------------------------------------------
#include <TColStd_HSequenceOfTransient.hxx>
#include <Geom2d_CartesianPoint.hxx>
#include <ElCLib.hxx>
#include <AIS_InteractiveContext.hxx>
//------------------------------------------------------------------------------
Sketcher_SnapIntersection::Sketcher_SnapIntersection()
{
  cur1Geom2d_Line = new Geom2d_Line(gp::Origin2d(),gp::DX2d());
  cur2Geom2d_Line = new Geom2d_Line(gp::Origin2d(),gp::DX2d());
  bpu = 0;
}
//------------------------------------------------------------------------------
Sketcher_SnapIntersection::~Sketcher_SnapIntersection()
{
}
//------------------------------------------------------------------------------
void Sketcher_SnapIntersection::SelectEvent()
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
          curHilightedObj2 = curHilightedObj;
        }

        break;
      case LineSketcherObject:
        cur1Sketcher_Edge = Handle(Sketcher_Edge)::DownCast(mySObject->GetGeometry());
        cur1Geom2d_Line->SetLin2d(cur1Sketcher_Edge->Lin2d());
        cur1Geom2d_Curve = cur1Geom2d_Line;
        findSecondObject(i);
        break;
      case CircleSketcherObject:
      case ArcSketcherObject:
        cur1Geom2d_Curve = Handle(Geom2d_Curve)::DownCast(mySObject->GetGeometry());
        findSecondObject(i);
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
void Sketcher_SnapIntersection::findSecondObject(Standard_Integer start)
{
  for (Standard_Integer j=start+1; j<=data->Length(); j++) {
    secondSObject = Handle(Sketcher_Object)::DownCast(data->Value(j));
    myGeometryType = secondSObject->GetGeometryType();

    switch (myGeometryType) {
      case PointSketcherObject:
        break;
      case LineSketcherObject: {
          cur2Sketcher_Edge = Handle(Sketcher_Edge)::DownCast(secondSObject->GetGeometry());
          cur2Geom2d_Line->SetLin2d(cur2Sketcher_Edge->Lin2d());
          my2dAPI_InterCurveCurve.Init(cur1Geom2d_Curve,cur2Geom2d_Line,1.0e-12);

          for (Standard_Integer k=1; k<=my2dAPI_InterCurveCurve.NbPoints(); k++) {
            objectPnt2d = my2dAPI_InterCurveCurve.Point(k);
            curDistance = objectPnt2d.Distance(curPnt2d);

            if (minDistance > curDistance) {
              bpu = ElCLib::Parameter(cur2Sketcher_Edge->Lin2d(),objectPnt2d);

              if (bpu > cur2Sketcher_Edge->StartParameter() &&  bpu < cur2Sketcher_Edge->EndParameter()) {
                if (cur1Geom2d_Curve->IsKind(STANDARD_TYPE(Geom2d_Line))) {
                  bpu = ElCLib::Parameter(cur1Sketcher_Edge->Lin2d(),objectPnt2d);

                  if (bpu > cur1Sketcher_Edge->StartParameter() &&  bpu < cur1Sketcher_Edge->EndParameter()) {
                    bestPnt2d = objectPnt2d;
                    minDistance = curDistance;
                    curHilightedObj = mySObject->GetAIS_Object();
                    curHilightedObj2 = secondSObject->GetAIS_Object();
                  }
                }
                else {
                  bestPnt2d = objectPnt2d;
                  minDistance = curDistance;
                  curHilightedObj = mySObject->GetAIS_Object();
                  curHilightedObj2 = secondSObject->GetAIS_Object();
                }
              }
            }
          }
        }
        break;
      case CircleSketcherObject:
      case ArcSketcherObject: {
          cur2Geom2d_Curve = Handle(Geom2d_Curve)::DownCast(secondSObject->GetGeometry());
          my2dAPI_InterCurveCurve.Init(cur1Geom2d_Curve,cur2Geom2d_Curve,1.0e-12);

          for (Standard_Integer k=1; k<=my2dAPI_InterCurveCurve.NbPoints(); k++) {
            objectPnt2d = my2dAPI_InterCurveCurve.Point(k);
            curDistance = objectPnt2d.Distance(curPnt2d);

            if (minDistance > curDistance) {
              if (cur1Geom2d_Curve->IsKind(STANDARD_TYPE(Geom2d_Line))) {
                bpu = ElCLib::Parameter(cur1Sketcher_Edge->Lin2d(),objectPnt2d);

                if (bpu > cur1Sketcher_Edge->StartParameter() &&  bpu < cur1Sketcher_Edge->EndParameter()) {
                  bestPnt2d = objectPnt2d;
                  minDistance = curDistance;
                  curHilightedObj = mySObject->GetAIS_Object();
                  curHilightedObj2 = secondSObject->GetAIS_Object();
                }
              }
              else {
                bestPnt2d = objectPnt2d;
                minDistance = curDistance;
                curHilightedObj = mySObject->GetAIS_Object();
                curHilightedObj2 = secondSObject->GetAIS_Object();
              }
            }
          }
        }
        break;
      default:
        break;
    }
  }
}
//------------------------------------------------------------------------------
Sketcher_SnapType Sketcher_SnapIntersection::GetSnapType()
{
  return SnapIntersection;
}
//------------------------------------------------------------------------------
void Sketcher_SnapIntersection::DrawRelation()
{
  myContext->SetSelected(curHilightedObj);
  myContext->SetSelected(curHilightedObj2);
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_SnapIntersection,Sketcher_Snap)
IMPLEMENT_STANDARD_RTTI(Sketcher_SnapIntersection)
IMPLEMENT_STANDARD_TYPE(Sketcher_SnapIntersection)
IMPLEMENT_STANDARD_SUPERTYPE(Sketcher_Snap)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Sketcher_Snap)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_SnapIntersection)
//------------------------------------------------------------------------------
