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

// File:        GEOMAlgo_ClsfBox.cxx
// Created:     Wed Nov 22 10:41:47 2006
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#include <GEOMAlgo_ClsfBox.hxx>

#include <GeomAbs_SurfaceType.hxx>
#include <GEOMAlgo_SurfaceTools.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TopExp.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS.hxx>
#include <Geom_Surface.hxx>
#include <BRep_Tool.hxx>
#include <Geom_Plane.hxx>
#include <gp_Pnt.hxx>
#include <gp_Dir.hxx>
#include <gp_Pln.hxx>
#include <gp_Ax1.hxx>
#include <Geom_Plane.hxx>

IMPLEMENT_STANDARD_HANDLE(GEOMAlgo_ClsfBox, GEOMAlgo_Clsf)
IMPLEMENT_STANDARD_RTTIEXT(GEOMAlgo_ClsfBox, GEOMAlgo_Clsf)

//=======================================================================
//function :
//purpose  :
//=======================================================================
  GEOMAlgo_ClsfBox::GEOMAlgo_ClsfBox()
:
  GEOMAlgo_Clsf()
{
}
//=======================================================================
//function : ~
//purpose  :
//=======================================================================
  GEOMAlgo_ClsfBox::~GEOMAlgo_ClsfBox()
{
}
//=======================================================================
//function : SetBox
//purpose  :
//=======================================================================
  void GEOMAlgo_ClsfBox::SetBox(const TopoDS_Shape& aBox)
{
  myBox=aBox;
}
//=======================================================================
//function : Box
//purpose  :
//=======================================================================
  const TopoDS_Shape& GEOMAlgo_ClsfBox::Box() const
{
  return myBox;
}
//=======================================================================
//function : CheckData
//purpose  :
//=======================================================================
  void GEOMAlgo_ClsfBox::CheckData()
{
  Standard_Integer i, aNbF;
  TopAbs_ShapeEnum aTypeShape;
  TopAbs_Orientation aOr;
  GeomAbs_SurfaceType aType;
  Handle(Geom_Surface) aS;
  TopTools_IndexedMapOfShape aMF;
  //
  myErrorStatus=0;
  //
  if(myBox.IsNull()) {
    myErrorStatus=10; // myBox=NULL
    return;
  }
  //
  aTypeShape=myBox.ShapeType();
  if (aTypeShape!=TopAbs_SOLID) {
    myErrorStatus=11; // unallowed shape type
    return;
  }
  //
  TopExp::MapShapes(myBox, TopAbs_FACE, aMF);
  aNbF=aMF.Extent();
  if (aNbF!=6) {
    myErrorStatus=12; // wrong number of faces
    return;
  }
  //
  for (i=1; i<=aNbF; ++i) {
    const TopoDS_Face& aF=TopoDS::Face(aMF(i));
    aOr=aF.Orientation();
    if (!(aOr==TopAbs_FORWARD || aOr==TopAbs_REVERSED)) {
      myErrorStatus=12; // unallowed orientation of face
      return;
    }
    //
    aS=BRep_Tool::Surface(aF);
    myGAS[i-1].Load(aS);
    aType=myGAS[i-1].GetType();
    if (!aType==GeomAbs_Plane) {
      myErrorStatus=13; // unallowed surface type
      return;
    }
    //
    if(aOr==TopAbs_REVERSED) {
      gp_Ax1 aAx1;
      gp_Pln aPln;
      gp_Pnt aP;
      gp_Dir aD;
      Handle(Geom_Plane) aSR;
      //
      aPln=myGAS[i-1].Plane();
      aAx1=aPln.Axis();
      aP=aAx1.Location();
      aD=aAx1.Direction();
      aD.Reverse();
      aSR=new Geom_Plane(aP, aD);
      myGAS[i-1].Load(aSR);
    }
  }
}
//=======================================================================
//function : Perform
//purpose  :
//=======================================================================
  void GEOMAlgo_ClsfBox::Perform()
{
  myErrorStatus=0;
  //
  const Standard_Integer aNbS=6;
  Standard_Integer i, aNbON, aNbIN, iNext;
  TopAbs_State aSt;
  /*
  CheckData();
  if(myErrorStatus) {
    return;
  }
  */
  iNext=1;
  aNbON=0;
  aNbIN=0;
  for(i=0; i<aNbS && iNext; i++) {
    GEOMAlgo_SurfaceTools::GetState(myPnt, myGAS[i], myTolerance, aSt);
    //
    switch (aSt) {
      case TopAbs_OUT:
        myState=aSt;
        iNext=0;
        break;
      case TopAbs_ON:
        ++aNbON;
        break;
      case TopAbs_IN:
        ++aNbIN;
        break;
      default:
        myState=TopAbs_UNKNOWN;
        iNext=0;
        break;
    }
  }
  //
  if (iNext) {
    myState=TopAbs_UNKNOWN;
    //
    if (aNbON && aNbIN) {
      myState=TopAbs_ON;
    }
    else if (aNbIN==aNbS){
      myState=TopAbs_IN;
    }
  }
}
//=======================================================================
//function : CanBeON
//purpose  :
//=======================================================================
  Standard_Boolean GEOMAlgo_ClsfBox::CanBeON(const Handle(Geom_Curve)& aC) const
{
  return GEOMAlgo_Clsf::CanBeON(aC);
}
//=======================================================================
//function : CanBeON
//purpose  :
//=======================================================================
  Standard_Boolean GEOMAlgo_ClsfBox::CanBeON(const Handle(Geom_Surface)& aS1) const
{
  Standard_Boolean bRet;
  GeomAbs_SurfaceType  aST1;
  GeomAdaptor_Surface aGAS1;
  //
  aGAS1.Load(aS1);
  aST1=aGAS1.GetType();
  bRet=(aST1==GeomAbs_Plane);
  //
  return bRet;
}
