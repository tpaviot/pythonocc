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
// File:	GEOMAlgo_FinderShapeOn.cxx
// Created:	Tue Jan 11 14:44:31 2005
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <GEOMAlgo_FinderShapeOn.ixx>

#include <gp_Pnt.hxx>

#include <TopAbs_ShapeEnum.hxx>
#include <TopAbs_Orientation.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_Shell.hxx>
#include <TopoDS_Solid.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Iterator.hxx>

#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_DataMapOfShapeShape.hxx>

#include <Bnd_Box.hxx>
#include <BRepBndLib.hxx>
#include <BRepMesh_IncrementalMesh.hxx>

#include <BRep_Builder.hxx>
#include <BRep_Tool.hxx>

#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>

#include <BRepLib_MakeFace.hxx>
#include <BRepLib_FaceError.hxx>

#include <BOPTools_DSFiller.hxx>

#include <GEOMAlgo_WireSolid.hxx>
#include <GEOMAlgo_ShellSolid.hxx>
#include <GEOMAlgo_VertexSolid.hxx>
#include <GEOMAlgo_ShapeSolid.hxx>
#include <GEOMAlgo_SolidSolid.hxx>
#include <GEOMAlgo_SurfaceTools.hxx>
#include <GEOMAlgo_Tools.hxx>

