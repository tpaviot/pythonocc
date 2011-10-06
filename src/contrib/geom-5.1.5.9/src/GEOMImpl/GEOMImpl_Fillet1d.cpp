//  Copyright (C) 2007-2010  CEA/DEN, EDF R&D, OPEN CASCADE
//
//  This library is free software; you can redistribute it and/or
//  modify it under the terms of the GNU Lesser General Public
//  License as published by the Free Software Foundation; either
//  version 2.1 of the License.
//
//  This library is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//  Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public
//  License along with this library; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
//  See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//

//  File   : GEOMImpl_Fillet1d.cxx
//  Module : GEOMImpl
//
#include "GEOMImpl_Fillet1d.hxx"

#include <BRep_Tool.hxx>
#include <BRepAdaptor_Curve.hxx>
#include <BRepBuilderAPI_MakeEdge.hxx>
#include <ElCLib.hxx>
#include <ElSLib.hxx>
#include <gp_Circ.hxx>
#include <Geom2d_Line.hxx>
#include <Geom2dAPI_ProjectPointOnCurve.hxx>
#include <Geom2dAPI_InterCurveCurve.hxx>
#include <GeomAPI_ProjectPointOnCurve.hxx>
#include <GeomProjLib.hxx>
#include <Geom_Circle.hxx>
#include <Precision.hxx>
#include <TColStd_ListIteratorOfListOfReal.hxx>

/**
 * class GEOMImpl_Fillet1d
 */


//=======================================================================
//function : Constructor
//purpose  : 
//=======================================================================
GEOMImpl_Fillet1d::GEOMImpl_Fillet1d(const TopoDS_Edge& theEdge1,
                                     const TopoDS_Edge& theEdge2,
                                     const gp_Pln& thePlane)
: myEdgesExchnged( Standard_False )
{
  myPlane = new Geom_Plane(thePlane);

  BRepAdaptor_Curve aBAC1(theEdge1);
  BRepAdaptor_Curve aBAC2(theEdge2);
  if (aBAC1.GetType() < aBAC2.GetType()) 
  { // first curve must be more complicated
    myEdge1 = theEdge2;
    myEdge2 = theEdge1;
    myEdgesExchnged = Standard_True;
  }   
  else
  {
    myEdge1 = theEdge1;
    myEdge2 = theEdge2;
  }

  Handle(Geom_Curve) aCurve1 = BRep_Tool::Curve(myEdge1, myStart1, myEnd1);
  Handle(Geom_Curve) aCurve2 = BRep_Tool::Curve(myEdge2, myStart2, myEnd2);

  myCurve1 = GeomProjLib::Curve2d(aCurve1, myStart1, myEnd1, myPlane);
  myCurve2 = GeomProjLib::Curve2d(aCurve2, myStart2, myEnd2, myPlane);

  while (myCurve1->IsPeriodic() && myStart1 >= myEnd1)
    myEnd1 += myCurve1->Period();
  while (myCurve2->IsPeriodic() && myStart2 >= myEnd2)
    myEnd2 += myCurve2->Period();
 
  if (aBAC1.GetType() == aBAC2.GetType()) 
  {
    if (myEnd2 - myStart2 < myEnd1 - myStart1) 
    { // first curve must be parametrically shorter
      TopoDS_Edge anEdge = myEdge1;
      myEdge1 = myEdge2;
      myEdge2 = anEdge;
      Handle(Geom2d_Curve) aCurve = myCurve1;
      myCurve1 = myCurve2;
      myCurve2 = aCurve;
      Standard_Real a = myStart1;
      myStart1 = myStart2;
      myStart2 = a;
      a = myEnd1;
      myEnd1 = myEnd2;
      myEnd2 = a;
      myEdgesExchnged = Standard_True;
    }
  }
}

