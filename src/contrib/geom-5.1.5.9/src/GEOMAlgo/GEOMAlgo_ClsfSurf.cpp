//  Copyright (C) 2007-2008  CEA/DEN, EDF R&D, OPEN CASCADE
//
//  Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
//  CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
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
// File:	GEOMAlgo_ClsfSurf.cxx
// Created:	Wed Nov 22 10:41:47 2006
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <GEOMAlgo_ClsfSurf.ixx>
#include <GeomAbs_SurfaceType.hxx>
#include <GEOMAlgo_SurfaceTools.hxx>
#include <GeomAdaptor_Curve.hxx>

//=======================================================================
//function : 
//purpose  : 
//=======================================================================
  GEOMAlgo_ClsfSurf::GEOMAlgo_ClsfSurf()
:
  GEOMAlgo_Clsf()
{
}
//=======================================================================
//function : ~
//purpose  : 
//=======================================================================
  GEOMAlgo_ClsfSurf::~GEOMAlgo_ClsfSurf()
{
}
//=======================================================================
//function : SetSurface
//purpose  : 
//=======================================================================
  void GEOMAlgo_ClsfSurf::SetSurface(const Handle(Geom_Surface)& aS)
{
  myS=aS;
}
//=======================================================================
//function : Surface
//purpose  : 
//=======================================================================
  const Handle(Geom_Surface)& GEOMAlgo_ClsfSurf::Surface() const
{
  return myS;
}
//=======================================================================
//function : CheckData
//purpose  : 
//=======================================================================
  void GEOMAlgo_ClsfSurf::CheckData()
{
  GeomAbs_SurfaceType aType;
  //
  myErrorStatus=0;
  //
  if(myS.IsNull()) {
    myErrorStatus=10; // mySurface=NULL
    return;
  }
  //
  myGAS.Load(myS);
  aType=myGAS.GetType();
  if (!(aType==GeomAbs_Plane || 
	aType==GeomAbs_Cylinder ||
	aType==GeomAbs_Sphere)) {
    myErrorStatus=11; // unallowed surface type
  }
}
//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================
  void GEOMAlgo_ClsfSurf::Perform()
{
  myErrorStatus=0;
  /*
  CheckData();
  if(myErrorStatus) {
    return;
  }
  */
  GEOMAlgo_SurfaceTools::GetState(myPnt, myGAS, myTolerance, myState);
}
//=======================================================================
//function : CanBeON
//purpose  : 
//=======================================================================
  Standard_Boolean GEOMAlgo_ClsfSurf::CanBeON(const Handle(Geom_Curve)& aC) const
{
  GeomAbs_SurfaceType aST;
  GeomAbs_CurveType aCT;
  GeomAdaptor_Curve aGAC;
  //
  aGAC.Load(aC);
  aCT=aGAC.GetType();
  //
  aST=myGAS.GetType();
  if (aCT==GeomAbs_Line && aST==GeomAbs_Sphere) {
    return Standard_False;
  }
  return Standard_True;
}
//=======================================================================
//function : CanBeON
//purpose  : 
//=======================================================================
  Standard_Boolean GEOMAlgo_ClsfSurf::CanBeON(const Handle(Geom_Surface)& aS1) const
{
  Standard_Boolean bRet;
  GeomAbs_SurfaceType aST, aST1;
  GeomAdaptor_Surface aGAS1;
  //
  aST=myGAS.GetType();
  aGAS1.Load(aS1);
  aST1=aGAS1.GetType();
  bRet=(aST1==aST);
  //
  return bRet;
}
