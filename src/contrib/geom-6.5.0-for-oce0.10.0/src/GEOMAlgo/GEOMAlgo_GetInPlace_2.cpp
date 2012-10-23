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
// File:	GEOMAlgo_GetInPlace_2.cxx
// Created:
// Author:	Peter KURNEV

#include <GEOMAlgo_GetInPlace.hxx>

#include <TopAbs_ShapeEnum.hxx>

#include <gp_Pnt.hxx>

#include <TopoDS_Iterator.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>

#include <BRep_Tool.hxx>
#include <BRep_Builder.hxx>

#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>

#include <TopExp.hxx>

#include <GProp_GProps.hxx>
#include <BRepGProp.hxx>


static
  Standard_Integer Dimension(const TopAbs_ShapeEnum aType);
static
  void PointProperties(const TopoDS_Shape& aS,
		       GProp_GProps& aGProps);

//=======================================================================
//function : CheckGProps
//purpose  :
//=======================================================================
void GEOMAlgo_GetInPlace::CheckGProps()
{
  myFound=Standard_False;
  CheckGProps(myArgument);
}
//=======================================================================
//function : CheckGProps
//purpose  :
//=======================================================================
void GEOMAlgo_GetInPlace::CheckGProps(const TopoDS_Shape& aS1)
{
  Standard_Boolean bOnlyClosed;
  Standard_Integer iDim, aNbS2;
  Standard_Real aMass1, aMass2, aD2, aTolCG2, dM;
  TopAbs_ShapeEnum  aType1;
  gp_Pnt aCG1, aCG2;
  TopoDS_Iterator aIt;
  TopoDS_Compound aC2;
  BRep_Builder aBB;
  TopTools_ListIteratorOfListOfShape aItLS;
  //
  myErrorStatus=0;
  //
  aType1=aS1.ShapeType();
  if (aType1==TopAbs_COMPOUND) {
    aIt.Initialize(aS1);
    for(; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aS1x=aIt.Value();
      CheckGProps(aS1x);
      if (!myFound) {
	return;
      }
    }
  }
  //
  iDim=Dimension(aType1);
  //
  if (!myImages.IsBound(aS1)) {
    // it should not be.
    return;
  }
  const TopTools_ListOfShape& aLS2=myImages.Find(aS1);
  aNbS2=aLS2.Extent();
  if (!aNbS2) {
    // it should not be.
    return;
  }
  //
  aBB.MakeCompound(aC2);
  aItLS.Initialize(aLS2);
  for (; aItLS.More(); aItLS.Next()) {
    const TopoDS_Shape& aS2x=aItLS.Value();
    aBB.Add(aC2, aS2x);
  }
  //-------------------------
  GProp_GProps aG1, aG2;
  //
  aTolCG2=myTolCG*myTolCG;
  bOnlyClosed=Standard_False;
  //
  if (iDim==0) {
    PointProperties(aS1, aG1);
    PointProperties(aC2, aG2);
  }
  else if (iDim==1) {
    BRepGProp::LinearProperties(aS1, aG1);
    BRepGProp::LinearProperties(aC2, aG2);
  }
  else if (iDim==2) {
    BRepGProp::SurfaceProperties(aS1, aG1);
    BRepGProp::SurfaceProperties(aC2, aG2);
  }
  else if (iDim==3) {
    BRepGProp::VolumeProperties(aS1, aG1, bOnlyClosed);
    BRepGProp::VolumeProperties(aC2, aG2, bOnlyClosed);
  }
  //
  aMass1=aG1.Mass();
  aMass2=aG2.Mass();
  aCG1=aG1.CentreOfMass();
  aCG2=aG2.CentreOfMass();
  //
  dM=fabs(aMass1-aMass2);
  if (aMass1 > myTolMass) {
    dM=dM/aMass1;
  }
  //
  aD2=aCG1.SquareDistance(aCG2);
  //
  if ((dM > myTolMass) || (aD2 > aTolCG2)) {
    myFound=Standard_False;
    return;
  }
  myFound=Standard_True;
}
//=======================================================================
//function : Dimension
//purpose  :
//=======================================================================
Standard_Integer Dimension(const TopAbs_ShapeEnum aType)
{
  Standard_Integer iDim;
  //
  iDim=-1;
  switch (aType) {
    case TopAbs_VERTEX:
      iDim=0;
      break;
    case TopAbs_EDGE:
    case TopAbs_WIRE:
      iDim=1;
      break;
    case TopAbs_FACE:
    case TopAbs_SHELL:
      iDim=2;
      break;
    case TopAbs_SOLID:
    case TopAbs_COMPSOLID:
      iDim=3;
      break;
    default:
      break;
  }
  return iDim;
}
//=======================================================================
//class : GEOMAlgo_GProps
//purpose  :
//=======================================================================
class GEOMAlgo_GProps : public GProp_GProps {
 public:
  GEOMAlgo_GProps() : GProp_GProps() {
  };
  //
  GEOMAlgo_GProps(const gp_Pnt& aPLoc) : GProp_GProps(aPLoc) {
  };
  //
  ~GEOMAlgo_GProps() {
  };
  //
  void SetMass(const Standard_Real aMass) {
    dim=aMass;
  }
  //
  void SetCG(const gp_Pnt& aPCG) {
    g=aPCG;
  }
};
//=======================================================================
//function : PointProperties
//purpose  :
//=======================================================================
void PointProperties(const TopoDS_Shape& aS, GProp_GProps& aGProps)
{
  Standard_Integer i, aNbS;
  Standard_Real aDensity;
  gp_Pnt aPX;
  TopTools_IndexedMapOfShape aMS;
  //
  aDensity=1.;
  //
  TopExp::MapShapes(aS, TopAbs_VERTEX, aMS);
  aNbS=aMS.Extent();
  for (i=1; i<=aNbS; ++i) {
    GEOMAlgo_GProps aGPropsX;
    //
    const TopoDS_Vertex& aVX=*((TopoDS_Vertex*)&aMS(i));
    aPX=BRep_Tool::Pnt(aVX);
    aGPropsX.SetMass(1.);
    aGPropsX.SetCG(aPX);
    aGProps.Add(aGPropsX, aDensity);
  }
}
