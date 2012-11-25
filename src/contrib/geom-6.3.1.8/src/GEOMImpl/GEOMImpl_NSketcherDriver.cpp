//------------------------------------------------------------------------------
#include <GEOMImpl_NSketcherDriver.hxx>
//------------------------------------------------------------------------------
#include <GEOMImpl_INSketcher.hxx>
#include <GEOMImpl_Types.hxx>
#include <Sketcher_Object.hxx>
//------------------------------------------------------------------------------
#include <GEOMImpl_Block6Explorer.hxx>
#include <Geom_Surface.hxx>
#include <Geom_Plane.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Face.hxx>
#include <BRep_Tool.hxx>
#include <BRep_Builder.hxx>
#include <BRepAlgo_FaceRestrictor.hxx>
#include <ShapeAnalysis_FreeBounds.hxx>
#include <ShapeFix_Wire.hxx>
#include <ShapeFix_Edge.hxx>
#include <TopTools_HSequenceOfShape.hxx>
#include <TDF_ChildIterator.hxx>
#include <StdFail_NotDone.hxx>
//------------------------------------------------------------------------------
const Standard_GUID& GEOMImpl_NSketcherDriver::GetID()
{
  static Standard_GUID aBoxDriver("FF1BBB99-5D14-4df2-980B-3A668264EA16");
  return aBoxDriver;
}
//------------------------------------------------------------------------------
GEOMImpl_NSketcherDriver::GEOMImpl_NSketcherDriver()
{
}
//------------------------------------------------------------------------------
const TopoDS_Wire FixWire(const TopoDS_Wire& aWire, const TopoDS_Face& aFace, Standard_Boolean aClosedFlag)
{
  TopoDS_Wire result;
  Handle(ShapeFix_Wire) aFW = new ShapeFix_Wire;
  aFW->Load(aWire);
  aFW->SetFace(aFace);

  aFW->FixReorder();
  if (aFW->StatusReorder(ShapeExtend_FAIL1)) {
    std::cout << "Wire construction failed: several loops detected" << std::endl;
    return result;
  }
  else if (aFW->StatusReorder(ShapeExtend_FAIL)) {
    std::cout << "Wire construction failed" << std::endl;
    return result;
  }

  Standard_Real aTolerance = Precision::Confusion();
  aFW->ClosedWireMode() = aClosedFlag;
  aFW->FixConnected(aTolerance);
  if (aFW->StatusConnected(ShapeExtend_FAIL)) {
    std::cout << "Wire construction failed: cannot build connected wire" << std::endl;
    return result;
  }
  if (aFW->StatusConnected(ShapeExtend_DONE3)) {
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
      std::cout << "Wire construction failed: cannot fix 3d gaps" << std::endl;
      return result;
    }
  }

  aFW->FixEdgeCurves();

  result = aFW->WireAPIMake();
  return result;
}
//------------------------------------------------------------------------------
Standard_Integer GEOMImpl_NSketcherDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_INSketcher aSI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  if (aType == SIMPLE_NSKETCH) {
    //get coord system from plane
    Handle(GEOM_Function) aRefPlane = aSI.GetPlane();
    TopoDS_Shape aShapePlane = aRefPlane->GetValue();

    TopoDS_Face aFace = TopoDS::Face(aShapePlane);
    Handle(Geom_Surface) surf = BRep_Tool::Surface(aFace);
    Handle(Geom_Plane) myPlane = Handle(Geom_Plane)::DownCast(surf);
    const gp_Ax3 pos = myPlane->Position();

    //prepare transformation
    gp_Trsf aTrs;
    aTrs.SetDisplacement(gp::XOY(), pos);
    TopLoc_Location aLoc(aTrs);

    //get shapes label
    TDF_Label objLab = aSI.GetShapes();
    if (objLab.IsNull())
      StdFail_NotDone::Raise("NULL argument shapes position");

    //get geometry level
    int aLevel = aSI.GetLevel();

    //get edges
    Handle(TopTools_HSequenceOfShape) aSeqEdges = new TopTools_HSequenceOfShape;
    for (TDF_ChildIterator it(objLab); it.More(); it.Next()) {
      TDF_Label currLab = it.Value();
      if (currLab.IsAttribute(Sketcher_Object::GetObjectID())) {
        Handle(Sketcher_Object) anObject = Sketcher_Object::GetObject(currLab);
        if (anObject->GetType() == MainSketcherType) {
          if (!anObject.IsNull()) {
            TopoDS_Shape anObjectShape = anObject->GetShape();
            if (!anObjectShape.IsNull()) {
              if (anObjectShape.ShapeType() == TopAbs_EDGE) {
                anObjectShape.Location(aLoc);
                aSeqEdges->Append(anObjectShape);
              }
            }
          }
        }
      }
    }
    if (aLevel == 0) {
      //make compound of edges
      TopoDS_Compound C;
      BRep_Builder aBuilder;
      aBuilder.MakeCompound(C);
      for (int ind = 1; ind <= aSeqEdges->Length(); ind++) {
        aBuilder.Add(C, aSeqEdges->Value(ind));
      }
      aShape = C;
    }
    else {
      //connect edges
      Standard_Real aToler = 0.1;
      Handle(TopTools_HSequenceOfShape) aSeqWires;
      ShapeAnalysis_FreeBounds::ConnectEdgesToWires(aSeqEdges, aToler, Standard_False, aSeqWires);

      //fix non corrected wires
      Handle(TopTools_HSequenceOfShape) aSeqFixedWires= new TopTools_HSequenceOfShape;
      for (int ind = 1; ind <= aSeqWires->Length(); ind++) {
        TopoDS_Shape aShp = aSeqWires->Value(ind);
        TopoDS_Wire aFixedWire = FixWire(TopoDS::Wire(aShp), aFace, Standard_False);
        if (aFixedWire.IsNull())
          aSeqFixedWires->Append(aShp);
        else
          aSeqFixedWires->Append(aFixedWire);
      }

      //connect fixed wires
      Handle(TopTools_HSequenceOfShape) aSeqConnectedWires;
      ShapeAnalysis_FreeBounds::ConnectWiresToWires(aSeqFixedWires, aToler, Standard_False, aSeqConnectedWires);

      //fix connected wires
      Handle(TopTools_HSequenceOfShape) aSeqFixedConnectedWires = new TopTools_HSequenceOfShape;
      for (int ind = 1; ind <= aSeqConnectedWires->Length(); ind++) {
        TopoDS_Shape aShp = aSeqConnectedWires->Value(ind);
        TopoDS_Wire aFixedWire = FixWire(TopoDS::Wire(aShp), aFace, Standard_False);
        if (aFixedWire.IsNull())
          aSeqFixedConnectedWires->Append(aShp);
        else
          aSeqFixedConnectedWires->Append(aFixedWire);
      }

      //get closed and open wires
      Handle(TopTools_HSequenceOfShape) aSeqNFClosedWires;
      Handle(TopTools_HSequenceOfShape) aSeqNFOpenWires;
      ShapeAnalysis_FreeBounds::SplitWires(aSeqFixedConnectedWires, aToler, Standard_False, aSeqNFClosedWires, aSeqNFOpenWires);

      //fix closed and open wires
      Handle(TopTools_HSequenceOfShape) aSeqClosedWires = new TopTools_HSequenceOfShape;
      for (int ind = 1; ind <= aSeqNFClosedWires->Length(); ind++) {
        TopoDS_Shape aShp = aSeqNFClosedWires->Value(ind);
        TopoDS_Wire aFixedWire = FixWire(TopoDS::Wire(aShp), aFace, Standard_False);
        if (aFixedWire.IsNull())
          aSeqClosedWires->Append(aShp);
        else
          aSeqClosedWires->Append(aFixedWire);
      }
      Handle(TopTools_HSequenceOfShape) aSeqOpenWires = new TopTools_HSequenceOfShape;
      for (int ind = 1; ind <= aSeqNFOpenWires->Length(); ind++) {
        TopoDS_Shape aShp = aSeqNFOpenWires->Value(ind);
        TopoDS_Wire aFixedWire = FixWire(TopoDS::Wire(aShp), aFace, Standard_False);
        if (aFixedWire.IsNull())
          aSeqOpenWires->Append(aShp);
        else
          aSeqOpenWires->Append(aFixedWire);
      }

      if (aLevel == 1) {
        //make compound of wires
        TopoDS_Compound C;
        BRep_Builder aBuilder;
        aBuilder.MakeCompound(C);
        for (int ind = 1; ind <= aSeqClosedWires->Length(); ind++)
          aBuilder.Add(C, aSeqClosedWires->Value(ind));
        for (int ind = 1; ind <= aSeqOpenWires->Length(); ind++)
          aBuilder.Add(C, aSeqOpenWires->Value(ind));
        aShape = C;
      }
      else {
        //build a face / list of faces from all the obtained closed wires
        if (aSeqClosedWires->Length() >= 1) {
          //basic face
          TopoDS_Shape aFFace;
          TopoDS_Wire aW1 = TopoDS::Wire(aSeqClosedWires->Value(1));
          GEOMImpl_Block6Explorer::MakeFace(aW1, Standard_True, aFFace);
          if (!aFFace.IsNull()) {
            //add other wires
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

              for (int ind = 1; ind <= aSeqClosedWires->Length(); ind++) {
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
          }
        }

        //add all open wires to the result
        if (aSeqOpenWires->Length() > 0) {
          TopoDS_Compound C;
          BRep_Builder aBuilder;
          aBuilder.MakeCompound(C);
          if (!aShape.IsNull()) {
            aBuilder.Add(C, aShape);
          }
          for (int ind = 1; ind <= aSeqOpenWires->Length(); ind++) {
            aBuilder.Add(C, aSeqOpenWires->Value(ind));
          }
          aShape = C;
        }
      }  //else from level 1
    } //else from level 0
  }
  else {
  }



  if (aShape.IsNull()) return 0;
  aFunction->SetValue(aShape);
  log.SetTouched(Label());
  return 1;
}
//------------------------------------------------------------------------------
Standard_EXPORT Handle_Standard_Type& GEOMImpl_NSketcherDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_NSketcherDriver",
                                                         sizeof(GEOMImpl_NSketcherDriver),
                                                         1,
                                                         (Standard_Address)_Ancestors,
                                                         (Standard_Address)NULL);
  return _aType;
}
//------------------------------------------------------------------------------
const Handle(GEOMImpl_NSketcherDriver) Handle(GEOMImpl_NSketcherDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_NSketcherDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_NSketcherDriver))) {
       _anOtherObject = Handle(GEOMImpl_NSketcherDriver)((Handle(GEOMImpl_NSketcherDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
//------------------------------------------------------------------------------
