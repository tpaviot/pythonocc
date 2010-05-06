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
// File:	NMTDS_Tools.cxx
// Created:	Tue Feb 20 14:57:28 2007
// Author:	Peter KURNEV
//		<pkv@irinox>
//
#include <NMTDS_Tools.ixx>
#include <TopoDS_Vertex.hxx>
#include <gp_Pnt.hxx>
#include <BRep_Tool.hxx>
#include <TopoDS_Shape.hxx>
#include <TopTools_IndexedDataMapOfShapeShape.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <TopoDS_Iterator.hxx>
#include <BRep_Builder.hxx>

void CopySource(const TopoDS_Shape& aS, 
		TopTools_IndexedDataMapOfShapeShape& aMapSS, 
		TopoDS_Shape& aSC);

//=======================================================================
//function : CopyShape
//purpose  : 
//=======================================================================
  void NMTDS_Tools::CopyShape(const TopoDS_Shape& aS, 
			      TopoDS_Shape& aSC)
{
  TopTools_IndexedDataMapOfShapeShape aMapSS;
  //
  CopySource(aS, aMapSS, aSC);
}
//=======================================================================
//function : CopyShape
//purpose  : 
//=======================================================================
  void NMTDS_Tools::CopyShape(const TopoDS_Shape& aS, 
			      TopoDS_Shape& aSC,
			      TopTools_IndexedDataMapOfShapeShape& aMapSS)
{
  CopySource(aS, aMapSS, aSC);
}
//=======================================================================
//function : CopySource
//purpose  : 
//=======================================================================
void CopySource(const TopoDS_Shape& aS, 
		TopTools_IndexedDataMapOfShapeShape& aMapSS, 
		TopoDS_Shape& aSC)
{
  Standard_Boolean bFree;
  TopAbs_ShapeEnum aT;
  TopoDS_Iterator aIt;
  BRep_Builder BB;
  //
  aT=aS.ShapeType();
  //
  if (aMapSS.Contains(aS)) {
    aSC=aMapSS.ChangeFromKey(aS);
    aSC.Orientation(aS.Orientation());
    return;
  }
  else {
    aSC=aS.EmptyCopied();
    aMapSS.Add(aS, aSC);
  }
  //
  bFree=aSC.Free();
  aSC.Free(Standard_True);
  aIt.Initialize(aS);
  for (; aIt.More();  aIt.Next()) {
    TopoDS_Shape aSCx;
    //
    const TopoDS_Shape& aSx=aIt.Value();
    //
    CopySource (aSx, aMapSS, aSCx);  
    //
    aSCx.Orientation(aSx.Orientation());
    BB.Add(aSC, aSCx);
  }
  aSC.Free(bFree);
}
//=======================================================================
// function: ComputeVV
// purpose: 
//=======================================================================
  Standard_Integer NMTDS_Tools::ComputeVV(const TopoDS_Vertex& aV1, 
					  const TopoDS_Vertex& aV2)
{
  Standard_Real aTolV1, aTolV2, aTolSum, aTolSum2, aD2;
  gp_Pnt aP1, aP2;
  //
  aTolV1=BRep_Tool::Tolerance(aV1);
  aTolV2=BRep_Tool::Tolerance(aV2);
  aTolSum=aTolV1+aTolV2;
  aTolSum2=aTolSum*aTolSum;
  //
  aP1=BRep_Tool::Pnt(aV1);
  aP2=BRep_Tool::Pnt(aV2);
  //
  aD2=aP1.SquareDistance(aP2);
  if (aD2>aTolSum2) {
    return -1;
  }
  return 0;
}
//=======================================================================
// function: HasBRep
// purpose: 
//=======================================================================
  Standard_Boolean NMTDS_Tools::HasBRep(const TopAbs_ShapeEnum aTi)
{
  return (aTi==TopAbs_VERTEX || aTi==TopAbs_EDGE || aTi==TopAbs_FACE);
}
//=======================================================================
//function : TypeToInteger
//purpose  : 
//=======================================================================
  Standard_Integer NMTDS_Tools::TypeToInteger(const TopAbs_ShapeEnum aType1,
					    const TopAbs_ShapeEnum aType2)
{
  Standard_Integer iRet, iT1, iT2, iX;
  //
  iRet=-1;
  iT1=(Standard_Integer)aType1;
  iT2=(Standard_Integer)aType2;
  //
  iX=iT2*10+iT1;
  switch (iX) {
    case 77:
      iRet=5; // VV
      break;
    case 76:
    case 67:
      iRet=4; // VE
      break;
    case 74:
    case 47:
      iRet=2; // VF
      break;
    case 66:
      iRet=3; // EE
      break;
    case 64:
    case 46:
      iRet=1; // EF
      break;
    case 44:
      iRet=0; // FF
      break;
    default:
      break;
  }
  return iRet; 
}
