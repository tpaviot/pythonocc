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
#include <Standard_Stream.hxx>

#include <BRepOffsetAPI_MakeFilling.hxx>

#include <GEOMImpl_BlockDriver.hxx>
#include <GEOMImpl_IBlocks.hxx>
#include <GEOMImpl_IBlockTrsf.hxx>
#include <GEOMImpl_GlueDriver.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOMImpl_ILocalOperations.hxx>
#include <GEOMImpl_Block6Explorer.hxx>
#include <GEOMImpl_IBlocksOperations.hxx>

#include <GEOM_Function.hxx>

#include <ShHealOper_Sewing.hxx>
#include <ShHealOper_ShapeProcess.hxx>
#include <GEOMAlgo_Gluer.hxx>
#include <BlockFix_BlockFixAPI.hxx>

#include "utilities.h"

#include <TNaming_CopyShape.hxx>

#include <BRepLib.hxx>
#include <BRep_Tool.hxx>
#include <BRepTools.hxx>
#include <BRepGProp.hxx>
#include <BRep_Builder.hxx>
#include <BRepTools_Quilt.hxx>
#include <BRepTools_WireExplorer.hxx>
#include <BRepBuilderAPI_MakeEdge.hxx>
#include <BRepBuilderAPI_MakeWire.hxx>
#include <BRepBuilderAPI_MakePolygon.hxx>
#include <BRepBuilderAPI_Transform.hxx>
#include <BRepCheck_Analyzer.hxx>
#include <BRepClass_FaceClassifier.hxx>
#include <BRepClass3d_SolidClassifier.hxx>
#include <BRepExtrema_ExtPF.hxx>
#include <BRepExtrema_DistShapeShape.hxx>

#include <TopAbs.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Shell.hxx>
#include <TopoDS_Solid.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_MapIteratorOfMapOfShape.hxx>
#include <TopTools_Array1OfShape.hxx>
#include <TopTools_SequenceOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>

#include <GProp_GProps.hxx>

#include <gp.hxx>
#include <gp_Pnt.hxx>
#include <gp_Ax3.hxx>
#include <Precision.hxx>
#include <TColgp_Array1OfPnt.hxx>
#include <TColStd_Array1OfInteger.hxx>
#include <TColStd_IndexedDataMapOfTransientTransient.hxx>
#include <StdFail_NotDone.hxx>
#include <Standard_NullObject.hxx>
#include <Standard_TypeMismatch.hxx>
#include <Standard_ConstructionError.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_BlockDriver::GetID()
{
  static Standard_GUID aBlockDriver("FF1BBB67-5D14-4df2-980B-3A668264EA16");
  return aBlockDriver;
}