//=======================================================================
//function : GEOMAlgo_FinderShapeOn
//purpose  : 
//=======================================================================
GEOMAlgo_FinderShapeOn::GEOMAlgo_FinderShapeOn()
:
  GEOMAlgo_ShapeAlgo()
{
  myTolerance=0.0001;
  myShapeType=TopAbs_VERTEX;
  myState=GEOMAlgo_ST_UNKNOWN;
  myIsAnalytic=Standard_True;
}
//=======================================================================
//function : ~
//purpose  : 
//=======================================================================
GEOMAlgo_FinderShapeOn::~GEOMAlgo_FinderShapeOn()
{
}
//=======================================================================
//function : SetSurface
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn::SetSurface(const Handle(Geom_Surface)& aS)
{
  mySurface=aS;
}
//=======================================================================
//function : Surface
//purpose  : 
//=======================================================================
const Handle(Geom_Surface)& GEOMAlgo_FinderShapeOn::Surface() const
{
  return mySurface;
}
//=======================================================================
//function : SetShapeType
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn::SetShapeType(const TopAbs_ShapeEnum aType)
{
  myShapeType=aType;
}
//=======================================================================
//function : ShapeType
//purpose  : 
//=======================================================================
TopAbs_ShapeEnum GEOMAlgo_FinderShapeOn::ShapeType()const
{
  return myShapeType;
}
//=======================================================================
//function : SetState
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn::SetState(const GEOMAlgo_State aState)
{
  myState=aState;
}
//=======================================================================
//function : State
//purpose  : 
//=======================================================================
GEOMAlgo_State GEOMAlgo_FinderShapeOn::State() const
{
  return myState;
}
//=======================================================================
// function: Shapes
// purpose: 
//=======================================================================
const TopTools_ListOfShape& GEOMAlgo_FinderShapeOn::Shapes() const
{
  Standard_Boolean bIsConformState;
  Standard_Integer i, aNb;
  TopAbs_State aSt;
  TopTools_ListOfShape* pL;
  //
  pL=(TopTools_ListOfShape*) &myLS;
  pL->Clear();
  //
  aNb=myMSS.Extent();
  for (i=1; i<=aNb; ++i) {
    const TopoDS_Shape& aS=myMSS.FindKey(i);
    aSt=myMSS.FindFromIndex(i);
    //
    bIsConformState=GEOMAlgo_SurfaceTools::IsConformState(aSt, myState);
    if (bIsConformState) {
      pL->Append(aS);
    }
  }
  return myLS;
}
//=======================================================================
//function : Perform
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn::Perform()
{
  myErrorStatus=0;
  myWarningStatus=0;
  myLS.Clear();
  myMSS.Clear();
  //
  if (!myResult.IsNull()){
    myResult.Nullify();
  }
  //
  CheckData();
  if(myErrorStatus) {
    return;
  }
  //
  myIsAnalytic=GEOMAlgo_SurfaceTools::IsAnalytic(mySurface);
  //
  MakeArgument1();
  if(myErrorStatus) {
    return;
  }
  //
  if (myIsAnalytic && myShapeType==TopAbs_VERTEX) {
    FindVertices();
    return;
  }
  //
  MakeArgument2();
  if(myErrorStatus) {
    return;
  }
  //
  Find();
  if(myErrorStatus || myWarningStatus) {
    return;
  }
  //
}
//=======================================================================
//function : FindVertices
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn::FindVertices()
{ 
  Standard_Integer i, aNb, iErr;
  TopAbs_State aSt;
  TopAbs_Orientation aOr;
  gp_Pnt aP;
  TopTools_IndexedMapOfShape aM;
  //
  TopExp::MapShapes(myArg1, TopAbs_FACE, aM);
  const TopoDS_Face& aF=TopoDS::Face(aM(1));
  aOr=aF.Orientation();
  //
  aM.Clear();
  TopExp::MapShapes(myShape, myShapeType, aM);
  aNb=aM.Extent();
  if (!aNb) {
    myWarningStatus=10; // No found subshapes of type myShapeType
    return;
  }
  //
  for (i=1; i<=aNb; ++i) {
    const TopoDS_Shape& aS=aM(i);
    const TopoDS_Vertex& aV=TopoDS::Vertex(aS);
    aP=BRep_Tool::Pnt(aV);
    iErr=GEOMAlgo_SurfaceTools::GetState(aP, mySurface, myTolerance, aSt);
    if (aOr==TopAbs_REVERSED) {
      aSt=GEOMAlgo_SurfaceTools::ReverseState(aSt);
    }
    myMSS.Add(aS, aSt);
  }
}
//=======================================================================
//function : Find
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn::Find()
{
  Standard_Integer i, aNb;
  Standard_Boolean bICS;
  TopTools_IndexedMapOfShape aM;
  //
  TopExp::MapShapes(myArg2, myShapeType, aM);
  //
  aNb=aM.Extent();
  if (!aNb) {
    myWarningStatus=10; // No found subshapes of type myShapeType
    return;
  }
  //
  bICS=GEOMAlgo_Tools::IsCompositeShape(myArg2);
  if (!bICS || myIsAnalytic) {
    TopoDS_Compound aCmp;
    BRep_Builder aBB;
    //
    aBB.MakeCompound(aCmp);
    for (i=1; i<=aNb; ++i) {
      const TopoDS_Shape& aSi=aM(i);
      aBB.Add(aCmp, aSi);
    }
    //
    aM.Clear();
    aM.Add(aCmp);
    aNb=1;
  }
  //
  for (i=1; i<=aNb; ++i) {
    const TopoDS_Shape& aS=aM(i);
    Find(aS);
    if (myErrorStatus) {
      return;
    }
  }
}
//=======================================================================
//function : Find
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn::Find(const TopoDS_Shape& aS)
{
  myErrorStatus=0;
  //
  Standard_Boolean bIsDone;
  Standard_Integer i, iErr;
  TopAbs_State aSts[]={TopAbs_IN, TopAbs_OUT, TopAbs_ON};
  TopTools_ListIteratorOfListOfShape aIt;
  BOPTools_DSFiller aDF;
  //
  // 1. Prepare DSFiller
  aDF.SetShapes (myArg1, aS);
  bIsDone=aDF.IsDone();
  if (!bIsDone) {
    myErrorStatus=30; // wrong args are used for DSFiller
    return;
  }
  aDF.Perform();
  bIsDone=aDF.IsDone();
  if (!bIsDone) {
    myErrorStatus=31; // DSFiller failed
    return;
  }
  // 
  // 2. Find shapes
  GEOMAlgo_ShapeSolid* pSS;
  GEOMAlgo_VertexSolid aVXS;
  GEOMAlgo_WireSolid aWRS;
  GEOMAlgo_ShellSolid aSHS;
  GEOMAlgo_SolidSolid aSLS;
  //
  pSS=NULL;
  //
  switch (myShapeType) {
    case TopAbs_VERTEX:
      pSS=&aVXS;
      break;
    case TopAbs_EDGE:
      pSS=&aWRS;
      break;
    case TopAbs_FACE:
      pSS=&aSHS;
      break;
    case TopAbs_SOLID:
      aSLS.SetShape2(myArg2);
      pSS=&aSLS;
      break;
    default:
      myErrorStatus=12; // unallowed subshape type
      return;
  }
  //
  pSS->SetFiller(aDF);
  pSS->Perform();
  iErr=pSS->ErrorStatus();
  if (iErr) {
    myErrorStatus=32; // builder ShapeSolid failed
    return;
  }
  //
  for (i=0; i<3; ++i) {
    const TopTools_ListOfShape& aLS=pSS->Shapes(aSts[i]);
    aIt.Initialize(aLS);
    for (; aIt.More(); aIt.Next()) {
      const TopoDS_Shape& aSImage=aIt.Value(); 
      if (myImages.IsBound(aSImage)) { 
	const TopoDS_Shape& aSx=myImages.Find(aSImage); 
	myMSS.Add(aSx, aSts[i]);
      }
      else {
	myErrorStatus=33;// can not find original shape
	return; 
      }
    }
  }
}
//=======================================================================
//function : MakeArgument1
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn::MakeArgument1()
{
  myErrorStatus=0;
  //
  Standard_Integer i, aNb;
  TopAbs_ShapeEnum aType;
  BRepLib_FaceError aFErr;
  BRepLib_MakeFace aMF;
  TopTools_IndexedMapOfShape aM;
  BRep_Builder aBB;
  TopoDS_Face aFace;
  TopoDS_Shell aSh;
  TopoDS_Solid aSd;
  //
  // Argument 1
  if (!myIsAnalytic) {
    aMF.Init(mySurface, Standard_True);
    aFErr=aMF.Error();
    if (aFErr!=BRepLib_FaceDone) {
      myErrorStatus=20; // can not build the face
      return;
    }
    //
    const TopoDS_Shape& aF=aMF.Shape();
    aFace=TopoDS::Face(aF);
    //
    // update tolerances
    aM.Add(aF);
    TopExp::MapShapes(aF, TopAbs_VERTEX, aM);
    TopExp::MapShapes(aF, TopAbs_EDGE, aM);
    aNb=aM.Extent();
    for (i=1; i<=aNb; ++i) {
      const TopoDS_Shape& aS=aM(i);
      aType=aS.ShapeType();
      switch (aType) {
      case TopAbs_VERTEX: {
        const TopoDS_Vertex& aVx=TopoDS::Vertex(aS);
	aBB.UpdateVertex(aVx, myTolerance);
      }
	break;
      case TopAbs_EDGE: {
        const TopoDS_Edge& aEx=TopoDS::Edge(aS);
	aBB.UpdateEdge(aEx, myTolerance);
      }
	break;
      case TopAbs_FACE: {
        const TopoDS_Face& aFx=TopoDS::Face(aS);
	aBB.UpdateFace(aFx, myTolerance);
      }
	break;
      default:
	break;
      }
    }
  } //  
  else {
    aBB.MakeFace(aFace, mySurface, myTolerance);
  }
  //
  // make solid
  aBB.MakeShell(aSh);
  aBB.Add(aSh, aFace);
  aBB.MakeSolid(aSd);
  aBB.Add(aSd, aSh);
  myArg1=aSd;
}
//=======================================================================
//function : MakeArgument2
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn::MakeArgument2()
{
  myErrorStatus=0;
  //
  TopoDS_Shape aSC;
  TopTools_DataMapOfShapeShape aOriginals;
  //
  myImages.Clear();
  //
  GEOMAlgo_FinderShapeOn::CopySource(myShape, myImages, aOriginals, aSC);
  //
  myArg2=aSC;
}
//=======================================================================
//function : CheckData
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn::CheckData()
{
  myErrorStatus=0;
  //
  if(mySurface.IsNull()) {
    myErrorStatus=10; // mySurface=NULL
    return;
  }
  //
  if (myShape.IsNull()) {
    myErrorStatus=11; // myShape=NULL
    return;
  }
  //
  if (!(myShapeType==TopAbs_VERTEX ||
	myShapeType==TopAbs_EDGE ||
	myShapeType==TopAbs_FACE ||
	myShapeType==TopAbs_SOLID)) {
    myErrorStatus=12; // unallowed subshape type
    return;
  }
  //
  if (myState==GEOMAlgo_ST_UNKNOWN || 
      myState==GEOMAlgo_ST_INOUT) {
    myErrorStatus=13; // unallowed state type
    return;
  }
}
//
//=======================================================================
//function : CopySource
//purpose  : 
//=======================================================================
void GEOMAlgo_FinderShapeOn::CopySource(const TopoDS_Shape& aE,
					TopTools_DataMapOfShapeShape& aImages,
					TopTools_DataMapOfShapeShape& aOriginals,
					TopoDS_Shape& aEx)
{
  Standard_Boolean bFree;
  TopAbs_ShapeEnum aType;
  Standard_Integer aR;
  BRep_Builder BB;
  TopoDS_Iterator aIt;
  //
  aType=aE.ShapeType();
  //
  if (aOriginals.IsBound(aE)) {
    aEx=aOriginals.ChangeFind(aE);
    return;
  }
  else {
    aEx=aE.EmptyCopied();
    aOriginals.Bind(aE, aEx);
    aImages.Bind(aEx, aE);
  }
  //
  aR=(Standard_Integer)aType+1;
  if (aR>TopAbs_VERTEX) {
    return;
  }
  //
  bFree=aEx.Free();
  aEx.Free(Standard_True);
  //
  aType=(TopAbs_ShapeEnum) aR;
  //
  aIt.Initialize(aE);//, Standard_False);
  for (; aIt.More();  aIt.Next()) {
    const TopoDS_Shape& aV=aIt.Value();
    TopoDS_Shape aVx;
    //
    CopySource (aV, aImages, aOriginals, aVx);  
    //
    aVx.Orientation(aV.Orientation());
    BB.Add(aEx, aVx);
  }
  //
  aEx.Free(bFree);
}
//
//=======================================================================
//function : BuildTriangulation
//purpose  : 
//=======================================================================
bool GEOMAlgo_FinderShapeOn::BuildTriangulation (const TopoDS_Shape& theShape)
{
  // calculate deflection
  Standard_Real aDeviationCoefficient = 0.001;

  Bnd_Box B;
  BRepBndLib::Add(theShape, B);
  Standard_Real aXmin, aYmin, aZmin, aXmax, aYmax, aZmax;
  B.Get(aXmin, aYmin, aZmin, aXmax, aYmax, aZmax);

  Standard_Real dx = aXmax - aXmin, dy = aYmax - aYmin, dz = aZmax - aZmin;
  Standard_Real aDeflection = Max(Max(dx, dy), dz) * aDeviationCoefficient * 4;
  Standard_Real aHLRAngle = 0.349066;

  // build triangulation
  BRepMesh_IncrementalMesh Inc (theShape, aDeflection, Standard_False, aHLRAngle);

  // check triangulation
  bool isTriangulation = true;

  TopExp_Explorer exp (theShape, TopAbs_FACE);
  if (exp.More())
  {
    TopLoc_Location aTopLoc;
    Handle(Poly_Triangulation) aTRF;
    aTRF = BRep_Tool::Triangulation(TopoDS::Face(exp.Current()), aTopLoc);
    if (aTRF.IsNull()) {
      isTriangulation = false;
    }
  }
  else // no faces, try edges
  {
    TopExp_Explorer expe (theShape, TopAbs_EDGE);
    if (!expe.More()) {
      isTriangulation = false;
    }
    else {
      TopLoc_Location aLoc;
      Handle(Poly_Polygon3D) aPE = BRep_Tool::Polygon3D(TopoDS::Edge(expe.Current()), aLoc);
      if (aPE.IsNull()) {
        isTriangulation = false;
      }
    }
  }

  return isTriangulation;
}

//
// myErrorStatus :
//
// 10 -mySurface=NULL
// 11 -myShape=NULL
// 12 -unallowed type of subshapes 
// 13 -unallowed state  
// 20 -can not build the face
// 30 -wrong args are used for DSFiller
// 31 -DSFiller failed
// 32 -builder ShapeSolid failed
// 33 -can not find original shape
//
// myWarningStatus
//
// 10 -subshapes of type myShapeType can not be fond in myShape