//=======================================================================
//function : isRadiusIntersected
//purpose  : local function
//=======================================================================
static Standard_Boolean isRadiusIntersected(const Handle(Geom2d_Curve)& theCurve,
                                            const gp_Pnt2d theStart,
                                            const gp_Pnt2d theEnd,
                                            const Standard_Boolean theStartConnected) 
{
  const Standard_Real aTol = Precision::Confusion();
  const Standard_Real anAngTol = Precision::Angular();
  Geom2dAPI_InterCurveCurve anInter(theCurve, new Geom2d_Line(theStart,
    gp_Dir2d(gp_Vec2d(theStart, theEnd))), aTol);
  Standard_Integer a;
  gp_Pnt2d aPoint;
  for(a = anInter.NbPoints(); a > 0; a--) 
  {
    aPoint = anInter.Point(a);
    if ( aPoint.Distance(theStart) < aTol && !theStartConnected )
      return Standard_True;
    if (aPoint.Distance(theEnd) < aTol * 200)
      return Standard_True;
    if (gp_Vec2d(aPoint, theStart).IsOpposite(gp_Vec2d(aPoint, theEnd), anAngTol)) 
      return Standard_True;
  }
  Handle(Geom2d_Curve) aCurve;
  for(a = anInter.NbSegments(); a > 0; a--) 
  {
    anInter.Segment(a, aCurve);
    aPoint = aCurve->Value(aCurve->FirstParameter());
    if (aPoint.Distance(theStart) < aTol) 
      if (!theStartConnected) 
        return Standard_True;
    if (aPoint.Distance(theEnd) < aTol) 
      return Standard_True;
    if (gp_Vec2d(aPoint, theStart).IsOpposite(gp_Vec2d(aPoint, theEnd), anAngTol)) 
      return Standard_True;
    aPoint = aCurve->Value(aCurve->LastParameter());
    if (aPoint.Distance(theStart) < aTol) 
      if (!theStartConnected) 
        return Standard_True;
    if (aPoint.Distance(theEnd) < aTol) 
      return Standard_True;
    if (gp_Vec2d(aPoint, theStart).IsOpposite(gp_Vec2d(aPoint, theEnd), anAngTol)) 
      return Standard_True;
  }
  return Standard_False;
}


//=======================================================================
//function : fillPoint
//purpose  : 
//=======================================================================
void GEOMImpl_Fillet1d::fillPoint(GEOMImpl_Fillet1dPoint* thePoint) 
{
  gp_Pnt2d aPoint;
  gp_Vec2d aVec;
  const Standard_Real aTol = Precision::Confusion();
  myCurve1->D1(thePoint->GetParam(), aPoint, aVec);
  if (aVec.SquareMagnitude() < aTol) 
    return;
  
  gp_Vec2d aPerp(((myStartSide)?-1:1) * aVec.Y(), ((myStartSide)?1:-1) * aVec.X());
  aPerp.Normalize();
  aPerp.Multiply(myRadius);
  gp_Pnt2d aCenter = aPoint.Translated(aPerp);
  thePoint->SetCenter(aCenter);

  // on the intersection point
  Standard_Boolean aValid = Standard_True;
  Geom2dAPI_ProjectPointOnCurve aProjInt(aPoint, myCurve2);
  if (aProjInt.NbPoints() && aPoint.Distance(aProjInt.NearestPoint()) < aTol) 
    aValid = Standard_False;
  else 
    aValid = !isRadiusIntersected(myCurve2, aPoint, aCenter, Standard_True);
  
  Geom2dAPI_ProjectPointOnCurve aProj(aCenter, myCurve2);
  Standard_Integer a, aNB = aProj.NbPoints();
  for(a = aNB; a > 0; a--) 
  {
    if (aPoint.Distance(aProj.Point(a)) < aTol) 
      continue;
    
    Standard_Boolean aValid2 = aValid;
    if (aValid2) 
      aValid2 = !isRadiusIntersected(myCurve1, aCenter, aProj.Point(a), Standard_False);

    // checking the right parameter
    Standard_Real aParam = aProj.Parameter(a);
    while(myCurve2->IsPeriodic() && aParam < myStart2)
      aParam += myCurve2->Period();

    thePoint->AddValue(aProj.Distance(a) * aProj.Distance(a) - myRadius * myRadius,
                       (aParam >= myStart2 && aParam <= myEnd2 && aValid2));
    if (fabs(fabs(aProj.Distance(a)) - myRadius) < aTol)
      thePoint->SetParam2(aParam);
  }
}

