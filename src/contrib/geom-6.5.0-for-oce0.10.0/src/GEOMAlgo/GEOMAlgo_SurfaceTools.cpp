// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
//
// Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License.
//
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public
// License along with this library; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//

// File:        GEOMAlgo_SurfaceTools.cxx
// Created:     Thu Jan 27 11:05:16 2005
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#include <GEOMAlgo_SurfaceTools.hxx>

#include <math.h>

#include <gp_Pln.hxx>
#include <gp_Cylinder.hxx>
#include <gp_Sphere.hxx>
#include <gp_Ax1.hxx>
#include <gp_Lin.hxx>
#include <gp_Ax3.hxx>
#include <gp_Dir.hxx>
#include <gp_Ax1.hxx>
#include <gp_Vec.hxx>

#include <GeomAbs_SurfaceType.hxx>
#include <GeomAdaptor_Surface.hxx>


//=======================================================================
//function : GetState
//purpose  :
//=======================================================================
 Standard_Integer GEOMAlgo_SurfaceTools::GetState(const gp_Pnt& aP,
                                                  const GeomAdaptor_Surface& aGAS,
                                                  const Standard_Real aTol,
                                                  TopAbs_State& aState)
{
  Standard_Integer iErr;
  Standard_Real aDp, aR;
  GeomAbs_SurfaceType aType;
  gp_Sphere aSph;
  gp_Cylinder aCyl;
  gp_Pln aPln;
  //
  iErr=0;
  aState=TopAbs_UNKNOWN;
  //
  aType=aGAS.GetType();
  switch (aType) {
  case GeomAbs_Plane:
    aPln=aGAS.Plane();
    aR=0.;
    aDp=GEOMAlgo_SurfaceTools::Distance(aP, aPln);
    break;

  case GeomAbs_Cylinder:
    aCyl=aGAS.Cylinder();
    aR=aCyl.Radius();
    aDp=GEOMAlgo_SurfaceTools::Distance(aP, aCyl);
    break;

  case GeomAbs_Sphere:
    aSph=aGAS.Sphere();
    aR=aSph.Radius();
    aDp=GEOMAlgo_SurfaceTools::Distance(aP, aSph);
    break;

  default:
    iErr=1; // unprocessed surface type
    break;
  }
  //
  if (!iErr) {
    aState=TopAbs_ON;
    if (aDp>aR+aTol) {
      aState=TopAbs_OUT;
    }
    else if (aDp<aR-aTol) {
      aState=TopAbs_IN;
    }
  }
  //
  return iErr;
}
//=======================================================================
//function : GetState
//purpose  :
//=======================================================================
 Standard_Integer GEOMAlgo_SurfaceTools::GetState(const gp_Pnt& aP,
                                                  const Handle(Geom_Surface)& aSurf,
                                                  const Standard_Real aTol,
                                                  TopAbs_State& aState)
{
  Standard_Integer iErr;
  GeomAdaptor_Surface aGAS;
  //
  aState=TopAbs_UNKNOWN;
  aGAS.Load(aSurf);
  //
  iErr=GEOMAlgo_SurfaceTools::GetState(aP, aGAS, aTol, aState);
  //
  return iErr;
}
//=======================================================================
//function : ReverseState
//purpose  :
//=======================================================================
 TopAbs_State GEOMAlgo_SurfaceTools::ReverseState(const TopAbs_State aState)
{
  TopAbs_State aRSt=aState;
  //
  switch (aState) {
    case TopAbs_IN:
     aRSt=TopAbs_OUT;
     break;
   case TopAbs_OUT:
     aRSt=TopAbs_IN;
     break;
   default:
     break;
  }
  //
  return aRSt;
}
//=======================================================================
//function : Distance
//purpose  :
//=======================================================================
Standard_Real GEOMAlgo_SurfaceTools::Distance(const gp_Pnt& aP,
                                              const gp_Sphere& aSph)
{
  Standard_Real aD;
  //
  const gp_Pnt& aLoc=aSph.Location();
  aD=aLoc.Distance(aP);
  //
  return aD;
}
//=======================================================================
//function : Distance
//purpose  :
//=======================================================================
Standard_Real GEOMAlgo_SurfaceTools::Distance(const gp_Pnt& aP,
                                              const gp_Cylinder& aCyl)
{
  Standard_Real aD;
  //
  const gp_Ax1& aAxis=aCyl.Axis();
  gp_Lin aLin(aAxis);
  aD=aLin.Distance(aP);
  //
  return aD;
}
//=======================================================================
//function : Distance
//purpose  :
//=======================================================================
Standard_Real GEOMAlgo_SurfaceTools::Distance(const gp_Pnt& aP,
                                              const gp_Pln& aPL)
{
  Standard_Real aD;
  //
  const gp_Ax3& aPos=aPL.Position();
  const gp_Pnt& aLoc=aPos.Location ();
  const gp_Dir& aDir=aPos.Direction();
  //
  aD= (aDir.X() * (aP.X() - aLoc.X()) +
       aDir.Y() * (aP.Y() - aLoc.Y()) +
       aDir.Z() * (aP.Z() - aLoc.Z()));
  return aD;
}
//=======================================================================
//function : IsCoaxial
//purpose  :
//=======================================================================
Standard_Boolean GEOMAlgo_SurfaceTools::IsCoaxial(const gp_Pnt& aP1,
                                                  const gp_Pnt& aP2,
                                                  const gp_Cylinder& aCyl,
                                                  const Standard_Real aTol)
{
  Standard_Boolean bRet=Standard_False;
  Standard_Real aSM;
  //
  gp_Vec aV12(aP1, aP2);
  gp_Dir aD12(aV12);
  //
  const gp_Ax1& aAxis=aCyl.Axis();
  const gp_Dir& aDAxis=aAxis.Direction();
  //
  aSM=fabs(aD12*aDAxis);
  if (fabs(1.-aSM) > aTol) {
    return bRet;
  }
  //
  return !bRet;
}
//=======================================================================
//function : IsAnalytic
//purpose  :
//=======================================================================
Standard_Boolean GEOMAlgo_SurfaceTools::IsAnalytic(const Handle(Geom_Surface)& aSurf)
{
  Standard_Boolean bRet;
  GeomAbs_SurfaceType aType;
  GeomAdaptor_Surface aGAS;
  //
  aGAS.Load(aSurf);
  aType=aGAS.GetType();
  bRet=(aType==GeomAbs_Plane ||
        aType==GeomAbs_Cylinder ||
        aType==GeomAbs_Sphere);
  return bRet;
}
//=======================================================================
//function : IsConformState
//purpose  :
//=======================================================================
Standard_Boolean GEOMAlgo_SurfaceTools::IsConformState(const TopAbs_State aST1,
                                                       const GEOMAlgo_State aST2)
{
  Standard_Boolean bRet=Standard_False;
  //
  switch (aST2) {
    case GEOMAlgo_ST_IN:
      if (aST1==TopAbs_IN) {
        bRet=!bRet;
      }
      break;
    case GEOMAlgo_ST_OUT:
      if (aST1==TopAbs_OUT) {
        bRet=!bRet;
      }
      break;
    case GEOMAlgo_ST_ON:
      if (aST1==TopAbs_ON) {
        bRet=!bRet;
      }
      break;
    case GEOMAlgo_ST_ONIN:
      if (aST1==TopAbs_ON || aST1==TopAbs_IN) {
        bRet=!bRet;
      }
      break;
    case GEOMAlgo_ST_ONOUT:
      if (aST1==TopAbs_ON || aST1==TopAbs_OUT) {
        bRet=!bRet;
      }
      break;
    default:
      break;
  }
  return bRet;
}
