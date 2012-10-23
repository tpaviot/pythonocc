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

//  File:      BlockFix_CheckTool.cxx
//  Created:   17.12.04 11:15:25
//  Author:    Sergey KUUL
//
#include <BlockFix_CheckTool.ixx>

//#include <BlockFix_UnionEdges.hxx>
//#include <BlockFix_UnionFaces.hxx>

#include <BRep_Tool.hxx>

#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Solid.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>


//=======================================================================
//function : BlockFix_CheckTool()
//purpose  : Constructor
//=======================================================================

BlockFix_CheckTool::BlockFix_CheckTool( )
{
  myHasCheck = Standard_False;
  myPossibleBlocks.Clear();
}


//=======================================================================
//function : SetShape
//purpose  :
//=======================================================================

void BlockFix_CheckTool::SetShape(const TopoDS_Shape& aShape)
{
  myHasCheck = Standard_False;
  myShape = aShape;
  myPossibleBlocks.Clear();
}


//=======================================================================
//function : Perform
//purpose  :
//=======================================================================

void BlockFix_CheckTool::Perform()
{
  myNbSolids=0;
  myNbBlocks=0;
  myNbDegen=0;
  myNbUF=0;
  myNbUE=0;
  myNbUFUE=0;

  TopExp_Explorer exps (myShape, TopAbs_SOLID);
  TopTools_MapOfShape mapS;
  for (; exps.More(); exps.Next()) {
    TopoDS_Solid aSolid = TopoDS::Solid(exps.Current());
    if (!mapS.Add(aSolid)) continue;
    myNbSolids++;
    Standard_Boolean IsBlock=Standard_True;
    Standard_Boolean MayBeUF=Standard_False;
    Standard_Boolean MayBeUE=Standard_False;
    Standard_Integer nf=0;
    TopExp_Explorer expf (aSolid, TopAbs_FACE);
    TopTools_MapOfShape mapF;
    for (; expf.More(); expf.Next()) {
      if (mapF.Add(expf.Current()))
        nf++;
    }

    if (nf < 6) {
      IsBlock = Standard_False;
    }
    else if (nf > 6) {
      IsBlock = Standard_False;
      // check faces unification
      TopTools_SequenceOfShape faces;
      mapF.Clear();
      for (expf.Init(aSolid, TopAbs_FACE); expf.More(); expf.Next()) {
        if (mapF.Add(expf.Current())) {
          TopoDS_Face aFace = TopoDS::Face(expf.Current());
          faces.Append(aFace);
        }
      }
      Standard_Boolean HasFacesForUnification = Standard_False;
      for (Standard_Integer i=1; i<faces.Length() && !HasFacesForUnification; i++) {
        TopoDS_Face F1 = TopoDS::Face(faces.Value(i));
        TopTools_MapOfShape Edges;
        for (TopExp_Explorer expe(F1,TopAbs_EDGE); expe.More(); expe.Next())
          Edges.Add(expe.Current().Oriented(TopAbs_FORWARD));
        TopLoc_Location L1;
        Handle(Geom_Surface) S1 = BRep_Tool::Surface(F1,L1);
        for(Standard_Integer j=i+1; j<=faces.Length() && !HasFacesForUnification; j++) {
          TopoDS_Face F2 = TopoDS::Face(faces.Value(j));
          TopLoc_Location L2;
          Handle(Geom_Surface) S2 = BRep_Tool::Surface(F2,L2);
          if( S1==S2 && L1==L2 ) {
            // faces have equal based surface
            // now check common edge
            for(TopExp_Explorer expe2(F2,TopAbs_EDGE); expe2.More(); expe2.Next()) {
              if(Edges.Contains(expe2.Current().Oriented(TopAbs_FORWARD))) {
                HasFacesForUnification = Standard_True;
                break;
              }
            }
          }
        }
      }
      if (HasFacesForUnification) {
        MayBeUF=Standard_True;
      }
    }

    Standard_Integer nbe=0;
    TopTools_MapOfShape DegenEdges;
    TopExp_Explorer expe (aSolid, TopAbs_EDGE);
    TopTools_MapOfShape mapE;
    for (; expe.More(); expe.Next()) {
      TopoDS_Edge E = TopoDS::Edge(expe.Current());
      if (!mapE.Add(E)) continue;
      if (BRep_Tool::Degenerated(E)) {
        DegenEdges.Add(E);
      }
      else {
        nbe++;
      }
    }
    if (nbe == 12 && DegenEdges.Extent() > 0) {
      IsBlock = Standard_False;
      myNbDegen++;
      myPossibleBlocks.Append(aSolid);
      continue;
    }
    if (nbe < 12)
      IsBlock = Standard_False;
    if (nbe > 12) {
      IsBlock = Standard_False;
      // check edges unification
      // creating map of edge faces
      TopTools_IndexedDataMapOfShapeListOfShape aMapEdgeFaces;
      TopExp::MapShapesAndAncestors(aSolid, TopAbs_EDGE, TopAbs_FACE, aMapEdgeFaces);

      mapF.Clear();
      for (expf.Init(aSolid, TopAbs_FACE); expf.More(); expf.Next()) {
        TopoDS_Face aFace = TopoDS::Face(expf.Current());
        if (!mapF.Add(aFace)) continue;
        TopTools_IndexedDataMapOfShapeListOfShape aMapFacesEdges;

        TopTools_MapOfShape mapEe;
        for (expe.Init(aFace, TopAbs_EDGE); expe.More(); expe.Next()) {
          TopoDS_Edge edge = TopoDS::Edge(expe.Current());
          if (!mapEe.Add(edge)) continue;
          if (!aMapEdgeFaces.Contains(edge)) continue;
          const TopTools_ListOfShape& aList = aMapEdgeFaces.FindFromKey(edge);
          TopTools_ListIteratorOfListOfShape anIter (aList);
          for (; anIter.More(); anIter.Next()) {
            TopoDS_Face face = TopoDS::Face(anIter.Value());
            if (face.IsSame(aFace)) continue;
            if (aMapFacesEdges.Contains(face)) {
              aMapFacesEdges.ChangeFromKey(face).Append(edge);
            }
            else {
              TopTools_ListOfShape ListEdges;
              ListEdges.Append(edge);
              aMapFacesEdges.Add(face,ListEdges);
            }
          }
        }
        Standard_Integer i = 1;
        for (; i <= aMapFacesEdges.Extent(); i++) {
          const TopTools_ListOfShape& ListEdges = aMapFacesEdges.FindFromIndex(i);
          if (ListEdges.Extent() > 1) break;
        }
        if (i <= aMapFacesEdges.Extent()) {
          MayBeUE = Standard_True;
          break;
        }
      }
    }

    if (IsBlock)
      myNbBlocks++;
    else {
      if (MayBeUF) {
        myPossibleBlocks.Append(aSolid);
        if (MayBeUE)
          myNbUFUE++;
        else
          myNbUF++;
      }
      else if (MayBeUE) {
        myNbUE++;
        myPossibleBlocks.Append(aSolid);
      }
    }
  }

  myHasCheck = Standard_True;
}


