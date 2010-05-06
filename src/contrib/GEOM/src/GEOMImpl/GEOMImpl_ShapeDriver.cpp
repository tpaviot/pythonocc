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

#include <GEOMImpl_ShapeDriver.hxx>

#include <GEOMImpl_IShapes.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOMImpl_Block6Explorer.hxx>

#include <GEOM_Function.hxx>
#include <GEOM_Object.hxx>

// OCCT Includes
#include <ShapeFix_Wire.hxx>
#include <ShapeFix_Edge.hxx>

#include <BRep_Tool.hxx>
#include <BRep_Builder.hxx>
#include <BRepAlgo_FaceRestrictor.hxx>
#include <BRepBuilderAPI_Sewing.hxx>
#include <BRepBuilderAPI_Copy.hxx>
#include <BRepCheck.hxx>
#include <BRepCheck_Analyzer.hxx>
#include <BRepCheck_Shell.hxx>
#include <BRepClass3d_SolidClassifier.hxx>
#include <BRepBuilderAPI_MakeWire.hxx>
#include <BRepBuilderAPI_Sewing.hxx>

#include <ShapeAnalysis_FreeBounds.hxx>

#include <TopAbs.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Shell.hxx>
#include <TopoDS_Solid.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopExp_Explorer.hxx>

#include <TopTools_MapOfShape.hxx>
#include <TopTools_HSequenceOfShape.hxx>

#include <TColStd_HSequenceOfTransient.hxx>

#include <Precision.hxx>
#include <Standard_NullObject.hxx>
#include <Standard_TypeMismatch.hxx>
#include <Standard_ConstructionError.hxx>

#include "utilities.h"

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_ShapeDriver::GetID()
{
  static Standard_GUID aShapeDriver("FF1BBB54-5D14-4df2-980B-3A668264EA16");
  return aShapeDriver;
}