//=======================================================================
//function : fillDiff
//purpose  : 
//=======================================================================
void GEOMImpl_Fillet1d::fillDiff(GEOMImpl_Fillet1dPoint* thePoint, Standard_Real theDiffStep, Standard_Boolean theFront) 
{
  GEOMImpl_Fillet1dPoint* aDiff =
    new GEOMImpl_Fillet1dPoint(thePoint->GetParam() + (theFront?(theDiffStep):(-theDiffStep)));
  fillPoint(aDiff);
  if (!thePoint->ComputeDifference(aDiff))
  {
    aDiff->SetParam(thePoint->GetParam() + (theFront?(-theDiffStep):(theDiffStep)));
    fillPoint(aDiff);
    thePoint->ComputeDifference(aDiff);
  }
  delete aDiff;
}

//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================
Standard_Boolean GEOMImpl_Fillet1d::Perform(const Standard_Real theRadius) 
{
  myDegreeOfRecursion = 0;
  myResultParams.Clear();
  myResultOrientation.Clear();

  Standard_Real aNBSteps = 100;
  Geom2dAdaptor_Curve aGAC(myCurve1);
  switch (aGAC.GetType()) 
  {
    case GeomAbs_Line:
      aNBSteps = 2;
      break;
    case GeomAbs_Circle:
      aNBSteps = 4;
      break;
    case GeomAbs_Ellipse:
      aNBSteps = 5;
      break;
    case GeomAbs_BezierCurve:
    case GeomAbs_BSplineCurve:
      aNBSteps = 2 + aGAC.Degree() * aGAC.NbPoles();
      break;
    default: // unknown: maximum
      aNBSteps = 100;
  }

  myRadius = theRadius;
  Standard_Real aParam, aStep, aDStep;
  aStep = (myEnd1 - myStart1) / aNBSteps;
  aDStep = aStep/1000.;

  Standard_Integer aCycle;
  for(aCycle = 2, myStartSide = Standard_False; aCycle; myStartSide = !myStartSide, aCycle--) 
  {
    GEOMImpl_Fillet1dPoint *aLeft = NULL, *aRight = NULL;
    
    for(aParam = myStart1 + aStep; aParam < myEnd1 || fabs(myEnd1 - aParam) < Precision::Confusion(); aParam += aStep) 
    {
      if (!aLeft) 
      {
        aLeft = new GEOMImpl_Fillet1dPoint(aParam - aStep);
        fillPoint(aLeft);
        fillDiff(aLeft, aDStep, Standard_True);
      }
      
      aRight = new GEOMImpl_Fillet1dPoint(aParam);
      fillPoint(aRight);
      fillDiff(aRight, aDStep, Standard_False);
      
      aLeft->FilterPoints(aRight);
      performNewton(aLeft, aRight);
      
      delete aLeft;
      aLeft = aRight;
    }
    delete aLeft;
  }

  if (myResultParams.Extent()) 
    return Standard_True;
  
  return Standard_False;
}

//=======================================================================
//function : processPoint
//purpose  : 
//=======================================================================
Standard_Boolean GEOMImpl_Fillet1d::processPoint(GEOMImpl_Fillet1dPoint* theLeft,
                                                 GEOMImpl_Fillet1dPoint* theRight,
                                                 Standard_Real           theParameter) 
{
  if (theParameter >= theLeft->GetParam() && theParameter < theRight->GetParam()) 
  {
    Standard_Real aDX = theRight->GetParam() - theLeft->GetParam();
    if (theParameter - theLeft->GetParam() < aDX / 100.) 
    {
      theParameter = theLeft->GetParam() + aDX / 100.;
    }
    if (theRight->GetParam() - theParameter < aDX / 100.)
    {
      theParameter = theRight->GetParam() - aDX / 100.;
    }

    // Protection on infinite loop.
    myDegreeOfRecursion++;
    Standard_Real diffx = 0.001 * aDX;
    if (myDegreeOfRecursion > 1000)
    {
        diffx *= 10.0;
        if (myDegreeOfRecursion > 10000)
        {
            diffx *= 10.0;
            if (myDegreeOfRecursion > 100000)
            {
                return Standard_True;
            }
        }
    }

    GEOMImpl_Fillet1dPoint* aPoint1 = theLeft->Copy();
    GEOMImpl_Fillet1dPoint* aPoint2 = new GEOMImpl_Fillet1dPoint(theParameter);
    fillPoint(aPoint2);
    fillDiff(aPoint2, diffx, Standard_True);
    
    aPoint1->FilterPoints(aPoint2);
    performNewton(aPoint1, aPoint2);
    aPoint2->FilterPoints(theRight);
    performNewton(aPoint2, theRight);

    delete aPoint1;
    delete aPoint2;
    return Standard_True;
  }

  return Standard_False;
}

