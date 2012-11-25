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
#include "Sketcher_Snap.hxx"
//------------------------------------------------------------------------------
#include <Geom_CartesianPoint.hxx>
#include <Geom_Plane.hxx>
#include <Geom2d_CartesianPoint.hxx>
#include <ElCLib.hxx>
#include <AIS_InteractiveContext.hxx>
#include <AIS_Point.hxx>

#include <gp_Pln.hxx>
//------------------------------------------------------------------------------
Sketcher_Snap::Sketcher_Snap()
    :   curCoordinateSystem(gp::XOY()),
    FirstEdge(),SecondEdge()
{
  curPnt2d      = gp::Origin2d();
  objectPnt2d   = gp::Origin2d();
  bestPnt2d     = gp::Origin2d();

  findbestPnt2d = Standard_False;
  firstDisplay  = Standard_True;

  myGeom_Point = new Geom_CartesianPoint(gp::Origin());
  myAIS_Point  = new AIS_Point(myGeom_Point);

  minimumSnapDistance = MINIMUMSNAP;

  minDistance = 0;
  curDistance = 0;

  curGeom2d_Point = new Geom2d_CartesianPoint(curPnt2d);
  myPlane         = new Geom_Plane(curCoordinateSystem);
}
//------------------------------------------------------------------------------
Sketcher_Snap::~Sketcher_Snap()
{
}
//------------------------------------------------------------------------------
void Sketcher_Snap::SetContext(Handle(AIS_InteractiveContext)& theContext)
{
  myContext = theContext;
}
//------------------------------------------------------------------------------
void Sketcher_Snap::SetData(Handle(TColStd_HSequenceOfTransient)& thedata)
{
  data = thedata;
}
//------------------------------------------------------------------------------
void Sketcher_Snap::SetAx3(const gp_Ax3 &theAx3)
{
  curCoordinateSystem = theAx3;
  myPlane->SetPln(gp_Pln(curCoordinateSystem));
}
//------------------------------------------------------------------------------
void Sketcher_Snap::SetMinDistance(const Standard_Real& aPrecise)
{
  minimumSnapDistance = aPrecise;
}
//------------------------------------------------------------------------------
gp_Pnt2d Sketcher_Snap::MouseInputEvent(const gp_Pnt2d& tempPnt2d)
{
  curPnt2d = tempPnt2d;
  SelectEvent();
  EraseSnap();
  return bestPnt2d;
}
//------------------------------------------------------------------------------
gp_Pnt2d Sketcher_Snap::MouseMoveEvent(const gp_Pnt2d& tempPnt2d)
{
  curPnt2d = tempPnt2d;
  SelectEvent();

  if (findbestPnt2d) {
    myGeom_Point->SetPnt(ElCLib::To3d(curCoordinateSystem.Ax2(),bestPnt2d));
    myAIS_Point->SetComponent(myGeom_Point);

    if (firstDisplay) {
      myContext->Display(myAIS_Point,0,-1);
      DrawRelation();
      firstDisplay = Standard_False;
    }
    else {
      myContext->Redisplay(myAIS_Point);
      DrawRelation();
    }
  }
  else {
    myContext->Remove(myAIS_Point);
    EraseRelation();
    firstDisplay = Standard_True;
  }

  return bestPnt2d;
}
//------------------------------------------------------------------------------
void Sketcher_Snap::EraseSnap()
{
  firstDisplay = Standard_True;
  myContext->Remove(myAIS_Point);
  EraseRelation();
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher_Snap::AnalyserEvent(const gp_Pnt2d& tempPnt2d, gp_Pnt2d& newPnt2d, Standard_Real& dist, Standard_Integer& type)
{
  curPnt2d = tempPnt2d;
  SelectEvent();
  newPnt2d = bestPnt2d;
  dist = minDistance;
  type = (Standard_Integer)GetSnapType();
  return findbestPnt2d;
}
//------------------------------------------------------------------------------
void Sketcher_Snap::DrawRelation()
{
  myContext->Hilight(curHilightedObj, Standard_True);
}
//------------------------------------------------------------------------------
void Sketcher_Snap::EraseRelation()
{
  myContext->Unhilight(curHilightedObj, Standard_True);
}
//------------------------------------------------------------------------------
void Sketcher_Snap::setFirstPnt(const gp_Pnt2d& p)
{
}
//------------------------------------------------------------------------------
void Sketcher_Snap::setFirstPnt(const gp_Pnt2d& p,TangentType ttype)
{
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher_Snap::countProject()
{
  if (ProjectOnCurve.NbPoints() > 0) {
    objectPnt2d = ProjectOnCurve.NearestPoint();
    return count();
  }
  else return Standard_False;
}
//------------------------------------------------------------------------------
Standard_Boolean Sketcher_Snap::count()
{
  curDistance = objectPnt2d.Distance(curPnt2d);

  if (minDistance > curDistance) {
    minDistance = curDistance;
    return Standard_True;
  }
  else return Standard_False;
}
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_Snap,MMgt_TShared)
IMPLEMENT_STANDARD_RTTI(Sketcher_Snap)
IMPLEMENT_STANDARD_TYPE(Sketcher_Snap)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_Snap)
//------------------------------------------------------------------------------