//=======================================================================
//function : GEOMImpl_BlockDriver
//purpose  :
//=======================================================================
GEOMImpl_BlockDriver::GEOMImpl_BlockDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_BlockDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;
  BRep_Builder B;

  Standard_Real prec = Precision::Confusion();

  Standard_Integer aNbSub = 0;
  if (aType == BLOCK_COMPOUND_GLUE) {

    aNbSub = 1;

  } else if (aType == BLOCK_FACE_TWO_EDGES ||
             aType == BLOCK_TWO_FACES) {

    aNbSub = 2;

  } else if (aType == BLOCK_FACE_FOUR_PNT ||
             aType == BLOCK_FACE_FOUR_EDGES) {

    aNbSub = 4;

  } else if (aType == BLOCK_SIX_FACES) {

    aNbSub = 6;

  } else {
  }

  if (aNbSub > 0) {
    GEOMImpl_IBlocks aCI (aFunction);
    Handle(TColStd_HSequenceOfTransient) aShapes = aCI.GetShapes();
    Standard_Integer nbshapes = aShapes->Length();

    if (nbshapes != aNbSub) {
      Standard_TypeMismatch::Raise
        ("Number of elements for object construction does not correspond to the used constructor");
    }

    TopTools_Array1OfShape anArgs (1, aNbSub);
    Standard_Integer argi;
    for (argi = 1; argi <= aNbSub; argi++) {
      Handle(GEOM_Function) aRef = Handle(GEOM_Function)::DownCast(aShapes->Value(argi));
      TopoDS_Shape anArg = aRef->GetValue();
      if (anArg.IsNull()) {
        Standard_NullObject::Raise("Null shape is given as argument");
      }
      anArgs(argi) = anArg;
    }

    if (aType == BLOCK_FACE_FOUR_EDGES) {

      // Make face from four edges
      if (anArgs(1).ShapeType() != TopAbs_EDGE || anArgs(2).ShapeType() != TopAbs_EDGE ||
          anArgs(3).ShapeType() != TopAbs_EDGE || anArgs(4).ShapeType() != TopAbs_EDGE) {
        Standard_TypeMismatch::Raise("Shape for face construction is not an edge");
      }

      // count corner vertices
      TopTools_MapOfShape aVertMap;
      for (Standard_Integer ii = 1; ii <= 4; ii++) {
        TopoDS_Edge anEdge = TopoDS::Edge(anArgs(ii));
        TopoDS_Vertex V1, V2;
        TopExp::Vertices(anEdge, V1, V2, Standard_True);
        if (V1.IsNull() || V2.IsNull()) {
          Standard_NullObject::Raise("Bad edge for face construction: vertex is not defined");
        }
        if (BRepTools::Compare(V1,V2)) {
          Standard_ConstructionError::Raise("Edge ends are too close");
        }
        Standard_Boolean isCoin1 = Standard_False, isCoin2 = Standard_False;
        TopTools_MapIteratorOfMapOfShape anIter (aVertMap);
        for (; anIter.More(); anIter.Next()) {
          TopoDS_Vertex V = TopoDS::Vertex(anIter.Key());
          if (BRepTools::Compare(V,V1)) isCoin1 = Standard_True;
          if (BRepTools::Compare(V,V2)) isCoin2 = Standard_True;
        }
        if (!isCoin1) aVertMap.Add(V1);
        if (!isCoin2) aVertMap.Add(V2);
      }
      if (aVertMap.Extent() != 4) {
        Standard_ConstructionError::Raise("The edges must form a closed wire");
      }

      TopoDS_Edge anEdge1 = TopoDS::Edge(anArgs(1));
      TopoDS_Edge anEdge2 = TopoDS::Edge(anArgs(2));
      TopoDS_Edge anEdge3 = TopoDS::Edge(anArgs(3));
      TopoDS_Edge anEdge4 = TopoDS::Edge(anArgs(4));

      // check, if anEdge1 has common/coincident vertex with anEdge2,
      Standard_Boolean isConnected12 = Standard_False;
      TopoDS_Vertex V11, V12, V21, V22;
      TopExp::Vertices(anEdge1, V11, V12, Standard_True);
      TopExp::Vertices(anEdge2, V21, V22, Standard_True);
      if (BRepTools::Compare(V11,V21) || BRepTools::Compare(V11,V22) ||
          BRepTools::Compare(V12,V21) || BRepTools::Compare(V12,V22)) {
        // the edges have common vertex
        isConnected12 = Standard_True;
      }

      // build wire in right order, corresponding to edges connexity
      BRepBuilderAPI_MakeWire* MW;
      if (isConnected12)
        MW = new BRepBuilderAPI_MakeWire(anEdge1, anEdge2, anEdge3, anEdge4);
      else
        MW = new BRepBuilderAPI_MakeWire(anEdge1, anEdge3, anEdge2, anEdge4);

      if (!MW->IsDone()) {
        Standard_ConstructionError::Raise
          ("Impossible to build a connected wire from the given edges");
      }
      TopoDS_Wire aWire = *MW;
      delete MW; 
      if (!aWire.Closed()) {
        Standard_ConstructionError::Raise
          ("Impossible to build a closed wire from the given edges");
      }

      // try to build face on the wire
      GEOMImpl_Block6Explorer::MakeFace(aWire, Standard_False, aShape);
      if (aShape.IsNull()) {
        Standard_ConstructionError::Raise("Face construction failed");
      }

    } else if (aType == BLOCK_FACE_TWO_EDGES) {

      // Make face from two opposite edges
      if (anArgs(1).ShapeType() != TopAbs_EDGE ||
          anArgs(2).ShapeType() != TopAbs_EDGE) {
        Standard_TypeMismatch::Raise("Shape for face construction is not an edge");
      }

      TopoDS_Edge anEdge1 = TopoDS::Edge(anArgs(1));
      TopoDS_Edge anEdge2 = TopoDS::Edge(anArgs(2));

      if (anEdge1.IsSame(anEdge2)) {
        Standard_ConstructionError::Raise("The edges must be different");
      }

      // create two edges, linking ends of the given edges
      TopoDS_Vertex V11, V12, V21, V22;
      TopExp::Vertices(anEdge1, V11, V12, Standard_True);
      TopExp::Vertices(anEdge2, V21, V22, Standard_True);
      if (V11.IsNull() || V12.IsNull() ||
          V21.IsNull() || V22.IsNull()) {
        Standard_NullObject::Raise("Bad edge for face construction: vertex is not defined");
      }
      gp_Pnt P11 = BRep_Tool::Pnt(V11);
      gp_Pnt P12 = BRep_Tool::Pnt(V12);
      gp_Pnt P21 = BRep_Tool::Pnt(V21);
      gp_Pnt P22 = BRep_Tool::Pnt(V22);

      if (P11.Distance(P21) < prec || P12.Distance(P22) < prec ||
          P11.Distance(P22) < prec || P12.Distance(P21) < prec) {
        Standard_ConstructionError::Raise("Given edges have too close ends");
      }

      Standard_Real per11 = P11.Distance(P21) + P12.Distance(P22);
      Standard_Real per12 = P11.Distance(P22) + P12.Distance(P21);

      TopoDS_Edge anEdge3;
      TopoDS_Edge anEdge4;
      if (per11 < per12) {
        anEdge3 = BRepBuilderAPI_MakeEdge(V11, V21);
        anEdge4 = BRepBuilderAPI_MakeEdge(V12, V22);
      } else {
        anEdge3 = BRepBuilderAPI_MakeEdge(V11, V22);
        anEdge4 = BRepBuilderAPI_MakeEdge(V12, V21);
      }

      // build a wire
      BRepBuilderAPI_MakeWire MW (anEdge1, anEdge3, anEdge2, anEdge4);
      if (!MW.IsDone()) {
        Standard_ConstructionError::Raise("Wire construction failed");
      }

      // try to build face on the wire
      GEOMImpl_Block6Explorer::MakeFace(MW, Standard_False, aShape);
      if (aShape.IsNull()) {
        Standard_ConstructionError::Raise("Face construction failed");
      }

    } else if (aType == BLOCK_FACE_FOUR_PNT) {

      // Make face from four corner vertices
      if (anArgs(1).ShapeType() != TopAbs_VERTEX ||
          anArgs(2).ShapeType() != TopAbs_VERTEX ||
          anArgs(3).ShapeType() != TopAbs_VERTEX ||
          anArgs(4).ShapeType() != TopAbs_VERTEX) {
        Standard_TypeMismatch::Raise("Shape for face construction is not a vertex");
      }

      TopoDS_Vertex V1 = TopoDS::Vertex(anArgs(1));
      TopoDS_Vertex V2 = TopoDS::Vertex(anArgs(2));
      TopoDS_Vertex V3 = TopoDS::Vertex(anArgs(3));
      TopoDS_Vertex V4 = TopoDS::Vertex(anArgs(4));

      gp_Pnt P1 = BRep_Tool::Pnt(V1);
      gp_Pnt P2 = BRep_Tool::Pnt(V2);
      gp_Pnt P3 = BRep_Tool::Pnt(V3);
      gp_Pnt P4 = BRep_Tool::Pnt(V4);

      if (P1.Distance(P2) < prec || P1.Distance(P3) < prec ||
          P1.Distance(P4) < prec || P2.Distance(P3) < prec ||
          P2.Distance(P4) < prec || P3.Distance(P4) < prec) {
        Standard_ConstructionError::Raise("Four not coincident points must be given");
      }

      // calculate perimeters
      Standard_Real per1234 = P1.Distance(P2) + P2.Distance(P3) +
                              P3.Distance(P4) + P4.Distance(P1);
      Standard_Real per1243 = P1.Distance(P2) + P2.Distance(P4) +
                              P4.Distance(P3) + P3.Distance(P1);
      Standard_Real per1324 = P1.Distance(P3) + P3.Distance(P2) +
                              P2.Distance(P4) + P4.Distance(P1);

      // order vertices
      if (per1243 < per1234 && per1243 < per1324) {
        TopoDS_Vertex Vtmp = V3;
        V3 = V4;
        V4 = Vtmp;
      } else if (per1324 < per1234 && per1324 < per1243) {
        TopoDS_Vertex Vtmp = V3;
        V3 = V2;
        V2 = Vtmp;
      } else {
      }

      // build wire
      BRepBuilderAPI_MakePolygon aMkPoly (V1, V2, V3, V4, Standard_True);
      if (!aMkPoly.IsDone()) {
        Standard_ConstructionError::Raise("Polygon construction failed");
      }

      // try to build face on the wire
      GEOMImpl_Block6Explorer::MakeFace(aMkPoly, Standard_False, aShape);
      if (aShape.IsNull()) {
        Standard_ConstructionError::Raise("Face construction failed");
      }

    } else if (aType == BLOCK_SIX_FACES || aType == BLOCK_TWO_FACES) {

      BRepTools_Quilt Glue;

      if (aType == BLOCK_SIX_FACES) {

        // Make block (hexahedral solid) from six faces
        for (Standard_Integer ind = 1; ind <= nbshapes; ind++) {
          if (anArgs(ind).ShapeType() != TopAbs_FACE) {
            Standard_TypeMismatch::Raise("Shape for block construction is not a face");
          }
          Glue.Add(anArgs(ind));
        }

      } else {

        // Make block (hexahedral solid) from two opposite faces
        if (anArgs(1).ShapeType() != TopAbs_FACE ||
            anArgs(2).ShapeType() != TopAbs_FACE) {
          Standard_TypeMismatch::Raise("Shape for block construction is not a face");
        }

        // Get wires of the given faces
        TopExp_Explorer wires1 (anArgs(1), TopAbs_WIRE);
        TopExp_Explorer wires2 (anArgs(2), TopAbs_WIRE);
        if (!wires1.More() || !wires2.More()) {
          Standard_ConstructionError::Raise("A face for the block has no wires");
        }
        TopoDS_Shape aWire1 = wires1.Current();
        TopoDS_Shape aWire2 = wires2.Current();
        wires1.Next();
        wires2.Next();
        if (wires1.More() || wires2.More()) {
          Standard_ConstructionError::Raise("A face for the block has more than one wire");
        }

        GEOMImpl_Block6Explorer aBlockTool;
        aBlockTool.InitByTwoFaces(anArgs(1), anArgs(2));

        // Construct the linking faces and add them in the gluing tool
        Glue.Add(anArgs(1));
        Glue.Add(aBlockTool.GetFace(3, Standard_True));
        Glue.Add(aBlockTool.GetFace(4, Standard_True));
        Glue.Add(aBlockTool.GetFace(5, Standard_True));
        Glue.Add(aBlockTool.GetFace(6, Standard_True));
        Glue.Add(anArgs(2));
      }

      TopExp_Explorer exp (Glue.Shells(), TopAbs_SHELL);
      Standard_Integer ish = 0;
      TopTools_MapOfShape mapShape;
      for (; exp.More(); exp.Next()) {
        if (mapShape.Add(exp.Current())) {
          aShape = exp.Current();
          ish++;
        }
      }

      if (ish > 1) {
        aShape = Glue.Shells();
        Standard_Real aTol = prec; // Precision::Confusion()
        TopExp_Explorer expF (aShape, TopAbs_FACE);
        TopTools_MapOfShape mapF;
        TopoDS_Shell Shell;
        B.MakeShell(Shell);
        for (; expF.More(); expF.Next()) {
          if (mapF.Add(expF.Current())) {
            B.Add(Shell, expF.Current());
            Standard_Real aToler = BRep_Tool::Tolerance(TopoDS::Face(expF.Current()));
            if (aToler > aTol)
              aTol = aToler;
          }
        }
        ShHealOper_Sewing aHealer (Shell, aTol);
        if (aHealer.Perform())
          aShape = aHealer.GetResultShape();
        else
          Standard_ConstructionError::Raise
            ("Impossible to build a connected shell on the given faces");
      }

      if (aType == BLOCK_SIX_FACES) {
        if (!aShape.Closed()) {
          Standard_ConstructionError::Raise
            ("Impossible to build a closed shell on the given faces");
        }
      }

      TopoDS_Solid Sol;
      B.MakeSolid(Sol);
      B.Add(Sol, aShape);
      BRepClass3d_SolidClassifier SC (Sol);
      SC.PerformInfinitePoint(prec);
      if (SC.State() == TopAbs_IN) {
        B.MakeSolid(Sol);
        B.Add(Sol, aShape.Reversed());
      }
      aShape = Sol;
      BRepLib::SameParameter(aShape, 1.E-5, Standard_True);

    } else if (aType == BLOCK_COMPOUND_GLUE) {

      // Make blocks compound from a compound
      if (anArgs(1).ShapeType() != TopAbs_COMPOUND &&
          anArgs(2).ShapeType() != TopAbs_COMPSOLID) {
        Standard_TypeMismatch::Raise("Not a compound given");
      }

      TopoDS_Shape aCompound = anArgs(1);

      // Glue coincident faces and edges (with Partition algorithm).
      //NMTAlgo_Splitter1 PS;
      //PS.AddShape(aCompound);
      //PS.Compute();
      //PS.SetRemoveWebs(Standard_False);
      //      PS.Build(aCompound.ShapeType());
      //PS.Build(TopAbs_SOLID);
      //aShape = PS.Shape();

      GEOMAlgo_Gluer aGluer;
      aGluer.SetShape(aCompound);
      aGluer.SetCheckGeometry(Standard_True);
      aGluer.Perform();
      aShape = aGluer.Result();


    } else {
    }

  } else { // Multi-transformations and compound improving

    if (aType == BLOCK_REMOVE_EXTRA ||
        aType == BLOCK_COMPOUND_IMPROVE) {

      GEOMImpl_IBlockTrsf aCI (aFunction);
      Handle(GEOM_Function) aRefShape = aCI.GetOriginal();
      TopoDS_Shape aBlockOrComp = aRefShape->GetValue();
      if (aBlockOrComp.IsNull()) {
        Standard_NullObject::Raise("Null Shape given");
      }

      // 1. Improve solids with seam and/or degenerated edges
      BlockFix_BlockFixAPI aTool;
      //aTool.Tolerance() = toler;
      aTool.OptimumNbFaces() = aCI.GetOptimumNbFaces();
      aTool.SetShape(aBlockOrComp);
      aTool.Perform();

      TopoDS_Shape aFixedExtra = aTool.Shape();

      // Repair result
      BRepCheck_Analyzer ana (aFixedExtra, false);
      if (!ana.IsValid()) {
        TopoDS_Shape aFixed;
        ShHealOper_ShapeProcess aHealer;
        aHealer.Perform(aFixedExtra, aFixed);
        if (aHealer.isDone())
          aFixedExtra = aFixed;
      }

      if (aType == BLOCK_REMOVE_EXTRA)
      {
        aShape = aFixedExtra;

        if (aShape == aBlockOrComp) {
          MESSAGE("No modifications have been done");
        }
      }
      else // aType == BLOCK_COMPOUND_IMPROVE
      {
        // 2. Separate non-blocks
        TopTools_ListOfShape BLO; // All blocks from the given compound
        TopTools_ListOfShape NOT; // Not blocks
        TopTools_ListOfShape EXT; // Hexahedral solids, having degenerated and/or seam edges
        GEOMImpl_IBlocksOperations::AddBlocksFrom(aFixedExtra, BLO, NOT, EXT);

        if (NOT.Extent() > 0) {
          MESSAGE("Some non-blocks have been removed");
        }

        // 3. Warn about staying extra-edges
        if (EXT.Extent() > 0) {
          MESSAGE("Warning: Not all seam or degenerated edges was removed");
        }

        // ??? Throw away standalone blocks ???

        // 4. Create compound of all blocks
        TopoDS_Compound aComp;
        BRep_Builder BB;
        BB.MakeCompound(aComp);
        TopTools_ListIteratorOfListOfShape BLOit (BLO);
        for (; BLOit.More(); BLOit.Next()) {
          BB.Add(aComp, BLOit.Value());
        }

        // 5. Glue Faces
        aShape = GEOMImpl_GlueDriver::GlueFaces(aComp, Precision::Confusion(), Standard_False);
      }

    } else if (aType == BLOCK_MULTI_TRANSFORM_1D ||
               aType == BLOCK_MULTI_TRANSFORM_2D) {

      TopoDS_Shape aMulti;
      GEOMImpl_IBlockTrsf aCI (aFunction);
      Handle(GEOM_Function) aRefShape = aCI.GetOriginal();
      TopoDS_Shape aBlockIni = aRefShape->GetValue();
      if (aBlockIni.IsNull()) {
        Standard_NullObject::Raise("Null Block");
      }

      // Copy block to avoid problems (PAL6706)
      TColStd_IndexedDataMapOfTransientTransient aMap;
      TopoDS_Shape aBlock;
      TNaming_CopyShape::CopyTool(aBlockIni, aMap, aBlock);

      // Block tolerance in vertices
      Standard_Real aTol = prec;
      TopExp_Explorer expV (aBlock, TopAbs_VERTEX);
      TopTools_MapOfShape mapShape;
      for (; expV.More(); expV.Next()) {
        if (mapShape.Add(expV.Current())) {
          TopoDS_Vertex aV = TopoDS::Vertex(expV.Current());
          aTol = Max(BRep_Tool::Tolerance(aV), aTol);
        }
      }

      if (aType == BLOCK_MULTI_TRANSFORM_1D) {
        // Retrieve a faces by Ids
        Standard_Integer aFace1Id = aCI.GetFace1U();
        Standard_Integer aFace2Id = aCI.GetFace2U();
        TopoDS_Shape aFace1, aFace2;
        if (!GEOMImpl_ILocalOperations::GetSubShape(aBlock, aFace1Id, aFace1)) {
          Standard_NullObject::Raise("Can not retrieve a sub-shape with given Id");
        }
        if (aFace1.ShapeType() != TopAbs_FACE) {
          Standard_TypeMismatch::Raise("Sub-shape with given Id is not a face");
        }

        if (aFace2Id > 0) {
          if (!GEOMImpl_ILocalOperations::GetSubShape(aBlock, aFace2Id, aFace2)) {
            Standard_NullObject::Raise("Can not retrieve a sub-shape with given Id");
          }
          if (aFace2.ShapeType() != TopAbs_FACE) {
            Standard_TypeMismatch::Raise("Sub-shape with given Id is not a face");
          }
        }

        Standard_Integer aNbIter = aCI.GetNbIterU();

        MultiTransformate1D(aBlock, aFace1, aFace2, aNbIter, aMulti);

      } else { // aType == BLOCK_MULTI_TRANSFORM_2D
        // Retrieve a faces by Ids
        Standard_Integer aFace1UId = aCI.GetFace1U();
        Standard_Integer aFace2UId = aCI.GetFace2U();
        Standard_Integer aFace1VId = aCI.GetFace1V();
        Standard_Integer aFace2VId = aCI.GetFace2V();

        TopoDS_Shape aFace1U, aFace2U, aFace1V, aFace2V;
        if (!GEOMImpl_ILocalOperations::GetSubShape(aBlock, aFace1UId, aFace1U) ||
            !GEOMImpl_ILocalOperations::GetSubShape(aBlock, aFace1VId, aFace1V)) {
          Standard_NullObject::Raise("Can not retrieve a sub-shape with given Id");
        }

        if (aFace1U.ShapeType() != TopAbs_FACE ||
            aFace1V.ShapeType() != TopAbs_FACE) {
          Standard_TypeMismatch::Raise("Sub-shape with given Id is not a face");
        }

        if (aFace2UId > 0) {
          if (!GEOMImpl_ILocalOperations::GetSubShape(aBlock, aFace2UId, aFace2U)) {
            Standard_NullObject::Raise("Can not retrieve a sub-shape with given Id");
          }

          if (aFace2U.ShapeType() != TopAbs_FACE) {
            Standard_TypeMismatch::Raise("Sub-shape with given Id is not a face");
          }
        }

        if (aFace2VId > 0) {
          if (!GEOMImpl_ILocalOperations::GetSubShape(aBlock, aFace2VId, aFace2V)) {
            Standard_NullObject::Raise("Can not retrieve a sub-shape with given Id");
          }

          if (aFace2V.ShapeType() != TopAbs_FACE) {
            Standard_TypeMismatch::Raise("Sub-shape with given Id is not a face");
          }
        }

        Standard_Integer aNbIterU = aCI.GetNbIterU();
        Standard_Integer aNbIterV = aCI.GetNbIterV();

        MultiTransformate2D(aBlock,
                            aFace1U, aFace2U, aNbIterU,
                            aFace1V, aFace2V, aNbIterV, aMulti);
      }

      if (aMulti.IsNull()) {
        StdFail_NotDone::Raise("Multi-transformation failed");
      }

      // Glue faces of the multi-block
      aShape = GEOMImpl_GlueDriver::GlueFaces(aMulti, aTol, Standard_False);

    } else { // unknown function type
      return 0;
    }
  }

  if (aShape.IsNull()) return 0;

  aFunction->SetValue(aShape);

  log.SetTouched(Label());

  return 1;
}