//=======================================================================
//function : performNewton
//purpose  : 
//=======================================================================
void GEOMImpl_Fillet1d::performNewton(GEOMImpl_Fillet1dPoint* theLeft,
                                      GEOMImpl_Fillet1dPoint* theRight)
{
  Standard_Integer a;
  // check the left: if this is solution store it and remove it from the list of researching points of theLeft
  a = theLeft->HasSolution(myRadius);
  if (a) 
  {
    if (theLeft->IsValid(a)) 
    {
      myResultParams.Append(theLeft->GetParam());
      myResultOrientation.Append(myStartSide);
    }
    return;
  }

  Standard_Real aDX = theRight->GetParam() - theLeft->GetParam();
  if ( aDX < Precision::Confusion() / 1000000.) 
  {
    a = theRight->HasSolution(myRadius);
    if (a)
      if (theRight->IsValid(a)) 
      {
        myResultParams.Append(theRight->GetParam());
        myResultOrientation.Append(myStartSide);
      }
    return;
  }

  for(a = 1; a <= theLeft->GetNBValues(); a++) 
  {
    Standard_Integer aNear = theLeft->GetNear(a);
    
    Standard_Real aA = (theRight->GetDiff(aNear) - theLeft->GetDiff(a)) / aDX;
    Standard_Real aB = theLeft->GetDiff(a) - aA * theLeft->GetParam();
    Standard_Real aC = theLeft->GetValue(a) - theLeft->GetDiff(a) * theLeft->GetParam() + 
                       aA * theLeft->GetParam() * theLeft->GetParam() / 2.0;
    Standard_Real aDet = aB * aB - 2.0 * aA * aC;

    if ( fabs(aDet) < gp::Resolution() )
      continue;
    
    if (fabs(aA) < Precision::Confusion()) 
    { // linear case
      if (fabs(aB) > 10e-20) 
      {
        Standard_Real aX0 = - aC / aB; // use extremum
        if (aX0 > theLeft->GetParam() && aX0 < theRight->GetParam())
          processPoint(theLeft, theRight, aX0);
      }
      else 
      {
        processPoint(theLeft, theRight, theLeft->GetParam() + aDX / 2.0); // linear division otherwise
      }
    } 
    else
    {
      if (fabs(aB) > fabs(aDet * 1000000.)) 
      {  // possible floating point operations accurancy errors
        processPoint(theLeft, theRight, theLeft->GetParam() + aDX / 2.0); // linear division otherwise
      } 
      else
      {
        if (aDet > 0) 
        { // two solutions
          aDet = sqrt(aDet);
          Standard_Boolean aRes = processPoint(theLeft, theRight, (- aB + aDet) / aA);
          if (!aRes) 
            aRes = processPoint(theLeft, theRight, (- aB - aDet) / aA);
          if (!aRes) 
            processPoint(theLeft, theRight, theLeft->GetParam() + aDX / 2.0); // linear division otherwise
        } 
        else 
        {
          Standard_Real aX0 = - aB / aA; // use extremum
          if (aX0 > theLeft->GetParam() && aX0 < theRight->GetParam())
            processPoint(theLeft, theRight, aX0);
          else 
            processPoint(theLeft, theRight, theLeft->GetParam() + aDX / 2.0); // linear division otherwise
        }
      }
    }
  }
}