//=======================================================================
//function : GEOMImpl_ShapeDriver
//purpose  :
//=======================================================================
GEOMImpl_ShapeDriver::GEOMImpl_ShapeDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_ShapeDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IShapes aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;
  BRep_Builder B;

  if (aType == WIRE_EDGES) {
    Handle(TColStd_HSequenceOfTransient) aShapes = aCI.GetShapes();
    unsigned int ind, nbshapes = aShapes->Length();

    TopoDS_Wire aWire;
    B.MakeWire(aWire);
    BRepBuilderAPI_MakeWire MW;
    bool isMWDone = true;

    // add edges
    for (ind = 1; ind <= nbshapes; ind++) {
      Handle(GEOM_Function) aRefShape = Handle(GEOM_Function)::DownCast(aShapes->Value(ind));
      TopoDS_Shape aShape_i = aRefShape->GetValue();
      if (aShape_i.IsNull()) {
        Standard_NullObject::Raise("Shape for wire construction is null");
      }
      if (aShape_i.ShapeType() == TopAbs_EDGE) {
        B.Add(aWire, TopoDS::Edge(aShape_i));
        MW.Add(TopoDS::Edge(aShape_i));
        if (!MW.IsDone()) {
          // check status after each edge/wire addition, because the final status
          // can be OK even in case, when some edges/wires was not accepted.
          isMWDone = false;
        }
      } else if (aShape_i.ShapeType() == TopAbs_WIRE) {
        TopExp_Explorer exp (aShape_i, TopAbs_EDGE);
        for (; exp.More(); exp.Next()) {
          B.Add(aWire, TopoDS::Edge(exp.Current()));
          MW.Add(TopoDS::Edge(exp.Current()));
          if (!MW.IsDone()) {
            // check status after each edge/wire addition, because the final status
            // can be OK even in case, when some edges/wires was not accepted.
            isMWDone = false;
          }
        }
      } else {
        Standard_TypeMismatch::Raise
          ("Shape for wire construction is neither an edge nor a wire");
      }
    }

    if (isMWDone) {
      aShape = MW;
    } else {
      // fix edges order
      Handle(ShapeFix_Wire) aFW = new ShapeFix_Wire;
      aFW->Load(aWire);
      aFW->FixReorder();

      if        (aFW->StatusReorder(ShapeExtend_FAIL1)) {
        Standard_ConstructionError::Raise("Wire construction failed: several loops detected");
      } else if (aFW->StatusReorder(ShapeExtend_FAIL)) {
        Standard_ConstructionError::Raise("Wire construction failed");
      //} else if (aFW->StatusReorder(ShapeExtend_DONE2)) {
      //  Standard_ConstructionError::Raise("Wire construction failed: some gaps detected");
      } else {
      }

      // IMP 0019766: Building a Wire from unconnected edges by introducing a tolerance
      Standard_Real aTolerance = aCI.GetTolerance();
      if (aTolerance < Precision::Confusion())
        aTolerance = Precision::Confusion();

      aFW->ClosedWireMode() = Standard_False;
      aFW->FixConnected(aTolerance);
      if (aFW->StatusConnected(ShapeExtend_FAIL)) {
        Standard_ConstructionError::Raise("Wire construction failed: cannot build connected wire");
      }
      // IMP 0019766
      if (aFW->StatusConnected(ShapeExtend_DONE3)) {
        // Confused with <prec> but not Analyzer.Precision(), set the same
        aFW->FixGapsByRangesMode() = Standard_True;
        if (aFW->FixGaps3d()) {
          Handle(ShapeExtend_WireData) sbwd = aFW->WireData();
          Handle(ShapeFix_Edge) aFe = new ShapeFix_Edge;
          for (Standard_Integer iedge = 1; iedge <= sbwd->NbEdges(); iedge++) {
            TopoDS_Edge aEdge = TopoDS::Edge(sbwd->Edge(iedge));
            aFe->FixVertexTolerance(aEdge);
            aFe->FixSameParameter(aEdge);
          }
        }
        else if (aFW->StatusGaps3d(ShapeExtend_FAIL)) {
          Standard_ConstructionError::Raise("Wire construction failed: cannot fix 3d gaps");
        }
      }

      aShape = aFW->WireAPIMake();
    }
  }
  else if (aType == FACE_WIRE) {
    Handle(GEOM_Function) aRefBase = aCI.GetBase();
    TopoDS_Shape aShapeBase = aRefBase->GetValue();
    if (aShapeBase.IsNull()) Standard_NullObject::Raise("Argument Shape is null");
    TopoDS_Wire W;
    if (aShapeBase.ShapeType() == TopAbs_WIRE) {
      W = TopoDS::Wire(aShapeBase);
    }
    else if (aShapeBase.ShapeType() == TopAbs_EDGE && aShapeBase.Closed()) {
      BRepBuilderAPI_MakeWire MW;
      MW.Add(TopoDS::Edge(aShapeBase));
      if (!MW.IsDone()) {
        Standard_ConstructionError::Raise("Wire construction failed");
      }
          W = MW;
    }
    else {
      Standard_NullObject::Raise
        ("Shape for face construction is neither a wire nor a closed edge");
    }
    GEOMImpl_Block6Explorer::MakeFace(W, aCI.GetIsPlanar(), aShape);
    if (aShape.IsNull()) {
      Standard_ConstructionError::Raise("Face construction failed");
    }
  }
  else if (aType == FACE_WIRES) {
    // Try to build a face from a set of wires and edges
    int ind;

    Handle(TColStd_HSequenceOfTransient) aShapes = aCI.GetShapes();
    int nbshapes = aShapes->Length();
    if (nbshapes < 1) {
      Standard_ConstructionError::Raise("No wires or edges given");
    }

    // 1. Extract all edges from the given arguments
    TopTools_MapOfShape aMapEdges;
    Handle(TopTools_HSequenceOfShape) aSeqEdgesIn = new TopTools_HSequenceOfShape;

    BRep_Builder B;
    for (ind = 1; ind <= nbshapes; ind++) {
      Handle(GEOM_Function) aRefSh_i = Handle(GEOM_Function)::DownCast(aShapes->Value(ind));
      TopoDS_Shape aSh_i = aRefSh_i->GetValue();

      TopExp_Explorer anExpE_i (aSh_i, TopAbs_EDGE);
      for (; anExpE_i.More(); anExpE_i.Next()) {
        if (aMapEdges.Add(anExpE_i.Current())) {
          aSeqEdgesIn->Append(anExpE_i.Current());
        }
      }
    }

    // 2. Connect edges to wires of maximum length
    Handle(TopTools_HSequenceOfShape) aSeqWiresOut;
    ShapeAnalysis_FreeBounds::ConnectEdgesToWires(aSeqEdgesIn, Precision::Confusion(),
                                                  /*shared*/Standard_False, aSeqWiresOut);

    // 3. Separate closed wires
    Handle(TopTools_HSequenceOfShape) aSeqClosedWires = new TopTools_HSequenceOfShape;
    Handle(TopTools_HSequenceOfShape) aSeqOpenWires = new TopTools_HSequenceOfShape;
    for (ind = 1; ind <= aSeqWiresOut->Length(); ind++) {
      if (aSeqWiresOut->Value(ind).Closed())
        aSeqClosedWires->Append(aSeqWiresOut->Value(ind));
      else
        aSeqOpenWires->Append(aSeqWiresOut->Value(ind));
    }

    if (aSeqClosedWires->Length() < 1) {
      Standard_ConstructionError::Raise
        ("There is no closed contour can be built from the given arguments");
    }

    // 4. Build a face / list of faces from all the obtained closed wires

    // 4.a. Basic face
    TopoDS_Shape aFFace;
    TopoDS_Wire aW1 = TopoDS::Wire(aSeqClosedWires->Value(1));
    GEOMImpl_Block6Explorer::MakeFace(aW1, aCI.GetIsPlanar(), aFFace);
    if (aFFace.IsNull()) {
      Standard_ConstructionError::Raise("Face construction failed");
    }

    // 4.b. Add other wires
    if (aSeqClosedWires->Length() == 1) {
      aShape = aFFace;
    }
    else {
      TopoDS_Compound C;
      BRep_Builder aBuilder;
      aBuilder.MakeCompound(C);
      BRepAlgo_FaceRestrictor FR;

      TopAbs_Orientation OriF = aFFace.Orientation();
      TopoDS_Shape aLocalS = aFFace.Oriented(TopAbs_FORWARD);
      FR.Init(TopoDS::Face(aLocalS), Standard_False, Standard_True);

      for (ind = 1; ind <= aSeqClosedWires->Length(); ind++) {
        TopoDS_Wire aW = TopoDS::Wire(aSeqClosedWires->Value(ind));
        FR.Add(aW);
      }

      FR.Perform();

      if (FR.IsDone()) {
        int k = 0;
        TopoDS_Shape aFace;
        for (; FR.More(); FR.Next()) {
          aFace = FR.Current().Oriented(OriF);
          aBuilder.Add(C, aFace);
          k++;
        }
        if (k == 1) {
          aShape = aFace;
        } else {
          aShape = C;
        }
      }
    }

    // 5. Add all open wires to the result
    if (aSeqOpenWires->Length() > 0) {
      //Standard_ConstructionError::Raise("There are some open wires");
      TopoDS_Compound C;
      BRep_Builder aBuilder;
      if (aSeqClosedWires->Length() == 1) {
        aBuilder.MakeCompound(C);
        aBuilder.Add(C, aShape);
      }
      else {
        C = TopoDS::Compound(aShape);
      }

      for (ind = 1; ind <= aSeqOpenWires->Length(); ind++) {
        aBuilder.Add(C, aSeqOpenWires->Value(ind));
      }

      aShape = C;
    }
  }
  else if (aType == SHELL_FACES) {
    Handle(TColStd_HSequenceOfTransient) aShapes = aCI.GetShapes();
    unsigned int ind, nbshapes = aShapes->Length();

    // add faces
    BRepBuilderAPI_Sewing aSewing(Precision::Confusion()*10.0);
    for (ind = 1; ind <= nbshapes; ind++) {
      Handle(GEOM_Function) aRefShape = Handle(GEOM_Function)::DownCast(aShapes->Value(ind));
      TopoDS_Shape aShape_i = aRefShape->GetValue();
      if (aShape_i.IsNull()) {
        Standard_NullObject::Raise("Face for shell construction is null");
      }
      aSewing.Add(aShape_i);
    }

    aSewing.Perform();

    TopoDS_Shape sh = aSewing.SewedShape();
    if( sh.ShapeType()==TopAbs_FACE && nbshapes==1 ) {
      // case for creation of shell from one face - PAL12722 (skl 26.06.2006)
      TopoDS_Shell ss;
      B.MakeShell(ss);
      B.Add(ss,sh);
      aShape = ss;
    }
    else {
      //TopExp_Explorer exp (aSewing.SewedShape(), TopAbs_SHELL);
      TopExp_Explorer exp (sh, TopAbs_SHELL);
      Standard_Integer ish = 0;
      for (; exp.More(); exp.Next()) {
        aShape = exp.Current();
        ish++;
      }

      if (ish != 1)
        aShape = aSewing.SewedShape();
    }

  }
  else if (aType == SOLID_SHELL) {
    Handle(GEOM_Function) aRefShell = aCI.GetBase();
    TopoDS_Shape aShapeShell = aRefShell->GetValue();
    if (aShapeShell.IsNull() || aShapeShell.ShapeType() != TopAbs_SHELL) {
      Standard_NullObject::Raise("Shape for solid construction is null or not a shell");
    }

    BRepCheck_Shell chkShell(TopoDS::Shell(aShapeShell));
    if(chkShell.Closed() == BRepCheck_NotClosed) return 0;

    TopoDS_Solid Sol;
    B.MakeSolid(Sol);
    B.Add(Sol, aShapeShell);
    BRepClass3d_SolidClassifier SC (Sol);
    SC.PerformInfinitePoint(Precision::Confusion());
    if (SC.State() == TopAbs_IN) {
      B.MakeSolid(Sol);
      B.Add(Sol, aShapeShell.Reversed());
    }

    aShape = Sol;

  }
  else if (aType == SOLID_SHELLS) {
    Handle(TColStd_HSequenceOfTransient) aShapes = aCI.GetShapes();
    unsigned int ind, nbshapes = aShapes->Length();
    Standard_Integer ish = 0;
    TopoDS_Solid Sol;
    B.MakeSolid(Sol);

    // add shapes
    for (ind = 1; ind <= nbshapes; ind++) {
      Handle(GEOM_Function) aRefShape = Handle(GEOM_Function)::DownCast(aShapes->Value(ind));
      TopoDS_Shape aShapeShell = aRefShape->GetValue();
      if (aShapeShell.IsNull()) {
        Standard_NullObject::Raise("Shell for solid construction is null");
      }
      if (aShapeShell.ShapeType() == TopAbs_SHELL) {
        B.Add(Sol, aShapeShell);
        ish++;
      }
    }
    if ( ish == 0 ) return 0;
    BRepClass3d_SolidClassifier SC (Sol);
    SC.PerformInfinitePoint(Precision::Confusion());
    if (SC.State() == TopAbs_IN)
      aShape = Sol.Reversed();
    else
      aShape = Sol;
  }
  else if (aType == COMPOUND_SHAPES) {
    Handle(TColStd_HSequenceOfTransient) aShapes = aCI.GetShapes();
    unsigned int ind, nbshapes = aShapes->Length();

    // add shapes
    TopoDS_Compound C;
    B.MakeCompound(C);
    for (ind = 1; ind <= nbshapes; ind++) {
      Handle(GEOM_Function) aRefShape = Handle(GEOM_Function)::DownCast(aShapes->Value(ind));
      TopoDS_Shape aShape_i = aRefShape->GetValue();
      if (aShape_i.IsNull()) {
        Standard_NullObject::Raise("Shape for compound construction is null");
      }
      B.Add(C, aShape_i);
    }

    aShape = C;

  }
  else if (aType == REVERSE_ORIENTATION) {
    Handle(GEOM_Function) aRefShape = aCI.GetBase();
    TopoDS_Shape aShape_i = aRefShape->GetValue();
    if (aShape_i.IsNull()) {
       Standard_NullObject::Raise("Shape for reverse is null");
    }

    BRepBuilderAPI_Copy Copy(aShape_i);
    if( Copy.IsDone() ) {
      TopoDS_Shape tds = Copy.Shape();
      if( tds.IsNull() ) {
        Standard_ConstructionError::Raise("Orientation aborted : Can not reverse the shape");
      }

      if( tds.Orientation() == TopAbs_FORWARD)
        tds.Orientation(TopAbs_REVERSED);
      else
        tds.Orientation(TopAbs_FORWARD);

      aShape = tds;
    }
  }

  if (aShape.IsNull()) return 0;

  // Check shape validity
  BRepCheck_Analyzer ana (aShape, false);
  if (!ana.IsValid()) {
    Standard_CString anErrStr("Algorithm has produced an invalid shape result");
	#ifdef THROW_ON_INVALID_SH
	  Standard_ConstructionError::Raise(anErrStr);
	#else
	  MESSAGE(anErrStr);
	  //further processing can be performed here
	  //...
	  //in case of failure of automatic treatment
	  //mark the corresponding GEOM_Object as problematic
	  TDF_Label aLabel = aFunction->GetOwnerEntry();
	  if (!aLabel.IsRoot()) {
		Handle(GEOM_Object) aMainObj = GEOM_Object::GetObject(aLabel);
		if (!aMainObj.IsNull())
		  aMainObj->SetDirty(Standard_True);
	  }
	#endif
  }

  aFunction->SetValue(aShape);

  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_ShapeDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_ShapeDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_ShapeDriver",
			                                 sizeof(GEOMImpl_ShapeDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_ShapeDriver) Handle(GEOMImpl_ShapeDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_ShapeDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_ShapeDriver))) {
       _anOtherObject = Handle(GEOMImpl_ShapeDriver)((Handle(GEOMImpl_ShapeDriver)&)AnObject);
     }
  }

  return _anOtherObject;
}