//=======================================================================
//function :  MultiTransformate1D
//purpose  :
//=======================================================================
void GEOMImpl_BlockDriver::MultiTransformate1D (const TopoDS_Shape&    theBlock,
                                                const TopoDS_Shape&    theFace1,
                                                const TopoDS_Shape&    theFace2,
                                                const Standard_Integer theNbIter,
                                                TopoDS_Shape&          theResult) const
{
  // Construct Tool, where <theFace1> will be the first face,
  // and a face, opposite to <theFace1>, will be the second face
  GEOMImpl_Block6Explorer aBlockTool;
  aBlockTool.InitByBlockAndFace(theBlock, theFace1);

  // Find IDs of the faces
  Standard_Integer dir_face1 = 1, dir_face2 = 2;
  if (!theFace2.IsNull()) {
    dir_face2 = aBlockTool.GetFaceID(theFace2);
  }

  // Find three pairs of points
  Standard_Integer v11_id = 0, v12_id = 0, v13_id = 0; // vertices of the first face
  Standard_Integer v21_id = 0, v22_id = 0, v23_id = 0; // vertices of the second face

  if (dir_face2 == 2) { // <theFace2> is opposite to <theFace1>

    // We will take vertices with equal local numbers on the faces,
    // as the Block6Explorer gives equal local numbers
    // to the linked vertices on the opposite faces,
    // i.e. v1* is linked with the v2* by an edge:

    //          _________
    //        /|v23     /|
    //       / |       / |    dir_face1 - bottom
    //      /  |      /  |
    //     /________ /   |    dir_face2 - top
    //    |v21 |    |v22 |
    //    |    |____|____|
    //    |   / v13 |   /
    //    |  /      |  /
    //    | /       | /
    //    |/________|/
    //     v11       v12

    v11_id = aBlockTool.GetVertexID(dir_face1, 1);
    v12_id = aBlockTool.GetVertexID(dir_face1, 2);
    v13_id = aBlockTool.GetVertexID(dir_face1, 4);

    v21_id = aBlockTool.GetVertexID(dir_face2, 1);
    v22_id = aBlockTool.GetVertexID(dir_face2, 2);
    v23_id = aBlockTool.GetVertexID(dir_face2, 4);

  } else {

    //          _________
    //        /|        /|
    //       / |       / |    dir_face1 - bottom
    //      /  |      /  |
    //     /________ /   |    dir_face2 - right (for example)
    //    |    |    |v23 |
    //    |    |____|____|
    //    |   /     |   /v12 = v22 (common_vertex2)
    //    |  /      |  /
    //    | /       | /
    //    |/________|/
    //     v13       v11 = v21 (common_vertex1)

    Standard_Integer common_edge_id = aBlockTool.FindCommonEdgeID(dir_face1, dir_face2);
    Standard_Integer common_vertex1 = aBlockTool.GetVertexOnEdgeID(common_edge_id, 1);
    Standard_Integer common_vertex2 = aBlockTool.GetVertexOnEdgeID(common_edge_id, 2);

    Standard_Integer not_common_v1 = 0;
    Standard_Integer vid = 1;
    Standard_Boolean isFound = Standard_False;
    while (!isFound && vid <= 4) {
      not_common_v1 = aBlockTool.GetVertexID(dir_face1, vid);
      isFound = (not_common_v1 != common_vertex2 &&
                 aBlockTool.FindEdgeID(not_common_v1, common_vertex1) != 0);
      vid++;
    }

    Standard_Integer not_common_v2 = 0;
    vid = 1;
    isFound = Standard_False;
    while (!isFound && vid <= 4) {
      not_common_v2 = aBlockTool.GetVertexID(dir_face2, vid);
      isFound = (not_common_v2 != common_vertex2 &&
                 aBlockTool.FindEdgeID(not_common_v2, common_vertex1) != 0);
      vid++;
    }

    v11_id = common_vertex1;
    v12_id = common_vertex2;
    v13_id = not_common_v1;

    v21_id = common_vertex1;
    v22_id = common_vertex2;
    v23_id = not_common_v2;
  }

  // Construct a transformation operator
  TopoDS_Vertex V11 = TopoDS::Vertex(aBlockTool.GetVertex(v11_id));
  TopoDS_Vertex V12 = TopoDS::Vertex(aBlockTool.GetVertex(v12_id));
  TopoDS_Vertex V13 = TopoDS::Vertex(aBlockTool.GetVertex(v13_id));

  TopoDS_Vertex V21 = TopoDS::Vertex(aBlockTool.GetVertex(v21_id));
  TopoDS_Vertex V22 = TopoDS::Vertex(aBlockTool.GetVertex(v22_id));
  TopoDS_Vertex V23 = TopoDS::Vertex(aBlockTool.GetVertex(v23_id));

  // Axes of the first direction face
  gp_Pnt P1 = BRep_Tool::Pnt(V11);
  gp_Vec VecN1 (P1, BRep_Tool::Pnt(V12));
  gp_Vec VecX1 (P1, BRep_Tool::Pnt(V13));
  gp_Ax3 Ax1 (P1, VecN1, VecX1);

  // Axes of the second direction face
  gp_Pnt P2 = BRep_Tool::Pnt(V21);
  gp_Vec VecN2 (P2, BRep_Tool::Pnt(V22));
  gp_Vec VecX2 (P2, BRep_Tool::Pnt(V23));
  gp_Ax3 Ax2 (P2, VecN2, VecX2);

  gp_Trsf aTrsf;
  aTrsf.SetDisplacement(Ax1, Ax2);

  // Check, that <theFace2> is similar to <theFace1>.
  // Actually, we need only to check right position of one
  // vertex, not involved into the transformation construction.
  if (!aBlockTool.IsSimilarFaces(dir_face1, dir_face2, aTrsf)) {
    Standard_ConstructionError::Raise("The direction faces are not similar");
  }

  // Perform multi-transformation
  TopoDS_Compound aCompound;
  BRep_Builder B;
  B.MakeCompound(aCompound);

  TopoDS_Shape aPrevShape = theBlock;
  for (Standard_Integer i = 0; i < theNbIter; i++) {
    B.Add(aCompound, aPrevShape);
    BRepBuilderAPI_Transform aTransformation (aPrevShape, aTrsf, Standard_False);
    aPrevShape = aTransformation.Shape();
  }
  theResult = aCompound;
}