//=======================================================================
//function : Result
//purpose  : 
//=======================================================================
TopoDS_Edge GEOMImpl_Fillet1d::Result(const gp_Pnt& thePoint,
                                      TopoDS_Edge& theEdge1,
                                      TopoDS_Edge& theEdge2) 
{
  TopoDS_Edge aResult;
  gp_Pnt2d aTargetPoint2d;
  Standard_Real aX, aY;
  ElSLib::PlaneParameters(myPlane->Pln().Position(), thePoint, aX, aY);
  aTargetPoint2d.SetCoord(aX, aY);
   
  // choose the nearest circle
  Standard_Real aDistance, aP;
  GEOMImpl_Fillet1dPoint *aNearest;
  Standard_Integer a;
  TColStd_ListIteratorOfListOfReal anIter(myResultParams);
  for(aNearest = NULL, a = 1; anIter.More(); anIter.Next(), a++) 
  {
    myStartSide = (myResultOrientation.Value(a)) ? Standard_True : Standard_False;
    GEOMImpl_Fillet1dPoint *aPoint = new GEOMImpl_Fillet1dPoint(anIter.Value());
    fillPoint(aPoint);
    if (!aPoint->HasSolution(myRadius)) 
      continue;
    aP = fabs(aPoint->GetCenter().Distance(aTargetPoint2d) - myRadius);
    if (!aNearest || aP < aDistance) 
    {
      aNearest = aPoint;
      aDistance = aP;
    } 
    else 
    {
      delete aPoint;
    }
   }
   
  if (!aNearest) 
     return aResult;
   
  // create circle edge
  gp_Pnt aCenter = ElSLib::PlaneValue(aNearest->GetCenter().X(),
                                      aNearest->GetCenter().Y(),
                                      myPlane->Pln().Position());
  Handle(Geom_Circle) aCircle =
    new Geom_Circle(gp_Ax2(aCenter, myPlane->Pln().Axis().Direction()), myRadius);
  gp_Pnt2d aPoint2d1, aPoint2d2;
  myCurve1->D0(aNearest->GetParam(), aPoint2d1);
  myCurve2->D0(aNearest->GetParam2(), aPoint2d2);
  gp_Pnt aPoint1 = ElSLib::PlaneValue(aPoint2d1.X(), aPoint2d1.Y(), myPlane->Pln().Position());
  gp_Pnt aPoint2 = ElSLib::PlaneValue(aPoint2d2.X(), aPoint2d2.Y(), myPlane->Pln().Position());

  GeomAPI_ProjectPointOnCurve aProj(thePoint, aCircle);
  Standard_Real aTarGetParam = aProj.LowerDistanceParameter();
  gp_Pnt aPointOnCircle = aProj.NearestPoint();

  // Check extrema point manually, because there is a bug in Open CASCADE
  //  in calculation of nearest point to a circle near the parameter 0.0
  gp_Pnt p0 = ElCLib::Value(0.0, aCircle->Circ());
  if (p0.Distance(thePoint) < aPointOnCircle.Distance(thePoint))
  {
     aTarGetParam = 0.0;
     aPointOnCircle = p0;
  }

  aProj.Perform(aPoint1);
  Standard_Real aParam1 = aProj.LowerDistanceParameter();
    aProj.Perform(aPoint2);
  Standard_Real aParam2 = aProj.LowerDistanceParameter();
  Standard_Boolean aIsOut = ((aParam1 < aTarGetParam && aParam2 < aTarGetParam) || 
                             (aParam1 > aTarGetParam && aParam2 > aTarGetParam));
  if (aParam1 > aParam2) 
    aIsOut = !aIsOut;
  BRepBuilderAPI_MakeEdge aBuilder(aCircle->Circ(),
                                   aIsOut ? aParam2 : aParam1,
                                   aIsOut? aParam1 : aParam2);
  aResult = aBuilder.Edge();

  // divide edges
  Standard_Real aStart, anEnd;
  Handle(Geom_Curve) aCurve = BRep_Tool::Curve(myEdge1, aStart, anEnd);
  gp_Vec aDir;
  aCurve->D1(aNearest->GetParam(), aPoint1, aDir);

  gp_Vec aCircleDir;
  aCircle->D1(aParam1, aPoint1, aCircleDir);
  if ((aCircleDir.Angle(aDir) > PI / 2.0) ^ aIsOut)
    aStart = aNearest->GetParam();
  else
    anEnd = aNearest->GetParam();

  if (fabs(aStart - anEnd) > Precision::Confusion())
  {
      //Divide edge
      BRepBuilderAPI_MakeEdge aDivider1(aCurve, aStart, anEnd);
      if (myEdgesExchnged) 
        theEdge2 = aDivider1.Edge();
      else 
        theEdge1 = aDivider1.Edge();
  }

  aCurve = BRep_Tool::Curve(myEdge2, aStart, anEnd);
  aCurve->D1(aNearest->GetParam2(), aPoint2, aDir);
   
  aCircle->D1(aParam2, aPoint2, aCircleDir);
  if ((aCircleDir.Angle(aDir) > PI / 2.0) ^ (!aIsOut))
    aStart = aNearest->GetParam2();
  else
    anEnd = aNearest->GetParam2();

  if (fabs(aStart - anEnd) > Precision::Confusion())
  {
      BRepBuilderAPI_MakeEdge aDivider2(aCurve, aStart, anEnd);
      if (myEdgesExchnged) 
        theEdge1 = aDivider2.Edge();
      else 
        theEdge2 = aDivider2.Edge();
  }

  delete aNearest;
  return aResult;
}