//=======================================================================
//function : NbPossibleBlocks
//purpose  :
//=======================================================================

Standard_Integer BlockFix_CheckTool::NbPossibleBlocks() const
{
  return myPossibleBlocks.Length();
}


//=======================================================================
//function : PossibleBlock
//purpose  :
//=======================================================================

TopoDS_Shape BlockFix_CheckTool::PossibleBlock(const Standard_Integer num) const
{
  TopoDS_Shape res;
  if( num>0 && num<=myPossibleBlocks.Length() )
    res = myPossibleBlocks.Value(num);
  return res;
}


//=======================================================================
//function : DumpCheckResult
//purpose  :
//=======================================================================

void BlockFix_CheckTool::DumpCheckResult(Standard_OStream& S) const
{
  if(!myHasCheck)
    S<<"Check not performed!"<<endl;
  else {
    S<<"dump results of check:"<<endl;
    S<<"  total number of solids = "<<myNbSolids<<endl;
    S<<"  including: number of good blocks = "<<myNbBlocks<<endl;
    S<<"             number of possible blocks = "<<NbPossibleBlocks()<<endl;
    S<<"             including: need remove degenerative = "<<myNbDegen<<endl;
    S<<"                        need unionfaces = "<<myNbUF<<endl;
    S<<"                        need unionedges = "<<myNbUE<<endl;
    S<<"                        need both unionfaces and unionedges = "<<myNbUFUE<<endl;
    Standard_Integer nbtmp = myNbSolids - myNbBlocks - NbPossibleBlocks();
    S<<"             number of impossible blocks = "<<nbtmp<<endl;
  }
}