//=======================================================================
//function :  MultiTransformate2D
//purpose  :
//=======================================================================
void GEOMImpl_BlockDriver::MultiTransformate2D (const TopoDS_Shape&    theBlock,
                                                const TopoDS_Shape&    theFace1U,
                                                const TopoDS_Shape&    theFace2U,
                                                const Standard_Integer theNbIterU,
                                                const TopoDS_Shape&    theFace1V,
                                                const TopoDS_Shape&    theFace2V,
                                                const Standard_Integer theNbIterV,
                                                TopoDS_Shape&          theResult) const
{
  // Construct Tool, where <theFace1U> will be the first face,
  // and a face, opposite to <theFace1U>, will be the second face
  GEOMImpl_Block6Explorer aBlockTool;
  aBlockTool.InitByBlockAndFace(theBlock, theFace1U);

  gp_Trsf aTrsfU, aTrsfV;
  gp_Ax3 Ax1V, Ax2V;
  for (Standard_Integer uv = 1; uv <= 2; uv++) {
    // U transformation
    TopoDS_Shape theFace1 = theFace1U;
    TopoDS_Shape theFace2 = theFace2U;
    if (uv == 2) {
      // V transformation
      theFace1 = theFace1V;
      theFace2 = theFace2V;
    }

    // Find IDs of the faces
    Standard_Integer dir_face1 = aBlockTool.GetFaceID(theFace1);
    Standard_Integer dir_face2 = 0;
    Standard_Integer opp_face1 = aBlockTool.GetOppositeFaceID(dir_face1);
    if (theFace2.IsNull()) {
      dir_face2 = opp_face1;
    } else {
      dir_face2 = aBlockTool.GetFaceID(theFace2);
    }

    // Find three pairs of points
    Standard_Integer v11_id = 0, v12_id = 0, v13_id = 0; // vertices of the first face
    Standard_Integer v21_id = 0, v22_id = 0, v23_id = 0; // vertices of the second face

    if (dir_face2 == opp_face1) { // <theFace2> is opposite to <theFace1>

      // We will take vertices with equal local numbers on the faces,
      // as the Block6Explorer gives equal local numbers
      // to the linked vertices on the opposite faces,
      // i.e. v1* is linked with the v2* by an edge:

      v11_id = aBlockTool.GetVertexID(dir_face1, 1);
      v12_id = aBlockTool.GetVertexID(dir_face1, 2);
      v13_id = aBlockTool.GetVertexID(dir_face1, 4);

      v21_id = aBlockTool.GetVertexID(dir_face2, 1);
      v22_id = aBlockTool.GetVertexID(dir_face2, 2);
      v23_id = aBlockTool.GetVertexID(dir_face2, 4);

    } else {

      Standard_Integer common_edge_id = aBlockTool.FindCommonEdgeID(dir_face1, dir_face2);
      Standard_Integer common_vertex1 = aBlockTool.GetVertexOnEdgeID(common_edge_id, 1);
      Standard_Integer common_vertex2 = aBlockTool.GetVertexOnEdgeID(common_edge_id, 2);

      Standard_Integer not_common_v1 = 0;
      Standard_Integer vid = 1;
      Standard_Boolean isFound = Standard_False;
      while (!isFound && vid <= 4) {
        not_common_v1 = aBlockTool.GetVertexID(dir_face1, vid);
        isFound = (not_common_v1 != common_vertex2 &&
                   aBlockTool.FindEdgeID(not_common_v1, common_vertex1) != 0);
        vid++;
      }

      Standard_Integer not_common_v2 = 0;
      vid = 1;
      isFound = Standard_False;
      while (!isFound && vid <= 4) {
        not_common_v2 = aBlockTool.GetVertexID(dir_face2, vid);
        isFound = (not_common_v2 != common_vertex2 &&
                   aBlockTool.FindEdgeID(not_common_v2, common_vertex1) != 0);
        vid++;
      }

      v11_id = common_vertex1;
      v12_id = common_vertex2;
      v13_id = not_common_v1;

      v21_id = common_vertex1;
      v22_id = common_vertex2;
      v23_id = not_common_v2;
    }

    // Construct a transformation operator
    TopoDS_Vertex V11 = TopoDS::Vertex(aBlockTool.GetVertex(v11_id));
    TopoDS_Vertex V12 = TopoDS::Vertex(aBlockTool.GetVertex(v12_id));
    TopoDS_Vertex V13 = TopoDS::Vertex(aBlockTool.GetVertex(v13_id));

    TopoDS_Vertex V21 = TopoDS::Vertex(aBlockTool.GetVertex(v21_id));
    TopoDS_Vertex V22 = TopoDS::Vertex(aBlockTool.GetVertex(v22_id));
    TopoDS_Vertex V23 = TopoDS::Vertex(aBlockTool.GetVertex(v23_id));

    // Axes of the first direction face
    gp_Pnt P1 = BRep_Tool::Pnt(V11);
    gp_Vec VecN1 (P1, BRep_Tool::Pnt(V12));
    gp_Vec VecX1 (P1, BRep_Tool::Pnt(V13));
    gp_Ax3 Ax1 (P1, VecN1, VecX1);

    // Axes of the second direction face
    gp_Pnt P2 = BRep_Tool::Pnt(V21);
    gp_Vec VecN2 (P2, BRep_Tool::Pnt(V22));
    gp_Vec VecX2 (P2, BRep_Tool::Pnt(V23));
    gp_Ax3 Ax2 (P2, VecN2, VecX2);

    gp_Trsf aTrsf;
    aTrsf.SetDisplacement(Ax1, Ax2);
    if (uv == 1) {
      aTrsfU = aTrsf;
    } else {
      aTrsfV = aTrsf;
      Ax1V = Ax1;
      Ax2V = Ax2;
    }

    // Check, that <theFace2> is similar to <theFace1>.
    // Actually, we need only to check right position of one
    // vertex, not involved into the transformation construction.
    if (!aBlockTool.IsSimilarFaces(dir_face1, dir_face2, aTrsf)) {
      Standard_ConstructionError::Raise("The direction faces are not similar");
    }
  }

  // Perform multi-transformation
  TopoDS_Compound aCompound;
  BRep_Builder B;
  B.MakeCompound(aCompound);

  TopoDS_Shape aPrevShapeU = theBlock;
  for (int i = 0; i < theNbIterU; i++) {
    TopoDS_Shape aPrevShapeV = aPrevShapeU;
    for (int j = 0; j < theNbIterV; j++) {
      B.Add(aCompound, aPrevShapeV);
      BRepBuilderAPI_Transform aTransformationV (aPrevShapeV, aTrsfV, Standard_False);
      aPrevShapeV = aTransformationV.Shape();
    }
    BRepBuilderAPI_Transform aTransformationU (aPrevShapeU, aTrsfU, Standard_False);
    aPrevShapeU = aTransformationU.Shape();
    // Correction of the second transformation according to the first transformation
    Ax1V.Transform(aTrsfU);
    Ax2V.Transform(aTrsfU);
    aTrsfV.SetDisplacement(Ax1V, Ax2V);
    // Correction done
  }
  theResult = aCompound;
}

//=======================================================================
//function :  GEOMImpl_BlockDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_BlockDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_BlockDriver",
                                                         sizeof(GEOMImpl_BlockDriver),
                                                         1,
                                                         (Standard_Address)_Ancestors,
                                                         (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_BlockDriver) Handle(GEOMImpl_BlockDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_BlockDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_BlockDriver))) {
       _anOtherObject = Handle(GEOMImpl_BlockDriver)((Handle(GEOMImpl_BlockDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