//=======================================================================
//function : AddValue
//purpose  : 
//=======================================================================
void GEOMImpl_Fillet1dPoint::AddValue(Standard_Real theValue, Standard_Boolean theValid) 
{
  Standard_Integer a;
  for(a = 1; a <= myV.Length(); a++) 
  {
    if (theValue < myV.Value(a)) 
    {
      myV.InsertBefore(a, theValue);
      myValid.InsertBefore(a, (Standard_Integer)theValid);
      return;
    }
  }
  myV.Append(theValue);
  myValid.Append((Standard_Integer)theValid);
}

//=======================================================================
//function : ComputeDifference
//purpose  : 
//=======================================================================
Standard_Boolean GEOMImpl_Fillet1dPoint::ComputeDifference(GEOMImpl_Fillet1dPoint* thePoint) 
{
  Standard_Integer a;
  Standard_Boolean aDiffsSet = (myD.Length() != 0);
  Standard_Real aDX = thePoint->GetParam() - myParam, aDY;
  if (thePoint->myV.Length() == myV.Length()) 
  { // absolutely the same points
    for(a = 1; a <= myV.Length(); a++) 
    {
      aDY = thePoint->myV.Value(a) - myV.Value(a);
      if ( aDiffsSet ) 
        myD.SetValue(a, fabs(aDX) > gp::Resolution() ? (aDY/aDX) : 0);
      else
        myD.Append( fabs(aDX) > gp::Resolution() ? (aDY/aDX) : 0);
    }
    return Standard_True;
  }
  // between the diffeerent points searching for nearest analogs
  Standard_Integer b;
  for(a = 1; a <= myV.Length(); a++) 
  {
    for(b = 1; b <= thePoint->myV.Length(); b++) 
    {
      if (b == 1 || fabs(thePoint->myV.Value(b) - myV.Value(a)) < fabs(aDY))
        aDY = thePoint->myV.Value(b) - myV.Value(a);
    }
    if (aDiffsSet) 
    {
      if ( fabs(aDX) > gp::Resolution() && fabs(aDY / aDX) < fabs(myD.Value(a)))
        myD.SetValue(a, aDY / aDX);
      else
        myD.SetValue(a, 0);
    } 
    else 
    {
      myD.Append( fabs(aDX) > gp::Resolution() ? aDY/aDX : 0);
    }
  }
  
  return Standard_False;
}

//=======================================================================
//function : FilterPoints
//purpose  : 
//=======================================================================
void GEOMImpl_Fillet1dPoint::FilterPoints(GEOMImpl_Fillet1dPoint* thePoint) 
{
  Standard_Integer a, b;
  TColStd_SequenceOfReal aDiffs;
  Standard_Real aY, aY2, aDX = thePoint->GetParam() - myParam;
  for(a = 1; a <= myV.Length(); a++) 
  {
    // searching for near point from thePoint
    Standard_Integer aNear = 0;
    Standard_Real aDiff = aDX * 10000.;
    aY = myV.Value(a) + myD.Value(a) * aDX;
    for(b = 1; b <= thePoint->myV.Length(); b++) 
    {
      // calculate hypothesis value of the Y2 with the constant first and second derivative
      aY2 = aY + aDX * (thePoint->myD.Value(b) - myD.Value(a)) / 2.0;
      if (aNear == 0 || fabs(aY2 - thePoint->myV.Value(b)) < fabs(aDiff)) 
      {
        aNear = b;
        aDiff = aY2 - thePoint->myV.Value(b);
      }
    }//for b...

    if (aNear) 
    {
      if (myV.Value(a) * thePoint->myV.Value(aNear) > 0) 
      {// the same sign at the same sides of the interval
        if (myV.Value(a) * myD.Value(a) > 0) 
        {
          if (fabs(myD.Value(a)) > Precision::Confusion()) 
            aNear = 0;
        } 
        else 
        {
          if (fabs(myV.Value(a)) > fabs(thePoint->myV.Value(aNear)))
            if (thePoint->myV.Value(aNear) * thePoint->myD.Value(aNear) < 0 &&
                fabs(thePoint->myD.Value(aNear)) > Precision::Confusion())
            {
              aNear = 0;
            }
        }
      }
    }

    if (aNear) 
    {
      if (myV.Value(a) * thePoint->myV.Value(aNear) > 0) 
      {
        if ((myV.Value(a) + myD.Value(a) * aDX) * myV.Value(a) > Precision::Confusion() &&
        (thePoint->myV.Value(aNear) + thePoint->myD.Value(aNear) * aDX) * thePoint->myV.Value(aNear) > Precision::Confusion())
        {
          aNear = 0;
        }
      }
    }
    
    if (aNear)
    {
      if (  fabs(aDX) < gp::Resolution() || fabs(aDiff / aDX) > 1.e+7) 
      {
        aNear = 0;
      }
    }

    if (aNear == 0) 
    {  // there is no near: remove it from the list
      myV.Remove(a);
      myD.Remove(a);
      myValid.Remove(a);
      a--;
    } 
    else 
    {
      Standard_Boolean aFound = Standard_False;
      for(b = 1; b <= myNear.Length(); b++) 
      {
        if (myNear.Value(b) == aNear) 
        {
          if (fabs(aDiffs.Value(b)) < fabs(aDiff)) 
          { // return this 'near'
            aFound = Standard_True;
            myV.Remove(a);
            myD.Remove(a);
            myValid.Remove(a);
            a--;
            break;
          } 
          else 
          { // remove the old 'near'
            myV.Remove(b);
            myD.Remove(b);
            myValid.Remove(b);
            myNear.Remove(b);
            aDiffs.Remove(b);
            a--;
            break;
          }
        }
      }//for b...
      if (!aFound) 
      {
        myNear.Append(aNear);
        aDiffs.Append(aDiff);
      }
    }
  }//for a...
}

//=======================================================================
//function : Copy
//purpose  : 
//=======================================================================
GEOMImpl_Fillet1dPoint* GEOMImpl_Fillet1dPoint::Copy() 
{
  GEOMImpl_Fillet1dPoint* aCopy = new GEOMImpl_Fillet1dPoint(myParam);
  Standard_Integer a;
  for(a = 1; a <= myV.Length(); a++) 
  {
    aCopy->myV.Append(myV.Value(a));
    aCopy->myD.Append(myD.Value(a));
    aCopy->myValid.Append(myValid.Value(a));
  }
  return aCopy;
}

//=======================================================================
//function : HasSolution
//purpose  : 
//=======================================================================
Standard_Integer GEOMImpl_Fillet1dPoint::HasSolution(const Standard_Real theRadius) 
{
  Standard_Integer a;
  for(a = 1; a <= myV.Length(); a++) 
  {
    if (fabs(sqrt(fabs(fabs(myV.Value(a)) + theRadius * theRadius)) - theRadius) < Precision::Confusion() / 10.) 
      return a;
  }
  return 0;
}

//=======================================================================
//function : RemoveSolution
//purpose  : 
//=======================================================================
void GEOMImpl_Fillet1dPoint::RemoveSolution(Standard_Integer theIndex)
{
  myV.Remove(theIndex);
  myD.Remove(theIndex);
  myValid.Remove(theIndex);
  myNear.Remove(theIndex);
}
